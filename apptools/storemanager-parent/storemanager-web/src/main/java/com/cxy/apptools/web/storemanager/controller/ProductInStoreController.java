package com.cxy.apptools.web.storemanager.controller;

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

        return mv;
    }

}
