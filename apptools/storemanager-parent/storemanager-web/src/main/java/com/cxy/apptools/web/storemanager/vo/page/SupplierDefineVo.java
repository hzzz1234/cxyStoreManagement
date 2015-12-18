package com.cxy.apptools.web.storemanager.vo.page;

import com.cxy.apptools.domain.storemanager.Cxysuppliercategory;

import java.util.List;

/**
 * Created by Administrator on 2015/12/17.
 */
public class SupplierDefineVo extends BasePageVo{
    List<Cxysuppliercategory> cxysuppliercategoryList;

    public List<Cxysuppliercategory> getCxysuppliercategoryList() {
        return cxysuppliercategoryList;
    }

    public void setCxysuppliercategoryList(List<Cxysuppliercategory> cxysuppliercategoryList) {
        this.cxysuppliercategoryList = cxysuppliercategoryList;
    }
}
