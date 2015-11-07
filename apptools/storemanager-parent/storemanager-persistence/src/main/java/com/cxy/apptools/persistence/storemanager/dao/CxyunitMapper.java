package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyunit;

public interface CxyunitMapper {
    int deleteByPrimaryKey(Integer unitid);

    int insert(Cxyunit record);

    int insertSelective(Cxyunit record);

    Cxyunit selectByPrimaryKey(Integer unitid);

    int updateByPrimaryKeySelective(Cxyunit record);

    int updateByPrimaryKey(Cxyunit record);
}