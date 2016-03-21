package com.cxy.apptools.web.storemanager.service.imp;

import com.cxy.apptools.common.beans.Page;
import com.cxy.apptools.domain.storemanager.CxyOrderSum;
import com.cxy.apptools.domain.storemanager.Cxywarehousein;

import com.cxy.apptools.persistence.storemanager.dao.CxywarehouseinMapper;
import com.cxy.apptools.persistence.storemanager.enums.OrderTypeIndex;
import com.cxy.apptools.persistence.storemanager.query.Cxywarehouseinquery;
import com.cxy.apptools.web.storemanager.service.ProductInStoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by songbo on 2016/3/11.
 */
@Service("ProductInStoreService")
public class ProductInStoreServiceImp implements ProductInStoreService {
    @Autowired
    public CxywarehouseinMapper cxywarehousein;
    @Override
    public boolean deleteOneHouseIn(int id) {
        int count=cxywarehousein.deleteByPrimaryKey(id);
        if(count>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean deleteMultiWareHouseIn(List<Integer> ids) {
        int count=0;
        for(int i:ids){
            cxywarehousein.deleteByPrimaryKey(i);
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
    public CxyOrderSum<Cxywarehousein> GetHouseInsByKeys(String keys, int startNum, int pageSize) {
        Cxywarehouseinquery keysModel=new Cxywarehouseinquery();
        keysModel.setSearchCondition(keys);
        keysModel.setOrderField("create_time");
        keysModel.setOrdertype(OrderTypeIndex.DESC);
        List<String> searchFields=new ArrayList<String>();
        searchFields.add("warehouseid");
        keysModel.setSearchFields(searchFields);
        CxyOrderSum<Cxywarehousein> sum=cxywarehousein.queryHouseInsSumByBasequery(keysModel);
        Page page=new Page();
        page.setPageSize((long)pageSize);
        page.setStartItem((long)startNum);
        keysModel.setPage(page);
        List<Cxywarehousein> list=cxywarehousein.queryHouseInsByKeys(keysModel);
        if(list!=null&&list.size()>0){
            sum.orders=list;
        }else {
            Cxywarehousein model=new Cxywarehousein();
            List<Cxywarehousein> resoult=new ArrayList<Cxywarehousein>();
            resoult.add(model);
            sum.orders=resoult;
        }
        return sum;
    }
}
