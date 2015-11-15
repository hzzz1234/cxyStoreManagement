package com.cxy.apptools.web.storemanager.service.imp;

import com.cxy.apptools.domain.storemanager.Cxyclient;
import com.cxy.apptools.web.storemanager.service.TestService;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/11/15.
 */

@Service("TestService")
public class TestServiceImp implements TestService {

    public String test() {
        return new Cxyclient().toString();
    }
}
