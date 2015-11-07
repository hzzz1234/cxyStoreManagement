package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxypurchaseorderproductsizedetail {
    private Integer productsizepurchaseorderid;

    private Integer purchaseorderdetailid;

    private Integer sizedetailid;

    private Integer num;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getProductsizepurchaseorderid() {
        return productsizepurchaseorderid;
    }

    public void setProductsizepurchaseorderid(Integer productsizepurchaseorderid) {
        this.productsizepurchaseorderid = productsizepurchaseorderid;
    }

    public Integer getPurchaseorderdetailid() {
        return purchaseorderdetailid;
    }

    public void setPurchaseorderdetailid(Integer purchaseorderdetailid) {
        this.purchaseorderdetailid = purchaseorderdetailid;
    }

    public Integer getSizedetailid() {
        return sizedetailid;
    }

    public void setSizedetailid(Integer sizedetailid) {
        this.sizedetailid = sizedetailid;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getDatachangeLasttime() {
        return datachangeLasttime;
    }

    public void setDatachangeLasttime(Date datachangeLasttime) {
        this.datachangeLasttime = datachangeLasttime;
    }
}