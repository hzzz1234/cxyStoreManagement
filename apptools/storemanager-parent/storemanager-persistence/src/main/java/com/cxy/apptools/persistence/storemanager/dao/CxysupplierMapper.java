package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxysupplier;

public interface CxysupplierMapper {
    int deleteByPrimaryKey(Integer clientid);

    int insert(Cxysupplier record);

    int insertSelective(Cxysupplier record);

    Cxysupplier selectByPrimaryKey(Integer clientid);

    int updateByPrimaryKeySelective(Cxysupplier record);

    int updateByPrimaryKey(Cxysupplier record);
}