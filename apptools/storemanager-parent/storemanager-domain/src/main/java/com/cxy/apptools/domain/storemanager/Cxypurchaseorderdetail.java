package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxypurchaseorderdetail {
    private Integer purchaseorderdetailid;

    private Integer purchaseorderid;

    private Integer productid;

    private String comment;

    private Integer seq;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getPurchaseorderdetailid() {
        return purchaseorderdetailid;
    }

    public void setPurchaseorderdetailid(Integer purchaseorderdetailid) {
        this.purchaseorderdetailid = purchaseorderdetailid;
    }

    public Integer getPurchaseorderid() {
        return purchaseorderid;
    }

    public void setPurchaseorderid(Integer purchaseorderid) {
        this.purchaseorderid = purchaseorderid;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
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