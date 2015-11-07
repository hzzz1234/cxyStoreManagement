package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyproductcategory;

public interface CxyproductcategoryMapper {
    int deleteByPrimaryKey(Integer productcategoryid);

    int insert(Cxyproductcategory record);

    int insertSelective(Cxyproductcategory record);

    Cxyproductcategory selectByPrimaryKey(Integer productcategoryid);

    int updateByPrimaryKeySelective(Cxyproductcategory record);

    int updateByPrimaryKey(Cxyproductcategory record);
}