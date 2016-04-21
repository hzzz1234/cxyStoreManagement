package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyclient;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CxyclientMapper {
    int deleteByPrimaryKey(Integer clientid);

    int insert(Cxyclient record);

    int insertSelective(Cxyclient record);

    Cxyclient selectByPrimaryKey(Integer clientid);

    int updateByPrimaryKeySelective(Cxyclient record);

    int updateByPrimaryKey(Cxyclient record);

    List<Cxyclient> selectAllValues();

    @Delete("delete from cxyclient where clientcategoryid=#{clientcategoryid}")
    int deleteByClientCategoryid(@Param("clientcategoryid")int clientcategoryid);

    @Select("select clientid from cxyclient where clientname=#{name} and clientcategoryid=#{categoryid}")
    Integer queryByNameAndCategoryid(@Param("name")String name,@Param("categoryid")int categoryid);
}