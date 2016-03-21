package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.persistence.storemanager.dao.CxypurchaseorderMapper;
import com.cxy.apptools.web.storemanager.service.ProductPurchaseService;
import com.cxy.apptools.web.storemanager.vo.page.ProductPurchaseVo;
import com.cxy.apptools.web.storemanager.vo.page.SupplierDefineVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by songbo on 2015/12/22.
 */
@Controller
@RequestMapping("/productpurchase")
public class ProductPurchaseController {

    private static Logger log= LoggerFactory.getLogger(ProductPurchaseController.class);
    @Resource
    private ProductPurchaseService orderService;

    @RequestMapping("purchaseForm")
    public ModelAndView FormView(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("productPurchaseForm");
        return mv;
    }
    @ResponseBody
    @RequestMapping("purchaseDeleteOne")
    public boolean deleteOneOrder(int id){
        log.info("方法deleteOneOrder，參數id="+id);
        return orderService.deleteOneOrder(id);
    }
    @ResponseBody
    @RequestMapping("purchaseDeleteMulti")
    public boolean deleteMultiOrder(String ids){
        log.info("方法deleteOneOrder，參數ids="+ids);
        if(ids==null){
            return false;
        }
        String[] idArray=ids.split(",");
        List<Integer> idList=ToList(idArray);

        return orderService.deleteMultiOrder(idList);
    }


    @RequestMapping("purchaseQueryLikeKeys")
    public  ModelAndView queryiOrdersByKeys(String keys,String startNum,String pageSize){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("productPurchase");
        ProductPurchaseVo productPurchaseVo = new ProductPurchaseVo();
        productPurchaseVo.setId(-1);
        productPurchaseVo.init("product_purchase","采购列表");
        mv.addObject("basevo",productPurchaseVo);
        List<ProductPurchaseVo> records=orderService.GetOrdersByKeys(keys,(Integer.parseInt(startNum)-1),Integer.parseInt(pageSize));
        log.info(productPurchaseVo.toString());
        mv.addObject("records",records.size()==0?productPurchaseVo:records);
        mv.addObject("keywords",keys);
        mv.addObject("startIndex",records.size()==0?0:startNum);
        mv.addObject("endIndex",records.size()==0?0:(records.size()<=Integer.parseInt(pageSize)?(Integer.parseInt(startNum)+records.size()-1):(Integer.parseInt(startNum)+Integer.parseInt(pageSize)-1)));
        double temp=Math.ceil((double) records.get(0).orderSum / (double) Integer.parseInt(pageSize));
        mv.addObject("pageCount",(int)temp);
        mv.addObject("pageSize",Integer.parseInt(pageSize));
        return mv;
    }
    private List<Integer> ToList(String[] strs){
        List<Integer> resoult= new ArrayList<Integer>();
        for(String a:strs){
            resoult.add(Integer.parseInt(a));
        }
        return resoult;
    }
}
