package com.cxy.apptools.web.storemanager.service.imp;

import com.cxy.apptools.com.utilitys.FormatConverse;
import com.cxy.apptools.domain.storemanager.Cxypurchaseorder;
import com.cxy.apptools.persistence.storemanager.dao.CxypurchaseorderMapper;
import com.cxy.apptools.persistence.storemanager.enums.OrderStatus;
import com.cxy.apptools.web.storemanager.service.ProductPurchaseService;
import com.cxy.apptools.web.storemanager.service.models.ProductPurchaseModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by songbo on 2016/1/4.
 */
@Service("ProductPurchaseService")
public class ProductPurchaseServiceImp implements ProductPurchaseService {

    @Autowired
    private CxypurchaseorderMapper cxypurchaseorder;
    @Override
    public List<ProductPurchaseModel> GetAllOrders() {
        return ModelConverse(cxypurchaseorder.queryAllorders());
    }
    public static List<ProductPurchaseModel> ModelConverse(List<Cxypurchaseorder> cxyorders)
    {
        List<ProductPurchaseModel> list=new ArrayList<ProductPurchaseModel>();

       for (Cxypurchaseorder order:cxyorders)
       {
           ProductPurchaseModel model=new ProductPurchaseModel();
           model.setId(order.getId());
           model.setComment(order.getComment());
           model.setCurrency(order.getCurrency());
           model.setPayamount(order.getPayamount());
           model.setPouid(order.getPouid());
           model.setQuantity(order.getQuantity());
           model.setRepsor(order.getRepsor());
           model.setShopid(order.getShopid());
           model.setStatus(GetOrderSatausName(order.getStatus()));
           model.setCreateTime(FormatConverse.ConverseDateFormat(order.getCreateTime(),"yyyy-mm-dd hh-mm-ss"));
           model.setPddate(FormatConverse.ConverseDateFormat(order.getPddate(),"yyyy-mm-dd hh-mm-ss"));
           model.setDatachangeLasttime( FormatConverse.ConverseDateFormat(order.getDatachangeLasttime(),"yyyy-mm-dd hh-mm-ss"));
           model.setRedate(FormatConverse.ConverseDateFormat(order.getRedate(),"yyyy-mm-dd hh-mm-ss"));
           model.setSupplierid(order.getSupplierid());
           model.setTotalamout(order.getTotalamout());
           list.add(model);

       }

        return list;
    }
    private static String GetOrderSatausName(int statusnum)
    {
        return OrderStatus.getName(statusnum);
    }
}
