package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyspecattrtype;
import com.cxy.apptools.domain.storemanager.Cxyspecattrvalue;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CxyspecattrtypeMapper {
    int deleteByPrimaryKey(Integer speclattrtypeid);

    int insert(Cxyspecattrtype record);

    int insertSelective(Cxyspecattrtype record);

    Cxyspecattrtype selectByPrimaryKey(Integer speclattrtypeid);

    int updateByPrimaryKeySelective(Cxyspecattrtype record);

    int updateByPrimaryKey(Cxyspecattrtype record);

    @Select("SELECT * FROM cxyspecattrtype")
    List<Cxyspecattrtype> getAllValues();


}