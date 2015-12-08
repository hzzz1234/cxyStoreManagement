package com.cxy.apptools.web.storemanager.service.imp.OutInManagentServiceImp;

import com.cxy.apptools.domain.storemanager.Cxyclient;
import com.cxy.apptools.persistence.storemanager.dao.CxyclientMapper;
import com.cxy.apptools.web.storemanager.service.OutInManagementServiceIntface.OutManagementSerice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Lenovo on 2015/12/7.
 */
@Service("OutManagementSerice")
public class OutManagementSericeImp implements OutManagementSerice {

    @Autowired
    private CxyclientMapper cxyclientMapper;
    public List<Cxyclient> GetAllCxyclients() {
        return cxyclientMapper.GetAllCxyclients();
    }

    public int InsertCxyclients(List<Cxyclient> cxyclients) {
        return 0;
    }
}
