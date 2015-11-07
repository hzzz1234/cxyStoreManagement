package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorderproductsizedetail;

public interface CxypurchaseorderproductsizedetailMapper {
    int deleteByPrimaryKey(Integer productsizepurchaseorderid);

    int insert(Cxypurchaseorderproductsizedetail record);

    int insertSelective(Cxypurchaseorderproductsizedetail record);

    Cxypurchaseorderproductsizedetail selectByPrimaryKey(Integer productsizepurchaseorderid);

    int updateByPrimaryKeySelective(Cxypurchaseorderproductsizedetail record);

    int updateByPrimaryKey(Cxypurchaseorderproductsizedetail record);
}