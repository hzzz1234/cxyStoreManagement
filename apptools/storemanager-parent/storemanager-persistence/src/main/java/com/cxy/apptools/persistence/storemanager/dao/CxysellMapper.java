package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.CxyOrderSum;
import com.cxy.apptools.domain.storemanager.Cxysell;
import com.cxy.apptools.persistence.storemanager.query.Cxypurchaseorderquery;
import com.cxy.apptools.persistence.storemanager.query.Cxysellquery;


import java.util.List;

public interface CxysellMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cxysell record);

    int insertSelective(Cxysell record);

    Cxysell selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cxysell record);

    int updateByPrimaryKey(Cxysell record);

    List<Cxysell> queryCxysellByKeys(Cxysellquery cxywarehouseinquery);
    CxyOrderSum queryCxysellSumByBasequery(Cxysellquery cxypurchaseorderquery);
}