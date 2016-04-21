package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxyclient;
import com.cxy.apptools.domain.storemanager.Cxyclientcategory;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CxyclientcategoryMapper {
    int deleteByPrimaryKey(Integer clientcategoryid);

    int insert(Cxyclientcategory record);

    int insertSelective(Cxyclientcategory record);

    Cxyclientcategory selectByPrimaryKey(Integer clientcategoryid);

    int updateByPrimaryKeySelective(Cxyclientcategory record);

    int updateByPrimaryKey(Cxyclientcategory record);

    List<Cxyclientcategory> selectAllValues();

    @Delete("delete from cxyclientcategory where pcategoryid=#{pcategoryid}")
    Integer deleteByPCategoryid(@Param("pcategoryid")int pcategoryid);

    @Select("select clientcategoryid from cxyclientcategory where clientcategoryname=#{name} and pcategoryid=#{categoryid}")
    Integer queryByNameAndCategoryid(@Param("name")String name,@Param("categoryid")int categoryid);

}