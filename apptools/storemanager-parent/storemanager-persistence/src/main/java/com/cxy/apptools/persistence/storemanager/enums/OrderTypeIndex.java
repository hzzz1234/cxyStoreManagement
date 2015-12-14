package com.cxy.apptools.persistence.storemanager.enums;

/**
 * Created by Administrator on 2015/12/15.
 */
public enum OrderTypeIndex {
    ASC("asc"),DESC("desc");
    private String name;
    private OrderTypeIndex(String name){
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
