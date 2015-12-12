package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyspecattr;

public interface CxyspecattrMapper {
    int deleteByPrimaryKey(Integer specattrid);

    int insert(Cxyspecattr record);

    int insertSelective(Cxyspecattr record);

    Cxyspecattr selectByPrimaryKey(Integer specattrid);

    int updateByPrimaryKeySelective(Cxyspecattr record);

    int updateByPrimaryKey(Cxyspecattr record);
}