package com.yootk.oa.action;

import com.yootk.oa.service.IEmpPrivilegeService;
import com.yootk.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pages/back/admin/users/*")
public class EmpAction extends AbstractAction {
    @Autowired
    private IEmpPrivilegeService empPrivilegeService;
    @RequestMapping("profile")
    public ModelAndView EmpProfile(){
        ModelAndView mav = new ModelAndView("back/admin/users/profile");
        mav.addObject("emp",this.empPrivilegeService.getEmp(super.getEmpId()));
        return mav;
    }
    @RequestMapping("password")
    public ModelAndView EmpPassword(String oldpwd,String newpwd,String confpwd){
        ModelAndView mav = new ModelAndView("back/admin/users/profile-pwd");
        if (newpwd != confpwd){
            mav.addObject("error","两次输入的密码不一致！请重新输入");
        }
        if (this.empPrivilegeService.setPassword(newpwd,oldpwd,super.getEmpId())){
            mav.addObject("result","密码修改成功");
        }else {
            mav.addObject("result","密码修改失败请重试");
        }
        return mav;
    }
}
