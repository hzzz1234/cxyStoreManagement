package com.cxy.apptools.web.storemanager.service.imp;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorder;
import com.cxy.apptools.persistence.storemanager.dao.CxypurchaseorderMapper;
import com.cxy.apptools.web.storemanager.service.ProductPurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by songbo on 2016/1/4.
 */
@Service("ProductPurchaseService")
public class ProductPurchaseServiceImp implements ProductPurchaseService {

    @Autowired
    private CxypurchaseorderMapper cxypurchaseorder;
    @Override
    public List<Cxypurchaseorder> GetAllOrders() {
        return cxypurchaseorder.queryAllorders();
    }
}
