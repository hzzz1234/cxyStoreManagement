package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyusers;

public interface CxyusersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cxyusers record);

    int insertSelective(Cxyusers record);

    Cxyusers selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cxyusers record);

    int updateByPrimaryKey(Cxyusers record);
}