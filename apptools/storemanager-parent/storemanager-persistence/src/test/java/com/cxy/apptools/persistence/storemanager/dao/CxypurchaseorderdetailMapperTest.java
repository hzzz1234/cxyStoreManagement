package com.cxy.apptools.persistence.storemanager.dao;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorderdetail;
import org.junit.Test;

import java.util.List;

/**
 * Created by Administrator on 2016/3/12.
 */
public class CxypurchaseorderdetailMapperTest extends BaseMapperTest{
    @Test
    public void testQueryCxypurchaseordersByBasequery() throws Exception {
        CxypurchaseorderdetailMapper cxypurchaseorderdetailMapper = session.getMapper(CxypurchaseorderdetailMapper.class);
        List<Cxypurchaseorderdetail> cxypurchaseorderdetails = cxypurchaseorderdetailMapper.selectAllByOrderId(1);
        for(Cxypurchaseorderdetail c:cxypurchaseorderdetails){
            System.out.println(c.toString());

        }
    }
}
