package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyuserroles;

public interface CxyuserrolesMapper {
    int deleteByPrimaryKey(Integer userroleid);

    int insert(Cxyuserroles record);

    int insertSelective(Cxyuserroles record);

    Cxyuserroles selectByPrimaryKey(Integer userroleid);

    int updateByPrimaryKeySelective(Cxyuserroles record);

    int updateByPrimaryKey(Cxyuserroles record);
}