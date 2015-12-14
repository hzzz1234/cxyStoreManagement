package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyclient;

public interface CxyclientMapper {
    int deleteByPrimaryKey(Integer clientid);

    int insert(Cxyclient record);

    int insertSelective(Cxyclient record);

    Cxyclient selectByPrimaryKey(Integer clientid);

    int updateByPrimaryKeySelective(Cxyclient record);

    int updateByPrimaryKey(Cxyclient record);
}