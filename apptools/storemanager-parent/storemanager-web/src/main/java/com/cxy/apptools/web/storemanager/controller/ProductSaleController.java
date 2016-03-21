package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.domain.storemanager.CxyOrderSum;
import com.cxy.apptools.web.storemanager.service.ProductInStoreService;
import com.cxy.apptools.web.storemanager.service.ProductSaleService;
import com.cxy.apptools.web.storemanager.vo.page.ProductInStoreVo;
import com.cxy.apptools.web.storemanager.vo.page.ProductPurchaseVo;
import com.cxy.apptools.web.storemanager.vo.page.ProductSaleVo;
import com.cxy.apptools.web.storemanager.vo.page.SupplierDefineVo;
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
 * Created by songbo on 2015/12/22.
 */
@Controller
@RequestMapping("/productsale")
public class ProductSaleController {

    @Resource
    private ProductSaleService orderService;
//    @RequestMapping("sale")
//    public ModelAndView view(){
//        ModelAndView mv = new ModelAndView();
//        mv.setViewName("productSale");
//        ProductPurchaseVo productPurchaseVo = new ProductPurchaseVo();
//        productPurchaseVo.init("product_sale","售卖列表");
//        //supplierDefineVo.setCxysuppliercategoryList(supplierService.queryAllValues());
//        mv.addObject("basevo",productPurchaseVo);
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
    @RequestMapping("saleDeleteOne")
    public boolean deleteOneOrder(int id){
        log.info("方法deleteOneOrder，參數id="+id);
        return orderService.deleteOneSellOrder(id);
    }
    @ResponseBody
    @RequestMapping("saleDeleteMulti")
    public boolean deleteMultiOrder(String ids){
        log.info("方法deleteOneOrder，參數ids="+ids);
        if(ids==null){
            return false;
        }
        String[] idArray=ids.split(",");
        List<Integer> idList=ToList(idArray);

        return orderService.deleteMultiSellOrders(idList);
    }


    @RequestMapping("saleQueryLikeKeys")
    public  ModelAndView queryiOrdersByKeys(String keys,String startNum,String pageSize){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("productSale");
        ProductSaleVo productSaleVo = new ProductSaleVo();
        productSaleVo.init("product_sale", "售卖列表");
        mv.addObject("basevo",productSaleVo);
        CxyOrderSum records=orderService.GetSellOrdersByKeys(keys,(Integer.parseInt(startNum)-1),Integer.parseInt(pageSize));
        log.info(productSaleVo.toString());
        mv.addObject("records",records.orders.size()==0?productSaleVo:records.orders);
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
