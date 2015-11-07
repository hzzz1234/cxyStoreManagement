package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyclient;

public interface CxyclientMapper {
    int deleteByPrimaryKey(Integer supplierid);

    int insert(Cxyclient record);

    int insertSelective(Cxyclient record);

    Cxyclient selectByPrimaryKey(Integer supplierid);

    int updateByPrimaryKeySelective(Cxyclient record);

    int updateByPrimaryKey(Cxyclient record);
}