package com.cxy.apptools.persistence.storemanager.query;

import com.cxy.apptools.common.beans.Page;
import com.cxy.apptools.persistence.storemanager.enums.OrderTypeIndex;

/**
 * Created by Administrator on 2015/12/14.
 */
 class Basequery {
    private String orderField;
    private OrderTypeIndex ordertype = OrderTypeIndex.DESC; //ASC DESC
    private Page page = new Page();

    private String searchCondition;


    public String getSearchCondition() {
        return searchCondition;
    }

    public void setSearchCondition(String searchCondition) {
        this.searchCondition = searchCondition;
    }

    public String getOrderField() {
        return orderField;
    }

    public void setOrderField(String orderField) {
        this.orderField = orderField;
    }

    public Page getPage() {
        return page;
    }

    public void setPage(Page page) {
        this.page = page;
    }

    public OrderTypeIndex getOrdertype() {
        return ordertype;
    }

    public void setOrdertype(OrderTypeIndex ordertype) {
        this.ordertype = ordertype;
    }
}
