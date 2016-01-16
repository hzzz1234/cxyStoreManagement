package com.cxy.apptools.web.storemanager.controller;

import com.cxy.apptools.web.storemanager.vo.page.UserGroupAuthorityAdminVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2015/12/28.
 */
@Controller
@RequestMapping("/admin")
public class UserGroupAuthorityAdminController {
    @RequestMapping("/userGroupAuthorityAdmin")
    public ModelAndView userGroupAuthorityAdmin() {
        ModelAndView mv = new ModelAndView();  //设置返回页面逻辑名,不带页面名后缀
        UserGroupAuthorityAdminVo userGroupAuthorityAdminVo = new UserGroupAuthorityAdminVo();
        userGroupAuthorityAdminVo.init("left_user_group_authority_admin","控制管理");
        mv.addObject("basevo",userGroupAuthorityAdminVo);
        mv.setViewName("userGroupAuthorityAdmin");
        return mv;
    }
}
