package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorderproductsizedetail;
import org.apache.ibatis.annotations.Param;

public interface CxypurchaseorderproductsizedetailMapper {
    int deleteByPrimaryKey(@Param("purchaseorderdetailid") Integer purchaseorderdetailid, @Param("specattrvalueid") Integer specattrvalueid);

    int insert(Cxypurchaseorderproductsizedetail record);

    int insertSelective(Cxypurchaseorderproductsizedetail record);

    Cxypurchaseorderproductsizedetail selectByPrimaryKey(@Param("purchaseorderdetailid") Integer purchaseorderdetailid, @Param("specattrvalueid") Integer specattrvalueid);

    int updateByPrimaryKeySelective(Cxypurchaseorderproductsizedetail record);

    int updateByPrimaryKey(Cxypurchaseorderproductsizedetail record);
}