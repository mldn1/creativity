package com.yootk.oa.action;

import com.yootk.dubbo.vo.Emp;
import com.yootk.oa.service.IEmpPrivilegeService;
import com.yootk.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommonAction extends AbstractAction {
    @Autowired
    private IEmpPrivilegeService empPrivilegeService;

    @RequestMapping("/login")
    public String login() {
        return "index";
    }

    @RequestMapping("/pages/index")
    public String welcome() {
        Emp emp = this.empPrivilegeService.getEmp(super.getEmpId());
        super.getSession().setAttribute("emp",emp);
        return "index";
    }

    @RequestMapping("/logoutInfo")
    public String logoutInfo() {
        return "logout_info";
    }

    @RequestMapping("/pages/failure")
    public String failure() {
        return "failure";
    }
}
