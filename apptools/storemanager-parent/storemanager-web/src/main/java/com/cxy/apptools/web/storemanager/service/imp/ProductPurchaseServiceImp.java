package com.cxy.apptools.web.storemanager.service.imp;


import com.cxy.apptools.common.beans.Page;
import com.cxy.apptools.domain.storemanager.CxypurchaseorderSum;
import com.cxy.apptools.persistence.storemanager.enums.OrderTypeIndex;
import com.cxy.apptools.persistence.storemanager.query.Cxypurchaseorderquery;
import com.cxy.apptools.web.storemanager.util.FormatConverse;
import com.cxy.apptools.domain.storemanager.Cxypurchaseorder;
import com.cxy.apptools.persistence.storemanager.dao.CxypurchaseorderMapper;
import com.cxy.apptools.persistence.storemanager.enums.OrderStatus;
import com.cxy.apptools.web.storemanager.service.ProductPurchaseService;
import com.cxy.apptools.web.storemanager.vo.page.ProductPurchaseVo;
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
    public CxypurchaseorderMapper cxypurchaseorder;

    public List<ProductPurchaseVo> GetAllOrders() {
        return ModelConverse(0,cxypurchaseorder.queryAllorders());
    }

    public boolean deleteOneOrder(int id) {

        int count=cxypurchaseorder.deleteByPrimaryKey(id);
        if(count>0){
            return true;
        }else {
            return false;
        }
    }

    public boolean deleteMultiOrder(List<Integer> ids) {
        int count=0;
        for(int i:ids){
            cxypurchaseorder.deleteByPrimaryKey(i);
            count++;
        }
        //int count=cxypurchaseorder.deleteMultiorders(ids);
        if(count>0){
          return true;
        }else {
            return false;
        }

    }

    public List<ProductPurchaseVo> GetOrdersByKeys(String keys,int startNum,int pageSize) {
        Cxypurchaseorderquery keysModel=new Cxypurchaseorderquery();
        keysModel.setSearchCondition(keys);
        keysModel.setOrderField("create_time");
        keysModel.setOrdertype(OrderTypeIndex.DESC);
        List<String> searchFields=new ArrayList<String>();
        searchFields.add("pouid");
        keysModel.setSearchFields(searchFields);
        CxypurchaseorderSum sum=cxypurchaseorder.queryCxySumByBasequery(keysModel);
        Page page=new Page();
        page.setPageSize((long)pageSize);
        page.setStartItem((long)startNum);
        keysModel.setPage(page);

        return ModelConverse(sum.Sum,cxypurchaseorder.queryCxypurchaseordersByBasequery(keysModel));

    }

    public static List<ProductPurchaseVo> ModelConverse(int sum,List<Cxypurchaseorder> cxyorders)
    {
        List<ProductPurchaseVo> list=new ArrayList<ProductPurchaseVo>();

       for (Cxypurchaseorder order:cxyorders)
       {
           ProductPurchaseVo model=new ProductPurchaseVo();
           model.orderSum=sum;
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
