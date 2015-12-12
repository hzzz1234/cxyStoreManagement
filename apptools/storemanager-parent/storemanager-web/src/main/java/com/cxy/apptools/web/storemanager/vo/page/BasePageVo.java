package com.cxy.apptools.web.storemanager.vo.page;

/**
 * Created by Administrator on 2015/12/12.
 */
public abstract class BasePageVo {

    private String leftsideIdentifier = "leftsideIdentifier";
    private String barname = "barname";

    public void init(String leftsideIdentifier, String barname) {
        setLeftsideIdentifier(leftsideIdentifier);
        setBarname(barname);
    }
    public String getLeftsideIdentifier() {
        return leftsideIdentifier;
    }

    public void setLeftsideIdentifier(String leftsideIdentifier) {
        this.leftsideIdentifier = leftsideIdentifier;
    }

    public String getBarname() {
        return barname;
    }

    public void setBarname(String barname) {
        this.barname = barname;
    }
}
