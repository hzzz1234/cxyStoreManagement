package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxysuppliercategory;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CxysuppliercategoryMapper {
    int deleteByPrimaryKey(Integer suppliercategoryid);

    int insert(Cxysuppliercategory record);

    int insertSelective(Cxysuppliercategory record);

    Cxysuppliercategory selectByPrimaryKey(Integer suppliercategoryid);

    int updateByPrimaryKeySelective(Cxysuppliercategory record);

    int updateByPrimaryKey(Cxysuppliercategory record);

    List<Cxysuppliercategory> selectAllValues();

    @Delete("delete from cxysuppliercategory where pcategoryid=#{pcategoryid}")
    Integer deleteByPCategoryid(@Param("pcategoryid")int pcategoryid);

    @Select("select suppliercategoryid from cxysuppliercategory where suppliercategoryname=#{name} and pcategoryid=#{categoryid}")
    Integer queryByNameAndCategoryid(@Param("name")String name,@Param("categoryid")int categoryid);
}