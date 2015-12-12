package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxyproductrspecattr {
    private Integer productid;

    private Integer specattrid;

    private Integer deleted;

    private Date datachangeLasttime;

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public Integer getSpecattrid() {
        return specattrid;
    }

    public void setSpecattrid(Integer specattrid) {
        this.specattrid = specattrid;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    public Date getDatachangeLasttime() {
        return datachangeLasttime;
    }

    public void setDatachangeLasttime(Date datachangeLasttime) {
        this.datachangeLasttime = datachangeLasttime;
    }
}