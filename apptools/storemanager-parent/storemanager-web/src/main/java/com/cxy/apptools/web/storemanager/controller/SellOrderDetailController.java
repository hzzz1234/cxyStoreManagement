package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.web.storemanager.service.PurchaseOrderDetailService;
import com.cxy.apptools.web.storemanager.vo.page.PurchaseOrderDetailVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/3/10.
 */
@Controller
@RequestMapping("/productselldetail")
public class SellOrderDetailController {

    @Resource
    private PurchaseOrderDetailService purchaseOrderDetailService;

    @RequestMapping("/{id}")
    public ModelAndView view(@PathVariable Integer id){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("sellorderdetail");
        PurchaseOrderDetailVo  purchaseOrderDetailVo = new PurchaseOrderDetailVo();
        purchaseOrderDetailVo.setBarname("售卖订单号");
        purchaseOrderDetailService.getPurchaseorderInfo(id,purchaseOrderDetailVo);
        mv.addObject("basevo",purchaseOrderDetailVo);
        return mv;
    }
}
