package com.cxy.apptools.web.storemanager.service;


import com.cxy.apptools.web.storemanager.service.models.ProductPurchaseModel;


import java.util.List;

/**
 * Created by songbo on 2016/1/4.
 */
public interface ProductPurchaseService {
    public List<ProductPurchaseModel> GetAllOrders();
}
