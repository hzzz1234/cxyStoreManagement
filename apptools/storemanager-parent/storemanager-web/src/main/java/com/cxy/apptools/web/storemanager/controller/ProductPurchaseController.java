package com.cxy.apptools.web.storemanager.controller;

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

        return mv;
    }
}
