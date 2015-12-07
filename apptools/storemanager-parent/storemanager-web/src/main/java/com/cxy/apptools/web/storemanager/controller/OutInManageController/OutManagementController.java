package com.cxy.apptools.web.storemanager.controller.OutInManageController;

import com.cxy.apptools.web.storemanager.service.OutInManagementServiceIntface.OutManagementSerice;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by Lenovo on 2015/12/7.
 */
@Controller
@RequestMapping("/OutInManagement")
public class OutManagementController {

    @Resource
    private OutManagementSerice outManagementSerice;
    @RequestMapping("OutManagement")
    public ModelAndView GetOutManagementView()
    {
        ModelAndView v=new ModelAndView();
        v.addObject("message","hello OutManagement:"+outManagementSerice.GetAllCxyclients().get(1).getContactname());
        v.setViewName("OutManagement");
        return v;
    }
}
