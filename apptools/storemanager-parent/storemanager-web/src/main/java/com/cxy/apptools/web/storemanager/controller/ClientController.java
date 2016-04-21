package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.domain.storemanager.Cxyclient;
import com.cxy.apptools.web.storemanager.vo.page.ClientDefineVo;
import com.cxy.apptools.web.storemanager.service.ClientService;
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
@RequestMapping("/client")
public class ClientController {
    @Resource
    private ClientService clientService;

    @RequestMapping("clientDefine")
    public ModelAndView clientDefine(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("clientDefine");
        ClientDefineVo clientDefineVo = new ClientDefineVo();
        clientDefineVo.init("left_client_define","客户定义");
        clientDefineVo.setClientTree(clientService.queryClientTree());
        mv.addObject("basevo", clientDefineVo);
        return mv;
    }
    @ResponseBody
    @RequestMapping("deletenode")
    public String deletenode(int id,int t){

        return clientService.deleteClientOrClientCategory(id, t);
    }

    @ResponseBody
    @RequestMapping("addnode")
    public String addnode(String name,int id,int t){
        return clientService.addClientOrClientCategory(name, id, t);

    }

    @ResponseBody
    @RequestMapping("viewclient")
    public String viewclient(int id){
        return clientService.selectClient(id);
    }

    @ResponseBody
    @RequestMapping("updateclient")
    public String updateclient(Cxyclient cxyclient){
        return clientService.updateClient(cxyclient);
    }

    @ResponseBody
    @RequestMapping("rename")
    public String rename(int id,String name,int t){
        return clientService.rename(id,name,t);
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));   //true:允许输入空值，false:不能为空值
    }
}
