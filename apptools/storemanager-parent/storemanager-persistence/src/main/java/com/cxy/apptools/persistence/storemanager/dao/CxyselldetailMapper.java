package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyselldetail;

public interface CxyselldetailMapper {
    int deleteByPrimaryKey(Integer selldetailid);

    int insert(Cxyselldetail record);

    int insertSelective(Cxyselldetail record);

    Cxyselldetail selectByPrimaryKey(Integer selldetailid);

    int updateByPrimaryKeySelective(Cxyselldetail record);

    int updateByPrimaryKey(Cxyselldetail record);
}