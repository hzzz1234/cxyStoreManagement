package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.web.storemanager.vo.page.PurchaseOrderDetailVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2016/3/10.
 */
@Controller
@RequestMapping("/productpurchasedetail")
public class PurchaseOrderDetailController {
    @RequestMapping("/{id}")
    public ModelAndView view(@PathVariable Integer id){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("purchaseorderdetail");
        PurchaseOrderDetailVo  purchaseOrderDetailVo = new PurchaseOrderDetailVo();
        if(id==0){
            purchaseOrderDetailVo.setBarname("采购订单");
        }else{
            purchaseOrderDetailVo.setBarname("采购订单"+id);
        }

        mv.addObject("basevo",purchaseOrderDetailVo);
        return mv;
    }
}
