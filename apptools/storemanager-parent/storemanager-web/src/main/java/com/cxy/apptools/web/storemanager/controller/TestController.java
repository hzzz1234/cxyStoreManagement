package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.web.storemanager.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;


/**
 * Created by Administrator on 2015/11/12.
 */

@Controller             //此注解代表是控制器，不需要在xml中配置
@RequestMapping("/first")       //url
public class TestController {

    @Resource
    private TestService testService;

    @RequestMapping("hello")             //方法url
     public ModelAndView view() {
        ModelAndView mv = new ModelAndView();  //设置返回页面逻辑名,不带页面名后缀
        mv.addObject("message", "Hello World!");  //保存值到作用域中，key为msg
        mv.addObject("test", testService.test());  //保存值到作用域中，key为msg
        mv.setViewName("hello");
        return mv;
    }

    @ResponseBody
    @RequestMapping("hellojson")             //方法url
    public Object json() {
        ModelAndView mv = new ModelAndView();  //设置返回页面逻辑名,不带页面名后缀
        mv.addObject("message", "Hello World!");  //保存值到作用域中，key为msg
        mv.setViewName("hello");
        return mv;
    }
}
