package com.cxy.apptools.web.storemanager.service.imp;

import com.cxy.apptools.domain.storemanager.Cxypurchaseorder;
import com.cxy.apptools.domain.storemanager.Cxypurchaseorderdetail;
import com.cxy.apptools.persistence.storemanager.dao.CxypurchaseorderMapper;
import com.cxy.apptools.persistence.storemanager.dao.CxypurchaseorderdetailMapper;
import com.cxy.apptools.web.storemanager.service.PurchaseOrderDetailService;
import com.cxy.apptools.web.storemanager.vo.page.PurchaseOrderDetailVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2016/3/12.
 */
@Service("purchaseOrderDetailService")
public class PurchaseOrderDetailServiceImp implements PurchaseOrderDetailService{
    @Autowired
    private CxypurchaseorderMapper cxypurchaseorderMapper;
    @Autowired
    private CxypurchaseorderdetailMapper cxypurchaseorderdetailMapper;

    public void  getPurchaseorderInfo(Integer id,PurchaseOrderDetailVo purchaseOrderDetailVo) {
        Cxypurchaseorder cxypurchaseorder = cxypurchaseorderMapper.selectByPrimaryKey(id);
        List<Cxypurchaseorderdetail> cxypurchaseorderdetails = cxypurchaseorderdetailMapper.selectAllByOrderId(id);

        purchaseOrderDetailVo.setCxypurchaseorder(cxypurchaseorder);
        purchaseOrderDetailVo.setCxypurchaseorderdetails(cxypurchaseorderdetails);
    }
}
