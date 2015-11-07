package com.cxy.apptools.domain.storemanager;

public class Cxycurrency {
    private Integer currencyid;

    private String currencyZh;

    private String currencyEn;

    public Integer getCurrencyid() {
        return currencyid;
    }

    public void setCurrencyid(Integer currencyid) {
        this.currencyid = currencyid;
    }

    public String getCurrencyZh() {
        return currencyZh;
    }

    public void setCurrencyZh(String currencyZh) {
        this.currencyZh = currencyZh == null ? null : currencyZh.trim();
    }

    public String getCurrencyEn() {
        return currencyEn;
    }

    public void setCurrencyEn(String currencyEn) {
        this.currencyEn = currencyEn == null ? null : currencyEn.trim();
    }
}