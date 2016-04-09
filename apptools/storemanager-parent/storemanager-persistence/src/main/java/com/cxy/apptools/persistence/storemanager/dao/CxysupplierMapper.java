package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxysupplier;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CxysupplierMapper {
    int deleteByPrimaryKey(Integer supplierid);

    int insert(Cxysupplier record);

    int insertSelective(Cxysupplier record);

    Cxysupplier selectByPrimaryKey(Integer supplierid);

    int updateByPrimaryKeySelective(Cxysupplier record);

    int updateByPrimaryKey(Cxysupplier record);

    List<Cxysupplier> selectAllValues();

    @Delete("delete from cxysupplier where suppliercategoryid=#{suppliercategoryid}")
    int deleteBySupplierCategoryid(@Param("suppliercategoryid")int suppliercategoryid);

    @Select("select supplierid from cxysupplier where suppliername=#{name} and suppliercategoryid=#{categoryid}")
    Integer queryByNameAndCategoryid(@Param("name")String name,@Param("categoryid")int categoryid);
}