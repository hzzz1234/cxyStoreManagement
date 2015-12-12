package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxysellproductsizedetail;
import org.apache.ibatis.annotations.Param;

public interface CxysellproductsizedetailMapper {
    int deleteByPrimaryKey(@Param("selldetailid") Integer selldetailid, @Param("specattrvalueid") Integer specattrvalueid);

    int insert(Cxysellproductsizedetail record);

    int insertSelective(Cxysellproductsizedetail record);

    Cxysellproductsizedetail selectByPrimaryKey(@Param("selldetailid") Integer selldetailid, @Param("specattrvalueid") Integer specattrvalueid);

    int updateByPrimaryKeySelective(Cxysellproductsizedetail record);

    int updateByPrimaryKey(Cxysellproductsizedetail record);
}