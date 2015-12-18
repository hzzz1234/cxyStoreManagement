package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.web.storemanager.service.SupplierService;
import com.cxy.apptools.web.storemanager.vo.page.SupplierDefineVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2015/12/17.
 */
@Controller
@RequestMapping("/supplier")
public class SupplierController {
    @Resource
    private SupplierService supplierService;

    @RequestMapping("supplierDefine")
    public ModelAndView supplierDefine(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("supplierDefine");
        SupplierDefineVo supplierDefineVo = new SupplierDefineVo();
        supplierDefineVo.init("left_supplier_define","供应商定义");
        supplierDefineVo.setCxysuppliercategoryList(supplierService.queryAllValues());
        mv.addObject("basevo",supplierDefineVo);
        return mv;
    }
}
