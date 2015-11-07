package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorderdetail;

public interface CxypurchaseorderdetailMapper {
    int deleteByPrimaryKey(Integer purchaseorderdetailid);

    int insert(Cxypurchaseorderdetail record);

    int insertSelective(Cxypurchaseorderdetail record);

    Cxypurchaseorderdetail selectByPrimaryKey(Integer purchaseorderdetailid);

    int updateByPrimaryKeySelective(Cxypurchaseorderdetail record);

    int updateByPrimaryKey(Cxypurchaseorderdetail record);
}