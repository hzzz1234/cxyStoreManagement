package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyshop;

public interface CxyshopMapper {
    int deleteByPrimaryKey(Integer shopid);

    int insert(Cxyshop record);

    int insertSelective(Cxyshop record);

    Cxyshop selectByPrimaryKey(Integer shopid);

    int updateByPrimaryKeySelective(Cxyshop record);

    int updateByPrimaryKey(Cxyshop record);
}