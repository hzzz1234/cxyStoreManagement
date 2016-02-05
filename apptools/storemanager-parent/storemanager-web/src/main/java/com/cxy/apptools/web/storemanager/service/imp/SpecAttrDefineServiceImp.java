package com.cxy.apptools.web.storemanager.service.imp;

import com.cxy.apptools.domain.storemanager.Cxyspecattr;
import com.cxy.apptools.domain.storemanager.Cxyspecattrtype;
import com.cxy.apptools.domain.storemanager.Cxyspecattrvalue;
import com.cxy.apptools.persistence.storemanager.dao.CxyspecattrMapper;
import com.cxy.apptools.persistence.storemanager.dao.CxyspecattrtypeMapper;
import com.cxy.apptools.web.storemanager.service.SpecAttrDefineService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by zhen.huaz on 2016/2/5.
 */
public class SpecAttrDefineServiceImp implements SpecAttrDefineService{
    @Autowired
    private CxyspecattrtypeMapper cxyspecattrtypeMapper;
    @Autowired
    private CxyspecattrMapper cxyspecattrMapper;

    public List<Cxyspecattrtype> getAllSpecTypeValues() {
        return cxyspecattrtypeMapper.getAllValues();
    }

    public int insertSpecAttr(Cxyspecattr cxyspecattr, List<Cxyspecattrvalue> cxyspecattrvalues) {

        cxyspecattrMapper.insert(cxyspecattr);


        return 0;
    }

    public int deleteSpecAttr(int cxyspecattrid) {
        return 0;
    }

    public int deleteSpecAttrValue(int cxyspecattrvalueid) {
        return 0;
    }


}
