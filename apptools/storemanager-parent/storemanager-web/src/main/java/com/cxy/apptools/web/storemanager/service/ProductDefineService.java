package com.cxy.apptools.web.storemanager.service;

import com.cxy.apptools.domain.storemanager.Cxyproduct;
import com.cxy.apptools.domain.storemanager.Cxyproductcategory;
import com.cxy.apptools.domain.storemanager.Cxyspecattr;

import java.util.List;

/**
 * Created by zhen.huaz on 2016/2/5.
 */
public interface ProductDefineService {
    List<Cxyproduct> getAllProducts();

    int insertProduct(Cxyproduct cxyproduct,List<Cxyspecattr> cxyspecattrs);

    int deleteProduct(int cxyproductid);

    int updateProduct(Cxyproduct cxyproduct);

    int deleteProductSpecAttr(int cxyproductid,int cxyspecattrid);

    int insertCategory(Cxyproductcategory cxyproductcategory);

    int deleteProductCategory(int cxyproductcategoryid);

    int updateProductCategory(Cxyproductcategory cxyproductcategory);
}
