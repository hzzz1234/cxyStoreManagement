package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxywarehouseindetail;

public interface CxywarehouseindetailMapper {
    int deleteByPrimaryKey(Integer warehouseindetailid);

    int insert(Cxywarehouseindetail record);

    int insertSelective(Cxywarehouseindetail record);

    Cxywarehouseindetail selectByPrimaryKey(Integer warehouseindetailid);

    int updateByPrimaryKeySelective(Cxywarehouseindetail record);

    int updateByPrimaryKey(Cxywarehouseindetail record);
}