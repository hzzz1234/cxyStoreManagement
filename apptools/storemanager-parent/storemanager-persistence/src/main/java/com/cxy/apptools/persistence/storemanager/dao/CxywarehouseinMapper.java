package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.CxyOrderSum;
import com.cxy.apptools.domain.storemanager.Cxysell;
import com.cxy.apptools.domain.storemanager.Cxywarehousein;
import com.cxy.apptools.persistence.storemanager.query.Cxysellquery;
import com.cxy.apptools.persistence.storemanager.query.Cxywarehouseinquery;

import java.util.List;

public interface CxywarehouseinMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cxywarehousein record);

    int insertSelective(Cxywarehousein record);

    Cxywarehousein selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cxywarehousein record);

    int updateByPrimaryKey(Cxywarehousein record);

    List<Cxywarehousein> queryHouseInsByKeys(Cxywarehouseinquery cxywarehouseinquery);
    CxyOrderSum queryHouseInsSumByBasequery(Cxywarehouseinquery cxywarehouseinquery);
}