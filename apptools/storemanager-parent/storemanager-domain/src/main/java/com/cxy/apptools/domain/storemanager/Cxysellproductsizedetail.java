package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxysellproductsizedetail {
    private Integer selldetailid;

    private Integer specattrvalueid;

    private Integer amount;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getSelldetailid() {
        return selldetailid;
    }

    public void setSelldetailid(Integer selldetailid) {
        this.selldetailid = selldetailid;
    }

    public Integer getSpecattrvalueid() {
        return specattrvalueid;
    }

    public void setSpecattrvalueid(Integer specattrvalueid) {
        this.specattrvalueid = specattrvalueid;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
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