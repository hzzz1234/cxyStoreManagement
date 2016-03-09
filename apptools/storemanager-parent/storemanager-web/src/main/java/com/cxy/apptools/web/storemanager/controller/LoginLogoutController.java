package com.cxy.apptools.web.storemanager.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2015/12/20.
 */
@Controller
public class LoginLogoutController extends BaseController{

    private static final Logger log = LoggerFactory.getLogger(LoginLogoutController.class);
    @RequestMapping("/login")
    public ModelAndView login(@RequestParam(value="error",required = false) String error){
        ModelAndView mv = new ModelAndView();
        String msg = null;
//        if(!StringUtils.isEmpty(error)){
//            msg = "用户名和密码错，请重新输入！";
//         }
        mv.addObject("msg",msg);
        mv.setViewName("login");
        return mv;
    }
}
