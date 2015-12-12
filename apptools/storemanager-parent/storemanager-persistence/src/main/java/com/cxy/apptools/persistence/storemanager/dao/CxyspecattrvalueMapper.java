package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyspecattrvalue;

public interface CxyspecattrvalueMapper {
    int deleteByPrimaryKey(Integer specattrvalueid);

    int insert(Cxyspecattrvalue record);

    int insertSelective(Cxyspecattrvalue record);

    Cxyspecattrvalue selectByPrimaryKey(Integer specattrvalueid);

    int updateByPrimaryKeySelective(Cxyspecattrvalue record);

    int updateByPrimaryKey(Cxyspecattrvalue record);
}