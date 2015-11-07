package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxysellproductsizedetail {
    private Integer sellproductsizedetailid;

    private Integer selldetailid;

    private Integer sizedetailid;

    private Integer num;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getSellproductsizedetailid() {
        return sellproductsizedetailid;
    }

    public void setSellproductsizedetailid(Integer sellproductsizedetailid) {
        this.sellproductsizedetailid = sellproductsizedetailid;
    }

    public Integer getSelldetailid() {
        return selldetailid;
    }

    public void setSelldetailid(Integer selldetailid) {
        this.selldetailid = selldetailid;
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