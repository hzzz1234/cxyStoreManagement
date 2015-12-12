package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxywarehouseinproductsizedetail;
import org.apache.ibatis.annotations.Param;

public interface CxywarehouseinproductsizedetailMapper {
    int deleteByPrimaryKey(@Param("warehouseinproductsizedetailid") Integer warehouseinproductsizedetailid, @Param("specattrvalueid") Integer specattrvalueid);

    int insert(Cxywarehouseinproductsizedetail record);

    int insertSelective(Cxywarehouseinproductsizedetail record);

    Cxywarehouseinproductsizedetail selectByPrimaryKey(@Param("warehouseinproductsizedetailid") Integer warehouseinproductsizedetailid, @Param("specattrvalueid") Integer specattrvalueid);

    int updateByPrimaryKeySelective(Cxywarehouseinproductsizedetail record);

    int updateByPrimaryKey(Cxywarehouseinproductsizedetail record);
}