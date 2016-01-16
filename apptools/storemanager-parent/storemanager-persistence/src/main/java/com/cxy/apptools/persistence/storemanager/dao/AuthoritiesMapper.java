package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Authorities;

public interface AuthoritiesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Authorities record);

    int insertSelective(Authorities record);

    Authorities selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Authorities record);

    int updateByPrimaryKey(Authorities record);
}