package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.cxywarehouseinsizedetail;

public interface cxywarehouseinsizedetailMapper {
    int deleteByPrimaryKey(Integer warehouseinproductsizedetailid);

    int insert(cxywarehouseinsizedetail record);

    int insertSelective(cxywarehouseinsizedetail record);

    cxywarehouseinsizedetail selectByPrimaryKey(Integer warehouseinproductsizedetailid);

    int updateByPrimaryKeySelective(cxywarehouseinsizedetail record);

    int updateByPrimaryKey(cxywarehouseinsizedetail record);
}