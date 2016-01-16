package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Groups;
import org.apache.ibatis.annotations.Param;

public interface GroupsMapper {
    int deleteByPrimaryKey(@Param("id") Integer id, @Param("groupName") String groupName);

    int insert(Groups record);

    int insertSelective(Groups record);

    Groups selectByPrimaryKey(@Param("id") Integer id, @Param("groupName") String groupName);

    int updateByPrimaryKeySelective(Groups record);

    int updateByPrimaryKey(Groups record);
}