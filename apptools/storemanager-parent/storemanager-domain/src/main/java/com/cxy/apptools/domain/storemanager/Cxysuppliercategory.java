package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxysuppliercategory {
    private Integer suppliercategoryid;

    private String suppliercategoryname;

    private Integer seq;

    private Integer pcategoryid;

    private Integer deleted;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getSuppliercategoryid() {
        return suppliercategoryid;
    }

    public void setSuppliercategoryid(Integer suppliercategoryid) {
        this.suppliercategoryid = suppliercategoryid;
    }

    public String getSuppliercategoryname() {
        return suppliercategoryname;
    }

    public void setSuppliercategoryname(String suppliercategoryname) {
        this.suppliercategoryname = suppliercategoryname == null ? null : suppliercategoryname.trim();
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public Integer getPcategoryid() {
        return pcategoryid;
    }

    public void setPcategoryid(Integer pcategoryid) {
        this.pcategoryid = pcategoryid;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
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