package com.cxy.apptools.web.storemanager.service.imp.security;

import com.cxy.apptools.web.storemanager.beans.CxyUser;
import com.cxy.apptools.web.storemanager.service.CxyUserService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContextException;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserCache;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.cache.NullUserCache;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;
import org.springframework.security.provisioning.GroupManager;
import org.springframework.util.Assert;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

/**
 * 自定义用户
 * Created by Administrator on 2015/12/27.
 */

public class CxyUserServiceImpl extends JdbcDaoImpl implements CxyUserService,GroupManager {

    // UserDetailsManager SQL
    public static final String DEF_CREATE_USER_SQL =
            "insert into users (username, password, enabled,email,salt) values (?,?,?,?,?)";
    public static final String DEF_DELETE_USER_SQL =
            "delete from users where username = ?";
    public static final String DEF_UPDATE_USER_SQL =
            "update users set password = ?, enabled = ?,email=?,salt=? where username = ?";
    public static final String DEF_INSERT_AUTHORITY_SQL =
            "insert into authorities (username, authority) values (?,?)";
    public static final String DEF_DELETE_USER_AUTHORITIES_SQL =
            "delete from authorities where username = ?";
    public static final String DEF_USER_EXISTS_SQL =
            "select username from users where username = ?";
    public static final String DEF_CHANGE_PASSWORD_SQL =
            "update users set password = ? where username = ?";


    // GroupManager SQL
    public static final String DEF_FIND_GROUPS_SQL =
            "select group_name from groups";
    public static final String DEF_FIND_USERS_IN_GROUP_SQL =
            "select username from group_members gm, groups g " +
                    "where gm.group_id = g.id" +
                    " and g.group_name = ?";
    public static final String DEF_INSERT_GROUP_SQL =
            "insert into groups (group_name) values (?)";
    public static final String DEF_FIND_GROUP_ID_SQL =
            "select id from groups where group_name = ?";
    public static final String DEF_INSERT_GROUP_AUTHORITY_SQL =
            "insert into group_authorities (group_id, authority) values (?,?)";
    public static final String DEF_DELETE_GROUP_SQL =
            "delete from groups where id = ?";
    public static final String DEF_DELETE_GROUP_AUTHORITIES_SQL =
            "delete from group_authorities where group_id = ?";
    public static final String DEF_DELETE_GROUP_MEMBERS_SQL =
            "delete from group_members where group_id = ?";
    public static final String DEF_RENAME_GROUP_SQL =
            "update groups set group_name = ? where group_name = ?";
    public static final String DEF_INSERT_GROUP_MEMBER_SQL =
            "insert into group_members (group_id, username) values (?,?)";
    public static final String DEF_DELETE_GROUP_MEMBER_SQL =
            "delete from group_members where group_id = ? and username = ?";
    public static final String DEF_GROUP_AUTHORITIES_QUERY_SQL =
            "select g.id, g.group_name, ga.authority " +
                    "from groups g, group_authorities ga " +
                    "where g.group_name = ? " +
                    "and g.id = ga.group_id ";
    public static final String DEF_DELETE_GROUP_AUTHORITY_SQL =
            "delete from group_authorities where group_id = ? and authority = ?";

    //~ Instance fields ================================================================================================

    protected final Log logger = LogFactory.getLog(getClass());

    private String createUserSql = DEF_CREATE_USER_SQL;
    private String deleteUserSql = DEF_DELETE_USER_SQL;
    private String updateUserSql = DEF_UPDATE_USER_SQL;
    private String createAuthoritySql = DEF_INSERT_AUTHORITY_SQL;
    private String deleteUserAuthoritiesSql = DEF_DELETE_USER_AUTHORITIES_SQL;
    private String userExistsSql = DEF_USER_EXISTS_SQL;
    private String changePasswordSql = DEF_CHANGE_PASSWORD_SQL;

    private String findAllGroupsSql = DEF_FIND_GROUPS_SQL;
    private String findUsersInGroupSql = DEF_FIND_USERS_IN_GROUP_SQL;
    private String insertGroupSql = DEF_INSERT_GROUP_SQL;
    private String findGroupIdSql = DEF_FIND_GROUP_ID_SQL;
    private String insertGroupAuthoritySql = DEF_INSERT_GROUP_AUTHORITY_SQL;
    private String deleteGroupSql = DEF_DELETE_GROUP_SQL;
    private String deleteGroupAuthoritiesSql = DEF_DELETE_GROUP_AUTHORITIES_SQL;
    private String deleteGroupMembersSql = DEF_DELETE_GROUP_MEMBERS_SQL;
    private String renameGroupSql = DEF_RENAME_GROUP_SQL;
    private String insertGroupMemberSql = DEF_INSERT_GROUP_MEMBER_SQL;
    private String deleteGroupMemberSql = DEF_DELETE_GROUP_MEMBER_SQL;
    private String groupAuthoritiesSql = DEF_GROUP_AUTHORITIES_QUERY_SQL;
    private String deleteGroupAuthoritySql = DEF_DELETE_GROUP_AUTHORITY_SQL;

    private AuthenticationManager authenticationManager;

    private UserCache userCache = new NullUserCache();

    @Override
    protected void initDao() throws ApplicationContextException {
        if (authenticationManager == null) {
            logger.info("No authentication manager set. Reauthentication of users when changing passwords will " +
                    "not be performed.");
        }

        super.initDao();
    }

    @Override
    protected UserDetails createUserDetails(String username, UserDetails userFromUserQuery, List<GrantedAuthority> combinedAuthorities) {
        CxyUser cxyUser = ((CxyUser)userFromUserQuery);

        String returnUsername = cxyUser.getUsername();
        String returnPassword = cxyUser.getPassword();
        String returnEmail =cxyUser.getEmail();
        String returnSalt = cxyUser.getSalt();

        if (!isUsernameBasedPrimaryKey()) {
            returnUsername = username;
        }

        return new CxyUser(returnUsername, returnPassword, userFromUserQuery.isEnabled(),
                true, true, true, combinedAuthorities,returnEmail,returnSalt);
    }

    @Override
    protected List<UserDetails> loadUsersByUsername(String username) {
        return getJdbcTemplate().query(
                "select username,password,enabled,email,salt " +
                "from users " +
                "where username = ?",
                new String[]{username}, new RowMapper<UserDetails>() {
            public UserDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
                String username = rs.getString(1);
                String password = rs.getString(2);
                boolean enabled = rs.getBoolean(3);
                String email = rs.getString(4);
                String salt = rs.getString(5);
                return new CxyUser(username, password, enabled, true, true, true, AuthorityUtils.NO_AUTHORITIES,email,salt);
            }

        });
    }


    private void validateUserDetails(UserDetails user) {
        CxyUser cxyUser = (CxyUser)user;
        Assert.hasText(user.getUsername(), "Username may not be empty or null");
        validateAuthorities(user.getAuthorities());
        validateEmail(cxyUser.getEmail());
        validateSalt(cxyUser.getSalt());
    }

    private void validateEmail(String email) {
        Assert.hasText(email, "Email may not be empty or null");
    }

    private void validateSalt(String salt) {
        Assert.hasText(salt, "Salt may not be empty or null");
    }

    private void validateAuthorities(Collection<? extends GrantedAuthority> authorities) {
        Assert.notNull(authorities, "Authorities list must not be null");

        for (GrantedAuthority authority : authorities) {
            Assert.notNull(authority, "Authorities list contains a null entry");
            Assert.hasText(authority.getAuthority(), "getAuthority() method must return a non-empty string");
        }
    }

    private void insertUserAuthorities(UserDetails user) {
        for (GrantedAuthority auth : user.getAuthorities()) {
            getJdbcTemplate().update(createAuthoritySql, user.getUsername(), auth.getAuthority());
        }
    }

    private void deleteUserAuthorities(String username) {
        getJdbcTemplate().update(deleteUserAuthoritiesSql, username);
    }
    /*
     * 用户相关操作
     */
    public void createUser(UserDetails user) {
        final CxyUser cxyUser = (CxyUser)user;
        validateUserDetails(user);
        getJdbcTemplate().update(createUserSql, new PreparedStatementSetter() {
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setString(1, cxyUser.getUsername());
                ps.setString(2, cxyUser.getPassword());
                ps.setBoolean(3, cxyUser.isEnabled());
                ps.setString(4, cxyUser.getEmail());
                ps.setString(5, cxyUser.getSalt());
            }

        });

        if (getEnableAuthorities()) {
            insertUserAuthorities(user);
        }
    }

    public void updateUser(UserDetails user) {
        final CxyUser cxyUser = (CxyUser)user;
        validateUserDetails(user);
        getJdbcTemplate().update(updateUserSql, new PreparedStatementSetter() {
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setString(1, cxyUser.getPassword());
                ps.setBoolean(2, cxyUser.isEnabled());
                ps.setString(3, cxyUser.getEmail());
                ps.setString(4, cxyUser.getSalt());
                ps.setString(5, cxyUser.getUsername());
            }
        });

        if (getEnableAuthorities()) {
            deleteUserAuthorities(user.getUsername());
            insertUserAuthorities(user);
        }

        userCache.removeUserFromCache(user.getUsername());
    }

    public void deleteUser(String username) {
        if (getEnableAuthorities()) {
            deleteUserAuthorities(username);
        }
        getJdbcTemplate().update(deleteUserSql, username);
        userCache.removeUserFromCache(username);
    }

    public void changePassword(String oldPassword, String newPassword) {
        Authentication currentUser = SecurityContextHolder.getContext().getAuthentication();

        if (currentUser == null) {
            // This would indicate bad coding somewhere
            throw new AccessDeniedException("Can't change password as no Authentication object found in context " +
                    "for current user.");
        }

        String username = currentUser.getName();

        // If an authentication manager has been set, re-authenticate the user with the supplied password.
        if (authenticationManager != null) {
            logger.debug("Reauthenticating user '"+ username + "' for password change request.");

            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, oldPassword));
        } else {
            logger.debug("No authentication manager set. Password won't be re-checked.");
        }

        logger.debug("Changing password for user '"+ username + "'");

        getJdbcTemplate().update(changePasswordSql, newPassword, username);

        SecurityContextHolder.getContext().setAuthentication(createNewAuthentication(currentUser, newPassword));

        userCache.removeUserFromCache(username);
    }

    protected Authentication createNewAuthentication(Authentication currentAuth, String newPassword) {
        UserDetails user = loadUserByUsername(currentAuth.getName());

        UsernamePasswordAuthenticationToken newAuthentication =
                new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());
        newAuthentication.setDetails(currentAuth.getDetails());

        return newAuthentication;
    }

    public boolean userExists(String username) {
        List<String> users = getJdbcTemplate().queryForList(userExistsSql, new String[] {username}, String.class);

        if (users.size() > 1) {
            throw new IncorrectResultSizeDataAccessException("More than one user found with name '" + username + "'", 1);
        }

        return users.size() == 1;
    }

    /*
     * 用户组相关操作
     */
    public List<String> findAllGroups() {
        return getJdbcTemplate().queryForList(findAllGroupsSql, String.class);
    }

    public List<String> findUsersInGroup(String groupName) {
        Assert.hasText(groupName);
        return getJdbcTemplate().queryForList(findUsersInGroupSql, new String[] {groupName}, String.class);
    }

    public void createGroup(String groupName, List<GrantedAuthority> authorities) {
        Assert.hasText(groupName);
        Assert.notNull(authorities);

        logger.debug("Creating new group '" + groupName + "' with authorities " +
                AuthorityUtils.authorityListToSet(authorities));

        getJdbcTemplate().update(insertGroupSql, groupName);

        final int groupId = findGroupId(groupName);

        for (GrantedAuthority a : authorities) {
            final String authority = a.getAuthority();
            getJdbcTemplate().update(insertGroupAuthoritySql, new PreparedStatementSetter() {
                public void setValues(PreparedStatement ps) throws SQLException {
                    ps.setInt(1, groupId);
                    ps.setString(2, authority);
                }
            });
        }
    }
    private int findGroupId(String group) {
        return getJdbcTemplate().queryForList(findGroupIdSql, new String[] {group}, Integer.class).get(0);
    }

    public void deleteGroup(String groupName) {
        logger.debug("Deleting group '" + groupName + "'");
        Assert.hasText(groupName);

        final int id = findGroupId(groupName);
        PreparedStatementSetter groupIdPSS = new PreparedStatementSetter() {
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setInt(1, id);
            }
        };
        getJdbcTemplate().update(deleteGroupMembersSql, groupIdPSS);
        getJdbcTemplate().update(deleteGroupAuthoritiesSql, groupIdPSS);
        getJdbcTemplate().update(deleteGroupSql, groupIdPSS);
    }

    public void renameGroup(String oldName, String newName) {
        logger.debug("Changing group name from '" + oldName + "' to '" + newName + "'");
        Assert.hasText(oldName);
        Assert.hasText(newName);

        getJdbcTemplate().update(renameGroupSql, newName, oldName);
    }

    public void addUserToGroup(final  String username,final String groupName) {
        logger.debug("Adding user '" + username + "' to group '" + groupName + "'");
        Assert.hasText(username);
        Assert.hasText(groupName);

        final int id = findGroupId(groupName);
        getJdbcTemplate().update(insertGroupMemberSql, new PreparedStatementSetter() {
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setInt(1, id);
                ps.setString(2, username);
            }
        });

        userCache.removeUserFromCache(username);
    }

    public void removeUserFromGroup(final String username,final String groupName) {
        logger.debug("Removing user '" + username + "' to group '" + groupName + "'");
        Assert.hasText(username);
        Assert.hasText(groupName);

        final int id = findGroupId(groupName);

        getJdbcTemplate().update(deleteGroupMemberSql, new PreparedStatementSetter() {
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setInt(1, id);
                ps.setString(2, username);
            }
        });

        userCache.removeUserFromCache(username);
    }

    public List<GrantedAuthority> findGroupAuthorities(String groupName) {
        logger.debug("Loading authorities for group '" + groupName + "'");
        Assert.hasText(groupName);

        return getJdbcTemplate().query(groupAuthoritiesSql, new String[] {groupName}, new RowMapper<GrantedAuthority>() {
            public GrantedAuthority mapRow(ResultSet rs, int rowNum) throws SQLException {
                String roleName = getRolePrefix() + rs.getString(3);

                return new SimpleGrantedAuthority(roleName);
            }
        });
    }

    public void addGroupAuthority(String groupName,final GrantedAuthority authority) {
        logger.debug("Adding authority '" + authority + "' to group '" + groupName + "'");
        Assert.hasText(groupName);
        Assert.notNull(authority);

        final int id = findGroupId(groupName);
        getJdbcTemplate().update(insertGroupAuthoritySql, new PreparedStatementSetter() {
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setInt(1, id);
                ps.setString(2, authority.getAuthority());
            }
        });
    }

    public void removeGroupAuthority(String groupName,final GrantedAuthority authority) {
        logger.debug("Removing authority '" + authority + "' from group '" + groupName + "'");
        Assert.hasText(groupName);
        Assert.notNull(authority);

        final int id = findGroupId(groupName);

        getJdbcTemplate().update(deleteGroupAuthoritySql, new PreparedStatementSetter() {

            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setInt(1, id);
                ps.setString(2, authority.getAuthority());
            }
        });
    }

    public void setAuthenticationManager(AuthenticationManager authenticationManager) {
        this.authenticationManager = authenticationManager;
    }

    public void setCreateUserSql(String createUserSql) {
        Assert.hasText(createUserSql);
        this.createUserSql = createUserSql;
    }

    public void setDeleteUserSql(String deleteUserSql) {
        Assert.hasText(deleteUserSql);
        this.deleteUserSql = deleteUserSql;
    }

    public void setUpdateUserSql(String updateUserSql) {
        Assert.hasText(updateUserSql);
        this.updateUserSql = updateUserSql;
    }

    public void setCreateAuthoritySql(String createAuthoritySql) {
        Assert.hasText(createAuthoritySql);
        this.createAuthoritySql = createAuthoritySql;
    }

    public void setDeleteUserAuthoritiesSql(String deleteUserAuthoritiesSql) {
        Assert.hasText(deleteUserAuthoritiesSql);
        this.deleteUserAuthoritiesSql = deleteUserAuthoritiesSql;
    }

    public void setUserExistsSql(String userExistsSql) {
        Assert.hasText(userExistsSql);
        this.userExistsSql = userExistsSql;
    }

    public void setChangePasswordSql(String changePasswordSql) {
        Assert.hasText(changePasswordSql);
        this.changePasswordSql = changePasswordSql;
    }

    public void setFindAllGroupsSql(String findAllGroupsSql) {
        Assert.hasText(findAllGroupsSql);
        this.findAllGroupsSql = findAllGroupsSql;
    }

    public void setFindUsersInGroupSql(String findUsersInGroupSql) {
        Assert.hasText(findUsersInGroupSql);
        this.findUsersInGroupSql = findUsersInGroupSql;
    }

    public void setInsertGroupSql(String insertGroupSql) {
        Assert.hasText(insertGroupSql);
        this.insertGroupSql = insertGroupSql;
    }

    public void setFindGroupIdSql(String findGroupIdSql) {
        Assert.hasText(findGroupIdSql);
        this.findGroupIdSql = findGroupIdSql;
    }

    public void setInsertGroupAuthoritySql(String insertGroupAuthoritySql) {
        Assert.hasText(insertGroupAuthoritySql);
        this.insertGroupAuthoritySql = insertGroupAuthoritySql;
    }

    public void setDeleteGroupSql(String deleteGroupSql) {
        Assert.hasText(deleteGroupSql);
        this.deleteGroupSql = deleteGroupSql;
    }

    public void setDeleteGroupAuthoritiesSql(String deleteGroupAuthoritiesSql) {
        Assert.hasText(deleteGroupAuthoritiesSql);
        this.deleteGroupAuthoritiesSql = deleteGroupAuthoritiesSql;
    }

    public void setDeleteGroupMembersSql(String deleteGroupMembersSql) {
        Assert.hasText(deleteGroupMembersSql);
        this.deleteGroupMembersSql = deleteGroupMembersSql;
    }

    public void setRenameGroupSql(String renameGroupSql) {
        Assert.hasText(renameGroupSql);
        this.renameGroupSql = renameGroupSql;
    }

    public void setInsertGroupMemberSql(String insertGroupMemberSql) {
        Assert.hasText(insertGroupMemberSql);
        this.insertGroupMemberSql = insertGroupMemberSql;
    }

    public void setDeleteGroupMemberSql(String deleteGroupMemberSql) {
        Assert.hasText(deleteGroupMemberSql);
        this.deleteGroupMemberSql = deleteGroupMemberSql;
    }

    public void setGroupAuthoritiesSql(String groupAuthoritiesSql) {
        Assert.hasText(groupAuthoritiesSql);
        this.groupAuthoritiesSql = groupAuthoritiesSql;
    }

    public void setDeleteGroupAuthoritySql(String deleteGroupAuthoritySql) {
        Assert.hasText(deleteGroupAuthoritySql);
        this.deleteGroupAuthoritySql = deleteGroupAuthoritySql;
    }

    /**
     * Optionally sets the UserCache if one is in use in the application.
     * This allows the user to be removed from the cache after updates have taken place to avoid stale data.
     *
     * @param userCache the cache used by the AuthenticationManager.
     */
    public void setUserCache(UserCache userCache) {
        Assert.notNull(userCache, "userCache cannot be null");
        this.userCache = userCache;
    }
}