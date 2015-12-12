package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxyspecattrvalue {
    private Integer specattrvalueid;

    private String specattrvaluename;

    private String specattrvaluetext;

    private Integer specattrid;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getSpecattrvalueid() {
        return specattrvalueid;
    }

    public void setSpecattrvalueid(Integer specattrvalueid) {
        this.specattrvalueid = specattrvalueid;
    }

    public String getSpecattrvaluename() {
        return specattrvaluename;
    }

    public void setSpecattrvaluename(String specattrvaluename) {
        this.specattrvaluename = specattrvaluename == null ? null : specattrvaluename.trim();
    }

    public String getSpecattrvaluetext() {
        return specattrvaluetext;
    }

    public void setSpecattrvaluetext(String specattrvaluetext) {
        this.specattrvaluetext = specattrvaluetext == null ? null : specattrvaluetext.trim();
    }

    public Integer getSpecattrid() {
        return specattrid;
    }

    public void setSpecattrid(Integer specattrid) {
        this.specattrid = specattrid;
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