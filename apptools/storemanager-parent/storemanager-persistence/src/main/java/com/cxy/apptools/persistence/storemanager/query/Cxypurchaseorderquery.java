package com.cxy.apptools.persistence.storemanager.query;

import java.util.List;

/**
 * Created by Administrator on 2015/12/15.
 */
public class Cxypurchaseorderquery extends Basequery{
    private List<String> searchFields;

    public List<String> getSearchFields() {
        return searchFields;
    }

    public void setSearchFields(List<String> searchFields) {
        this.searchFields = searchFields;
    }
}
