package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorder;
import com.cxy.apptools.persistence.storemanager.query.Cxypurchaseorderquery;

import java.util.List;

public interface CxypurchaseorderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cxypurchaseorder record);

    int insertSelective(Cxypurchaseorder record);

    Cxypurchaseorder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cxypurchaseorder record);

    int updateByPrimaryKey(Cxypurchaseorder record);

    List<Cxypurchaseorder> queryCxypurchaseordersByBasequery(Cxypurchaseorderquery cxypurchaseorderquery);
}