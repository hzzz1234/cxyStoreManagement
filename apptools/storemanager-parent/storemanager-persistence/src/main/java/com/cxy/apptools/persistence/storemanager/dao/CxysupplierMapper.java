package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxysupplier;

public interface CxysupplierMapper {
    int deleteByPrimaryKey(Integer supplierid);

    int insert(Cxysupplier record);

    int insertSelective(Cxysupplier record);

    Cxysupplier selectByPrimaryKey(Integer supplierid);

    int updateByPrimaryKeySelective(Cxysupplier record);

    int updateByPrimaryKey(Cxysupplier record);
}