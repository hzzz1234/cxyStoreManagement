package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.web.storemanager.vo.page.ProductDefineVo;
import com.cxy.apptools.web.storemanager.vo.page.SpecAttrDefineVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2015/12/12.
 */
@Controller
@RequestMapping("/metaDefine")
public class MetaDefineController {
    @RequestMapping("productDefine")
    public ModelAndView productDefine(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("productDefine");
        ProductDefineVo productDefineVo = new ProductDefineVo();
        productDefineVo.init("left_product_define","产品定义");
        mv.addObject("basevo",productDefineVo);
        return mv;
    }

    @RequestMapping("specAttrDefine")
    public ModelAndView specAttrDefine(){
        ModelAndView mv = new ModelAndView();
        SpecAttrDefineVo specAttrDefineVo = new SpecAttrDefineVo();
        specAttrDefineVo.init("left_spec_attr_define","特殊类型定义");
        mv.setViewName("specAttrDefine");
        mv.addObject("basevo",specAttrDefineVo);
        return mv;
    }


}
