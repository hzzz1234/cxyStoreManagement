package com.cxy.apptools.web.storemanager.service;

import org.springframework.security.core.userdetails.UserDetails;

/**
 * Created by Administrator on 2015/12/27.
 */
public interface CxyUserService {
    /**
     * Create a new user with the supplied details.
     */
    void createUser(UserDetails user);

    /**
     * Update the specified user.
     */
    void updateUser(UserDetails user);

    /**
     * Remove the user with the given login name from the system.
     */
    void deleteUser(String username);

    /**
     * Modify the current user's password. This should change the user's password in
     * the persistent user repository (datbase, LDAP etc).
     *
     * @param oldPassword current password (for re-authentication if required)
     * @param newPassword the password to change to
     */
    void changePassword(String oldPassword, String newPassword);

    /**
     * Check if a user with the supplied login name exists in the system.
     */
    boolean userExists(String username);
}
