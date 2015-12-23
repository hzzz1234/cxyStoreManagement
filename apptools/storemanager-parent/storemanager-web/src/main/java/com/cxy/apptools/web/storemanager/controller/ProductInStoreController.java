package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.web.storemanager.vo.page.ProductInStoreVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by songbo on 2015/12/20.
 */
@Controller
@RequestMapping("/productinstore")
public class ProductInStoreController {
    @RequestMapping("instore")
    public ModelAndView view(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("productInStore");
        ProductInStoreVo productInStoreVo = new ProductInStoreVo();
        productInStoreVo.init("product_in_store","商品入库");
        //supplierDefineVo.setCxysuppliercategoryList(supplierService.queryAllValues());
        mv.addObject("basevo", productInStoreVo);
        return mv;
    }

}
