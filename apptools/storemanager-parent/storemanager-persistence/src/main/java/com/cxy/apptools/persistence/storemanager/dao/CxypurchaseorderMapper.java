package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorder;
import com.cxy.apptools.domain.storemanager.CxyOrderSum;
import com.cxy.apptools.persistence.storemanager.query.Cxypurchaseorderquery;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CxypurchaseorderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cxypurchaseorder record);

    int insertSelective(Cxypurchaseorder record);

    Cxypurchaseorder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cxypurchaseorder record);

    int updateByPrimaryKey(Cxypurchaseorder record);

    List<Cxypurchaseorder> queryCxypurchaseordersByBasequery(Cxypurchaseorderquery cxypurchaseorderquery);

    CxyOrderSum queryCxySumByBasequery(Cxypurchaseorderquery cxypurchaseorderquery);
    List<Cxypurchaseorder> queryAllorders();
    int deleteMultiorders(List<Integer> ids);
    @Select("select * from cxypurchaseorder where pouid like #{pouid}")
     public List<Cxypurchaseorder> queryOrdersKeys(@Param("pouid") String pouid);
}