package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxysuppliercategory;
import org.junit.Test;

import java.util.List;

/**
 * Created by Administrator on 2015/12/18.
 */
public class CxysuppliercategoryMapperTest extends BaseMapperTest{
    @Test
    public void testSelectAllValues() throws Exception {
        CxysuppliercategoryMapper cxysuppliercategoryMapper = session.getMapper(CxysuppliercategoryMapper.class);
        List<Cxysuppliercategory> list = cxysuppliercategoryMapper.selectAllValues();
        System.out.println(list.get(0));
    }
}
