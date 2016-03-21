package com.cxy.apptools.web.storemanager.service;


import com.cxy.apptools.domain.storemanager.CxyOrderSum;
import com.cxy.apptools.domain.storemanager.Cxysell;
import com.cxy.apptools.web.storemanager.vo.page.ProductSaleVo;

import java.util.List;

/**
 * Created by songbo on 2016/3/11.
 */
public interface ProductSaleService {
    public boolean deleteOneSellOrder(int id);
    public boolean deleteMultiSellOrders(List<Integer> ids);
    public CxyOrderSum<Cxysell> GetSellOrdersByKeys(String keys,int startNum,int pageSize);
}
