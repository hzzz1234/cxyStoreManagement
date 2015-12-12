package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyproductrspecattr;
import org.apache.ibatis.annotations.Param;

public interface CxyproductrspecattrMapper {
    int deleteByPrimaryKey(@Param("productid") Integer productid, @Param("specattrid") Integer specattrid);

    int insert(Cxyproductrspecattr record);

    int insertSelective(Cxyproductrspecattr record);

    Cxyproductrspecattr selectByPrimaryKey(@Param("productid") Integer productid, @Param("specattrid") Integer specattrid);

    int updateByPrimaryKeySelective(Cxyproductrspecattr record);

    int updateByPrimaryKey(Cxyproductrspecattr record);
}