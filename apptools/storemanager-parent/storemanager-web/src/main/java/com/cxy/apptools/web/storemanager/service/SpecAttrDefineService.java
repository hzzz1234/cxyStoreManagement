package com.cxy.apptools.web.storemanager.service;

import com.cxy.apptools.domain.storemanager.Cxyspecattr;
import com.cxy.apptools.domain.storemanager.Cxyspecattrtype;
import com.cxy.apptools.domain.storemanager.Cxyspecattrvalue;

import java.util.List;

/**
 * Created by zhen.huaz on 2016/2/5.
 */
public interface SpecAttrDefineService {
    List<Cxyspecattrtype> getAllSpecTypeValues();

    int insertSpecAttr(Cxyspecattr cxyspecattr,List<Cxyspecattrvalue> cxyspecattrvalues);

    int deleteSpecAttr(int cxyspecattrid);

    int deleteSpecAttrValue(int cxyspecattrvalueid);
}
