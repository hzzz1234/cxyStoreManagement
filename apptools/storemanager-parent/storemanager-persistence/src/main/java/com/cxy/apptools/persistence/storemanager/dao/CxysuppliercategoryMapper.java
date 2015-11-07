package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxysuppliercategory;

public interface CxysuppliercategoryMapper {
    int deleteByPrimaryKey(Integer suppliercategoryid);

    int insert(Cxysuppliercategory record);

    int insertSelective(Cxysuppliercategory record);

    Cxysuppliercategory selectByPrimaryKey(Integer suppliercategoryid);

    int updateByPrimaryKeySelective(Cxysuppliercategory record);

    int updateByPrimaryKey(Cxysuppliercategory record);
}