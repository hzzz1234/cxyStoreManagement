package com.cxy.apptools.web.storemanager.vo.page;

import com.cxy.apptools.web.storemanager.vo.page.beans.CategoryLeafNode;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2015/12/17.
 */
public class SupplierDefineVo extends BasePageVo{
    Map<Integer,List<CategoryLeafNode>> supplierTree ;

    public Map<Integer, List<CategoryLeafNode>> getSupplierTree() {
        return supplierTree;
    }

    public void setSupplierTree(Map<Integer, List<CategoryLeafNode>> supplierTree) {
        this.supplierTree = supplierTree;
    }
}
