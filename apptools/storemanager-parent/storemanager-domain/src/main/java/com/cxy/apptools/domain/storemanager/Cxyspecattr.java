package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxyspecattr {
    private Integer specattrid;

    private String specattrname;

    private Integer specattrtypeid;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getSpecattrid() {
        return specattrid;
    }

    public void setSpecattrid(Integer specattrid) {
        this.specattrid = specattrid;
    }

    public String getSpecattrname() {
        return specattrname;
    }

    public void setSpecattrname(String specattrname) {
        this.specattrname = specattrname == null ? null : specattrname.trim();
    }

    public Integer getSpecattrtypeid() {
        return specattrtypeid;
    }

    public void setSpecattrtypeid(Integer specattrtypeid) {
        this.specattrtypeid = specattrtypeid;
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