package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxyclientcategory {
    private Integer clientcategoryid;

    private String clientcategoryname;

    private Integer seq;

    private Integer pcategoryid;

    private Integer deleted;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getClientcategoryid() {
        return clientcategoryid;
    }

    public void setClientcategoryid(Integer clientcategoryid) {
        this.clientcategoryid = clientcategoryid;
    }

    public String getClientcategoryname() {
        return clientcategoryname;
    }

    public void setClientcategoryname(String clientcategoryname) {
        this.clientcategoryname = clientcategoryname == null ? null : clientcategoryname.trim();
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