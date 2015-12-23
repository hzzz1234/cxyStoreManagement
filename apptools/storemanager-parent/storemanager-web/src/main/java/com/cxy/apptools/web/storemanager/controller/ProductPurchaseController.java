package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.web.storemanager.vo.page.ProductPurchaseVo;
import com.cxy.apptools.web.storemanager.vo.page.SupplierDefineVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by songbo on 2015/12/22.
 */
@Controller
@RequestMapping("/productpurchase")
public class ProductPurchaseController {
    @RequestMapping("purchase")
    public ModelAndView view(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("productPurchase");
        ProductPurchaseVo productPurchaseVo = new ProductPurchaseVo();
        productPurchaseVo.init("product_purchase","采购列表");
        //supplierDefineVo.setCxysuppliercategoryList(supplierService.queryAllValues());
        mv.addObject("basevo",productPurchaseVo);
        return mv;
    }
}
