package com.cxy.apptools.persistence.storemanager.dao;

import org.junit.Test;

/**
 * Created by Administrator on 2016/4/9.
 */
public class CxysupplierMapperTest extends BaseMapperTest{
    @Test
    public void queryByNameAndCategoryid() throws Exception {
        CxysupplierMapper cxysupplierMapper = session.getMapper(CxysupplierMapper.class);
        Integer c = cxysupplierMapper.queryByNameAndCategoryid("a",1);
        System.out.println("###########"+c);
    }
}
