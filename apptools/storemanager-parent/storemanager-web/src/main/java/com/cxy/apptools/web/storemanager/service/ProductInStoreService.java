package com.cxy.apptools.web.storemanager.service;

import com.cxy.apptools.domain.storemanager.CxyOrderSum;
import com.cxy.apptools.domain.storemanager.Cxywarehousein;
import com.cxy.apptools.web.storemanager.vo.page.ProductInStoreVo;

import java.util.List;

/**
 * Created by songbo on 2016/3/11.
 */
public interface ProductInStoreService {

    public boolean deleteOneHouseIn(int id);
    public boolean deleteMultiWareHouseIn(List<Integer> ids);
    public CxyOrderSum<Cxywarehousein> GetHouseInsByKeys(String keys,int startNum,int pageSize);
}
