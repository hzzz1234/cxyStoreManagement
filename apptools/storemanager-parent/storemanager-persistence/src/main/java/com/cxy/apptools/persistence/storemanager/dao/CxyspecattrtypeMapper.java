package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyspecattrtype;

public interface CxyspecattrtypeMapper {
    int deleteByPrimaryKey(Integer speclattrtypeid);

    int insert(Cxyspecattrtype record);

    int insertSelective(Cxyspecattrtype record);

    Cxyspecattrtype selectByPrimaryKey(Integer speclattrtypeid);

    int updateByPrimaryKeySelective(Cxyspecattrtype record);

    int updateByPrimaryKey(Cxyspecattrtype record);
}