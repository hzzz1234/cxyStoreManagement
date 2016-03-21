package com.cxy.apptools.persistence.storemanager.query;

import java.util.List;

/**
 * Created by songbo on 2016/3/11.
 */
public class Cxywarehouseinquery extends Basequery {
    private List<String> searchFields;

    public List<String> getSearchFields() {
        return searchFields;
    }

    public void setSearchFields(List<String> searchFields) {
        this.searchFields = searchFields;
    }
}
