package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxyusers {
    private Integer id;

    private String username;

    private String password;

    private Integer enabled;

    private Date createTime;

    private Date datechangLasttime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getEnabled() {
        return enabled;
    }

    public void setEnabled(Integer enabled) {
        this.enabled = enabled;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getDatechangLasttime() {
        return datechangLasttime;
    }

    public void setDatechangLasttime(Date datechangLasttime) {
        this.datechangLasttime = datechangLasttime;
    }
}