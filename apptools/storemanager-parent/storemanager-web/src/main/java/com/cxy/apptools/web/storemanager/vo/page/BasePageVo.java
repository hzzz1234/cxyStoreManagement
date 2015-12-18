package com.cxy.apptools.web.storemanager.vo.page;

/**
 * Created by Administrator on 2015/12/12.
 */
public abstract class BasePageVo {

    //左边栏选中设置
    private String leftsideIdentifier = "leftsideIdentifier";
    //面包屑名字
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
