package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Groupauthorities;

public interface GroupauthoritiesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Groupauthorities record);

    int insertSelective(Groupauthorities record);

    Groupauthorities selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Groupauthorities record);

    int updateByPrimaryKey(Groupauthorities record);
}