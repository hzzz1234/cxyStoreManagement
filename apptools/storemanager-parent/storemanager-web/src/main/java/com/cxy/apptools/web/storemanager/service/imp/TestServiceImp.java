package com.cxy.apptools.web.storemanager.service.imp;

import com.cxy.apptools.domain.storemanager.Cxycurrency;
import com.cxy.apptools.persistence.storemanager.dao.CxycurrencyMapper;
import com.cxy.apptools.web.storemanager.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2015/11/15.
 */

@Service("TestService")
public class TestServiceImp implements TestService {

    @Autowired
    private CxycurrencyMapper cxycurrencyMapper;
    public List<Cxycurrency> test() {
        return cxycurrencyMapper.selectAllValues();
    }
}
