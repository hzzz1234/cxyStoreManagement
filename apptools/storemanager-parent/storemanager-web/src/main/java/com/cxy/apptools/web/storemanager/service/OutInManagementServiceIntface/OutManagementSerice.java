package com.cxy.apptools.web.storemanager.service.OutInManagementServiceIntface;

import com.cxy.apptools.domain.storemanager.Cxyclient;

import java.util.List;

/**
 * Created by Lenovo on 2015/12/7.
 */

public interface OutManagementSerice {
    public List<Cxyclient> GetAllCxyclients();
    public int InsertCxyclients(List<Cxyclient> cxyclients);

}
