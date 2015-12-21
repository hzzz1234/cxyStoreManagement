package com.cxy.apptools.web.storemanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by songbo on 2015/12/22.
 */
@Controller
@RequestMapping("/productsale")
public class ProductSaleController {

    @RequestMapping("sale")
    public ModelAndView view(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("productSale");

        return mv;
    }
}
