package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyproduct;

public interface CxyproductMapper {
    int deleteByPrimaryKey(Integer productid);

    int insert(Cxyproduct record);

    int insertSelective(Cxyproduct record);

    Cxyproduct selectByPrimaryKey(Integer productid);

    int updateByPrimaryKeySelective(Cxyproduct record);

    int updateByPrimaryKey(Cxyproduct record);
}