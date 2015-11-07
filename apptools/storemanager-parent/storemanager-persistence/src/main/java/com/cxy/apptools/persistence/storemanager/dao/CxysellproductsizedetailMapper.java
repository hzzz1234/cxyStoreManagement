package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxysellproductsizedetail;

public interface CxysellproductsizedetailMapper {
    int deleteByPrimaryKey(Integer sellproductsizedetailid);

    int insert(Cxysellproductsizedetail record);

    int insertSelective(Cxysellproductsizedetail record);

    Cxysellproductsizedetail selectByPrimaryKey(Integer sellproductsizedetailid);

    int updateByPrimaryKeySelective(Cxysellproductsizedetail record);

    int updateByPrimaryKey(Cxysellproductsizedetail record);
}