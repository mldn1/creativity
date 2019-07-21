package com.yootk.admin.action;

import com.yootk.admin.service.IEmpAllPrivilegeService;
import com.yootk.admin.service.IEmpPrivilegeService;
import com.yootk.dubbo.vo.Emp;
import com.yootk.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pages/front/manage/*")
public class EmpAction extends AbstractAction {
    @Autowired
    private IEmpAllPrivilegeService empAllPrivilegeService;
    @Autowired
    private IEmpPrivilegeService empPrivilegeService;
    @RequestMapping("password")
    public ModelAndView password(){
        ModelAndView mav = new ModelAndView("/front/manage/password");
        Emp emp = this.empPrivilegeService.getByPhone(super.getEmpId());
        System.err.println(emp);
        mav.addObject("emp",emp);
        return mav;
    }
    @RequestMapping("password_pre")
    public ModelAndView password_pre(String old_password,String new_password){
        ModelAndView mav = new ModelAndView("index");
        if (this.empAllPrivilegeService.setPassword(new_password,old_password,super.getEmpId())){
            mav.addObject("result","修改成功！");
        }else {
            mav.addObject("result","修改失败，请重试");
        }
        return mav;
    }
}
