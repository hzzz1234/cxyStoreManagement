package com.cxy.apptools.web.storemanager.service.imp;

import com.cxy.apptools.domain.storemanager.Cxyproduct;
import com.cxy.apptools.domain.storemanager.Cxyproductcategory;
import com.cxy.apptools.domain.storemanager.Cxyspecattr;
import com.cxy.apptools.web.storemanager.service.ProductDefineService;

import java.util.List;

/**
 * Created by zhen.huaz on 2016/2/5.
 */
public class ProductDefineServiceImp implements ProductDefineService{
    public List<Cxyproduct> getAllProducts() {
        return null;
    }

    public int insertProduct(Cxyproduct cxyproduct, List<Cxyspecattr> cxyspecattrs) {
        return 0;
    }

    public int deleteProduct(int cxyproductid) {
        return 0;
    }

    public int updateProduct(Cxyproduct cxyproduct) {
        return 0;
    }

    public int deleteProductSpecAttr(int cxyproductid, int cxyspecattrid) {
        return 0;
    }

    public int insertCategory(Cxyproductcategory cxyproductcategory) {
        return 0;
    }

    public int deleteProductCategory(int cxyproductcategoryid) {
        return 0;
    }

    public int updateProductCategory(Cxyproductcategory cxyproductcategory) {
        return 0;
    }
}
