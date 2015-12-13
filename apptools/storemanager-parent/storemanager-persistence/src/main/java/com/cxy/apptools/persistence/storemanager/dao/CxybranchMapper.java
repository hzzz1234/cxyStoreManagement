package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxybranch;

public interface CxybranchMapper {
    int deleteByPrimaryKey(Integer branchid);

    int insert(Cxybranch record);

    int insertSelective(Cxybranch record);

    Cxybranch selectByPrimaryKey(Integer branchid);

    int updateByPrimaryKeySelective(Cxybranch record);

    int updateByPrimaryKey(Cxybranch record);
}