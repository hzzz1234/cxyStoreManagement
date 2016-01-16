package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Groupmembers;

public interface GroupmembersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Groupmembers record);

    int insertSelective(Groupmembers record);

    Groupmembers selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Groupmembers record);

    int updateByPrimaryKey(Groupmembers record);
}