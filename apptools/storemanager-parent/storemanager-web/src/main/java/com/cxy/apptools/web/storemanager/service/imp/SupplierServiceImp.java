package com.cxy.apptools.web.storemanager.service.imp;

import com.cxy.apptools.domain.storemanager.Cxysuppliercategory;
import com.cxy.apptools.persistence.storemanager.dao.CxysupplierMapper;
import com.cxy.apptools.persistence.storemanager.dao.CxysuppliercategoryMapper;
import com.cxy.apptools.web.storemanager.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2015/12/18.
 */
@Service("supplierService")
public class SupplierServiceImp implements SupplierService{
    @Autowired
    private CxysupplierMapper cxysupplierMapper;

    @Autowired
    private CxysuppliercategoryMapper cxysuppliercategoryMapper;

    public List<Cxysuppliercategory> queryAllValues() {
        return cxysuppliercategoryMapper.selectAllValues();
    }
}
