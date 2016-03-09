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
    @RequestMapping("purchase")
    public ModelAndView view(String keys){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("productPurchase");
        ProductPurchaseVo productPurchaseVo = new ProductPurchaseVo();
        productPurchaseVo.init("product_purchase","采购列表");
        mv.addObject("basevo",productPurchaseVo);
        List<ProductPurchaseVo> records=orderService.GetOrdersByKeys("",0,10);
        log.info(productPurchaseVo.toString());
         mv.addObject("records",records);
        mv.addObject("keywords",keys);
        mv.addObject("startIndex",records.size()==0?"0":"1");
        mv.addObject("endIndex",records.size()<10?records.size():10);
        double temp=Math.ceil((double)records.get(0).orderSum/(double)10);
        mv.addObject("pageCount",(int)temp);
        return mv;
    }
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
        List<ProductPurchaseVo> records=orderService.GetOrdersByKeys(keys,Integer.parseInt(startNum),Integer.parseInt(pageSize));
        log.info(productPurchaseVo.toString());
        mv.addObject("records",records.size()==0?productPurchaseVo:records);
        mv.addObject("keywords",keys);
        mv.addObject("startIndex",records.size()==0?"0":"1");
        mv.addObject("endIndex",records.size());
        double temp=Math.ceil((double) records.get(0).orderSum / (double) 10);
        mv.addObject("pageCount",(int)temp);
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
