package com.cxy.apptools.web.storemanager.vo.page;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorder;
import com.cxy.apptools.domain.storemanager.Cxypurchaseorderdetail;

import java.util.List;

/**
 * Created by Administrator on 2016/3/10.
 */
public class PurchaseOrderDetailVo extends BasePageVo{
    private int id;

    private Cxypurchaseorder cxypurchaseorder;
    private List<Cxypurchaseorderdetail> cxypurchaseorderdetails;

    public Cxypurchaseorder getCxypurchaseorder() {
        return cxypurchaseorder;
    }

    public void setCxypurchaseorder(Cxypurchaseorder cxypurchaseorder) {
        this.cxypurchaseorder = cxypurchaseorder;
    }

    public List<Cxypurchaseorderdetail> getCxypurchaseorderdetails() {
        return cxypurchaseorderdetails;
    }

    public void setCxypurchaseorderdetails(List<Cxypurchaseorderdetail> cxypurchaseorderdetails) {
        this.cxypurchaseorderdetails = cxypurchaseorderdetails;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
