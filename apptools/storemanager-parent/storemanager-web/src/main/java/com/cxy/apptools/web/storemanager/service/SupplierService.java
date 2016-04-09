package com.cxy.apptools.web.storemanager.service;

import com.cxy.apptools.domain.storemanager.Cxysupplier;
import com.cxy.apptools.domain.storemanager.Cxysuppliercategory;
import com.cxy.apptools.web.storemanager.vo.page.beans.CategoryLeafNode;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2015/12/18.
 */
public interface SupplierService {
    List<Cxysuppliercategory> queryAllValues();

    Map<Integer,List<CategoryLeafNode>> querySupplierTree();

    String deleteSupplierOrSupplierCategory(int id,int type);

    String addSupplierOrSupplierCategory(String name,int suppliercategoryid,int type);

    String selectSupplier(int id);

    String rename(int id,String name,int type);

    String updateSupplier(Cxysupplier cxysupplier);
}
