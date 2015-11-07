package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxywarehouseindetail {
    private Integer warehouseindetailid;

    private Integer warehouseinid;

    private Integer productid;

    private String placeforstore;

    private String comment;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getWarehouseindetailid() {
        return warehouseindetailid;
    }

    public void setWarehouseindetailid(Integer warehouseindetailid) {
        this.warehouseindetailid = warehouseindetailid;
    }

    public Integer getWarehouseinid() {
        return warehouseinid;
    }

    public void setWarehouseinid(Integer warehouseinid) {
        this.warehouseinid = warehouseinid;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public String getPlaceforstore() {
        return placeforstore;
    }

    public void setPlaceforstore(String placeforstore) {
        this.placeforstore = placeforstore == null ? null : placeforstore.trim();
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