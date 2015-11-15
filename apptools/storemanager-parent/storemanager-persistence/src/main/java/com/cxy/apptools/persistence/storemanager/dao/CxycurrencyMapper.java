package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxycurrency;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CxycurrencyMapper {
    int deleteByPrimaryKey(Integer currencyid);

    int insert(Cxycurrency record);

    int insertSelective(Cxycurrency record);

    Cxycurrency selectByPrimaryKey(Integer currencyid);

    int updateByPrimaryKeySelective(Cxycurrency record);

    int updateByPrimaryKey(Cxycurrency record);

    @Select("select * from cxycurrency")
    List<Cxycurrency> selectAllValues();
}