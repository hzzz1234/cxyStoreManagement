package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyclientcategory;

public interface CxyclientcategoryMapper {
    int deleteByPrimaryKey(Integer clientcategoryid);

    int insert(Cxyclientcategory record);

    int insertSelective(Cxyclientcategory record);

    Cxyclientcategory selectByPrimaryKey(Integer clientcategoryid);

    int updateByPrimaryKeySelective(Cxyclientcategory record);

    int updateByPrimaryKey(Cxyclientcategory record);
}