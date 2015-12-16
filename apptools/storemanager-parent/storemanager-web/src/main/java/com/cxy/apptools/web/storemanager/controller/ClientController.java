package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.web.storemanager.vo.page.ClientDefineVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2015/12/17.
 */
@Controller
@RequestMapping("/client")
public class ClientController {
    @RequestMapping("clientDefine")
    public ModelAndView clientDefine(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("clientDefine");
        ClientDefineVo clientDefineVo = new ClientDefineVo();
        clientDefineVo.init("left_client_define","客户定义");
        mv.addObject("basevo",clientDefineVo);
        return mv;
    }
}
