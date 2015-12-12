package com.cxy.apptools.domain.storemanager;

public class Cxyspecattrtype {
    private Integer speclattrtypeid;

    private String speclattrtypename;

    private Integer deleted;

    public Integer getSpeclattrtypeid() {
        return speclattrtypeid;
    }

    public void setSpeclattrtypeid(Integer speclattrtypeid) {
        this.speclattrtypeid = speclattrtypeid;
    }

    public String getSpeclattrtypename() {
        return speclattrtypename;
    }

    public void setSpeclattrtypename(String speclattrtypename) {
        this.speclattrtypename = speclattrtypename == null ? null : speclattrtypename.trim();
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }
}