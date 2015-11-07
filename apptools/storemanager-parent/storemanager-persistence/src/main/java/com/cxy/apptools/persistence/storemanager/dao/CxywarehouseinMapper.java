package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxywarehousein;

public interface CxywarehouseinMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cxywarehousein record);

    int insertSelective(Cxywarehousein record);

    Cxywarehousein selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cxywarehousein record);

    int updateByPrimaryKey(Cxywarehousein record);
}