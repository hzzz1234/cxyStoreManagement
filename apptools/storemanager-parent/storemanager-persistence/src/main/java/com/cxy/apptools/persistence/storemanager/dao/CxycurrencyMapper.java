package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxycurrency;

public interface CxycurrencyMapper {
    int deleteByPrimaryKey(Integer currencyid);

    int insert(Cxycurrency record);

    int insertSelective(Cxycurrency record);

    Cxycurrency selectByPrimaryKey(Integer currencyid);

    int updateByPrimaryKeySelective(Cxycurrency record);

    int updateByPrimaryKey(Cxycurrency record);
}