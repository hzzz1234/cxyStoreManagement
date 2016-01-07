package com.cxy.apptools.web.storemanager.service;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorder;

import java.util.List;

/**
 * Created by songbo on 2016/1/4.
 */
public interface ProductPurchaseService {
    public List<Cxypurchaseorder> GetAllOrders();
}
