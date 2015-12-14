package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorder;
import com.cxy.apptools.persistence.storemanager.enums.OrderTypeIndex;
import com.cxy.apptools.persistence.storemanager.query.Cxypurchaseorderquery;
import org.junit.Test;

import java.util.Arrays;
import java.util.List;

/**
 * Created by Administrator on 2015/12/15.
 */
public class CxypurchaseorderMapperTest extends BaseMapperTest{
    @Test
    public void testQueryCxypurchaseordersByBasequery() throws Exception {
        CxypurchaseorderMapper cxypurchaseorderMapper = session.getMapper(CxypurchaseorderMapper.class);
        Cxypurchaseorderquery cxypurchaseorderquery = new Cxypurchaseorderquery();
        cxypurchaseorderquery.setSearchFields(Arrays.asList("id"));
        cxypurchaseorderquery.setSearchCondition("1");
        cxypurchaseorderquery.setOrdertype(OrderTypeIndex.DESC);
        cxypurchaseorderquery.setOrderField("id");
        List<Cxypurchaseorder> ls = cxypurchaseorderMapper.queryCxypurchaseordersByBasequery(cxypurchaseorderquery);
        System.out.println(ls.get(0).getId());
    }
}
