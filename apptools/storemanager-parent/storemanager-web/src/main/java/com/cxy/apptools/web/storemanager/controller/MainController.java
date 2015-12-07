package com.cxy.apptools.web.storemanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2015/12/2.
 */
@Controller

public class MainController {

    @RequestMapping("/Main")
    public ModelAndView view() {
        ModelAndView mv = new ModelAndView();  //设置返回页面逻辑名,不带页面名后缀
        mv.setViewName("main");
        return mv;
    }

    @RequestMapping("/test")
    public ModelAndView test() {
        ModelAndView mv = new ModelAndView();  //设置返回页面逻辑名,不带页面名后缀
        mv.setViewName("test");
        return mv;
    }
}
