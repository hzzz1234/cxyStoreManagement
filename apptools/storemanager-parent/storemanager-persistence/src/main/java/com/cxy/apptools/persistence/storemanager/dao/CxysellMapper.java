package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxysell;

public interface CxysellMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cxysell record);

    int insertSelective(Cxysell record);

    Cxysell selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cxysell record);

    int updateByPrimaryKey(Cxysell record);
}