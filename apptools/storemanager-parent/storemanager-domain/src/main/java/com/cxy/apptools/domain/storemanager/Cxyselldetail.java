package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxyselldetail {
    private Integer selldetailid;

    private Integer sellid;

    private Integer productid;

    private String comment;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getSelldetailid() {
        return selldetailid;
    }

    public void setSelldetailid(Integer selldetailid) {
        this.selldetailid = selldetailid;
    }

    public Integer getSellid() {
        return sellid;
    }

    public void setSellid(Integer sellid) {
        this.sellid = sellid;
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