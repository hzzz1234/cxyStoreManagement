package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxycolor;

public interface CxycolorMapper {
    int deleteByPrimaryKey(Integer colorid);

    int insert(Cxycolor record);

    int insertSelective(Cxycolor record);

    Cxycolor selectByPrimaryKey(Integer colorid);

    int updateByPrimaryKeySelective(Cxycolor record);

    int updateByPrimaryKey(Cxycolor record);
}