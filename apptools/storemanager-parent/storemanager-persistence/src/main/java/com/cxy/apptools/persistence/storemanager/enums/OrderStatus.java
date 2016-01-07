package com.cxy.apptools.persistence.storemanager.enums;

/**
 * Created by songbo on 2016/1/6.
 */
public enum OrderStatus {
    ACTIVED("激活",1),IN_ACTIVED("锁定",0);

    // 成员变量
    private String name;
    private int index;

    // 构造方法
    private OrderStatus(String name, int index) {
        this.name = name;
        this.index = index;
    }

    // 普通方法
    public static String getName(int index) {
        for (OrderStatus c : OrderStatus.values()) {
            if (c.getIndex() == index) {
                return c.name;
            }
        }
        return null;
    }

    // get set 方法
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

}
