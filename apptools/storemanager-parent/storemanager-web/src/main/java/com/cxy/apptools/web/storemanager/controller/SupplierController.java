package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.domain.storemanager.Cxysupplier;
import com.cxy.apptools.web.storemanager.service.SupplierService;
import com.cxy.apptools.web.storemanager.vo.page.SupplierDefineVo;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

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
        supplierDefineVo.setSupplierTree(supplierService.querySupplierTree());
        mv.addObject("basevo",supplierDefineVo);
        return mv;
    }

    @ResponseBody
    @RequestMapping("deletenode")
    public String deletenode(int id,int t){

        return supplierService.deleteSupplierOrSupplierCategory(id,t);
    }

    @ResponseBody
    @RequestMapping("addnode")
    public String addnode(String name,int id,int t){
        return supplierService.addSupplierOrSupplierCategory(name,id,t);

    }

    @ResponseBody
    @RequestMapping("viewsupplier")
    public String viewsupplier(int id){
        return supplierService.selectSupplier(id);
    }

    @ResponseBody
    @RequestMapping("updatesupplier")
    public String updatesupplier(Cxysupplier cxysupplier){
        return supplierService.updateSupplier(cxysupplier);
    }

    @ResponseBody
    @RequestMapping("rename")
    public String rename(int id,String name,int t){
        return supplierService.rename(id,name,t);
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));   //true:允许输入空值，false:不能为空值
    }
}
