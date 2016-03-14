package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorderdetail;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CxypurchaseorderdetailMapper {
    int deleteByPrimaryKey(Integer purchaseorderdetailid);

    int insert(Cxypurchaseorderdetail record);

    int insertSelective(Cxypurchaseorderdetail record);

    Cxypurchaseorderdetail selectByPrimaryKey(Integer purchaseorderdetailid);

    int updateByPrimaryKeySelective(Cxypurchaseorderdetail record);

    int updateByPrimaryKey(Cxypurchaseorderdetail record);

    @Select("Select \n" +
            "purchaseorderdetailid,\n" +
            "purchaseorderid,\n" +
            "productid,\n" +
            "purchaseprice,\n" +
            "comment,\n" +
            "seq,\n" +
            "create_time createTime,\n" +
            "DataChange_LastTime datachangeLasttime from cxypurchaseorderdetail where purchaseorderid=#{orderid}")
    List<Cxypurchaseorderdetail> selectAllByOrderId(@Param("orderid")Integer orderid);
}