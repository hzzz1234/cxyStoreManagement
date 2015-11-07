package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxysizecategorydetail;

public interface CxysizecategorydetailMapper {
    int deleteByPrimaryKey(Integer sizedetailid);

    int insert(Cxysizecategorydetail record);

    int insertSelective(Cxysizecategorydetail record);

    Cxysizecategorydetail selectByPrimaryKey(Integer sizedetailid);

    int updateByPrimaryKeySelective(Cxysizecategorydetail record);

    int updateByPrimaryKey(Cxysizecategorydetail record);
}