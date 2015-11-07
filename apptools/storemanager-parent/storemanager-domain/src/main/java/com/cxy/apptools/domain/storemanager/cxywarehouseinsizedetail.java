package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class cxywarehouseinsizedetail {
    private Integer warehouseinproductsizedetailid;

    private Integer warehouseindetailid;

    private Integer sizedetailid;

    private Integer num;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getWarehouseinproductsizedetailid() {
        return warehouseinproductsizedetailid;
    }

    public void setWarehouseinproductsizedetailid(Integer warehouseinproductsizedetailid) {
        this.warehouseinproductsizedetailid = warehouseinproductsizedetailid;
    }

    public Integer getWarehouseindetailid() {
        return warehouseindetailid;
    }

    public void setWarehouseindetailid(Integer warehouseindetailid) {
        this.warehouseindetailid = warehouseindetailid;
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