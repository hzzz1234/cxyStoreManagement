package com.cxy.apptools.web.storemanager.service.imp;

import com.cxy.apptools.common.beans.Page;
import com.cxy.apptools.domain.storemanager.CxyOrderSum;
import com.cxy.apptools.domain.storemanager.Cxysell;
import com.cxy.apptools.persistence.storemanager.dao.CxysellMapper;
import com.cxy.apptools.persistence.storemanager.enums.OrderTypeIndex;
import com.cxy.apptools.persistence.storemanager.query.Cxysellquery;
import com.cxy.apptools.web.storemanager.service.ProductSaleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by songbo on 2016/3/11.
 */
@Service("ProductSaleService")
public class ProductSaleServiceImp implements ProductSaleService {

    @Autowired
    private CxysellMapper cxysellMapper;
    @Override
    public boolean deleteOneSellOrder(int id) {

        int count=cxysellMapper.deleteByPrimaryKey(id);
        if(count>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean deleteMultiSellOrders(List<Integer> ids) {

        int count=0;
        for(int i:ids){
            cxysellMapper.deleteByPrimaryKey(i);
            count++;
        }
        //int count=cxypurchaseorder.deleteMultiorders(ids);
        if(count>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public CxyOrderSum<Cxysell> GetSellOrdersByKeys(String keys, int startNum, int pageSize) {
        Cxysellquery keysModel=new Cxysellquery();
        keysModel.setSearchCondition(keys);
        keysModel.setOrderField("create_time");
        keysModel.setOrdertype(OrderTypeIndex.DESC);
        List<String> searchFields=new ArrayList<String>();
        searchFields.add("sellid");
        keysModel.setSearchFields(searchFields);
        CxyOrderSum<Cxysell> sum=cxysellMapper.queryCxysellSumByBasequery(keysModel);
        Page page=new Page();
        page.setPageSize((long)pageSize);
        page.setStartItem((long)startNum);
        keysModel.setPage(page);
        sum.orders=cxysellMapper.queryCxysellByKeys(keysModel);
        return sum;
    }
}
