package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.domain.storemanager.CxyOrderSum;
import com.cxy.apptools.web.storemanager.service.ProductInStoreService;
import com.cxy.apptools.web.storemanager.service.ProductPurchaseService;
import com.cxy.apptools.web.storemanager.vo.page.ProductInStoreVo;
import com.cxy.apptools.web.storemanager.vo.page.ProductPurchaseVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by songbo on 2015/12/20.
 */
@Controller
@RequestMapping("/productinstore")
public class ProductInStoreController {
    @Resource
    private ProductInStoreService orderService;
//    @RequestMapping("instore")
//    public ModelAndView view(){
//        ModelAndView mv = new ModelAndView();
//
//        mv.setViewName("productInStore");
//        ProductInStoreVo productInStoreVo = new ProductInStoreVo();
//        productInStoreVo.init("product_in_store","入库列表");
//        //supplierDefineVo.setCxysuppliercategoryList(supplierService.queryAllValues());
//        mv.addObject("basevo", productInStoreVo);
//        return mv;
//    }

    private static Logger log= LoggerFactory.getLogger(ProductPurchaseController.class);

    @RequestMapping("purchaseForm")
    public ModelAndView FormView(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("productPurchaseForm");
        return mv;
    }
    @ResponseBody
    @RequestMapping("houseInDeleteOne")
    public boolean deleteOneOrder(int id){
        log.info("方法deleteOneOrder，參數id="+id);
        return orderService.deleteOneHouseIn(id);
    }
    @ResponseBody
    @RequestMapping("houseInDeleteMulti")
    public boolean deleteMultiOrder(String ids){
        log.info("方法deleteOneOrder，參數ids="+ids);
        if(ids==null){
            return false;
        }
        String[] idArray=ids.split(",");
        List<Integer> idList=ToList(idArray);

        return orderService.deleteMultiWareHouseIn(idList);
    }

    @RequestMapping("houseInQueryLikeKeys")
    public  ModelAndView queryiOrdersByKeys(String keys,String startNum,String pageSize){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("productInStore");
        ProductInStoreVo productInStoreVo = new ProductInStoreVo();
        productInStoreVo.init("product_in_store","入库列表");
        mv.addObject("basevo",productInStoreVo);
        CxyOrderSum records=orderService.GetHouseInsByKeys(keys,(Integer.parseInt(startNum)-1),Integer.parseInt(pageSize));
        log.info(productInStoreVo.toString());
        mv.addObject("records",records.orders.size()==0?productInStoreVo:records.orders);
        mv.addObject("keywords",keys);
        mv.addObject("startIndex",records.orders.size()==0?0:startNum);
        mv.addObject("endIndex", records.orders.size()==0?0:(records.orders.size()<=Integer.parseInt(pageSize)?(Integer.parseInt(startNum)+records.orders.size()-1):(Integer.parseInt(startNum)+Integer.parseInt(pageSize)-1)));
        double temp=Math.ceil((double) records.Sum / (double) Integer.parseInt(pageSize));
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
