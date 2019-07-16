package com.yootk.oa.action;

import com.yootk.dubbo.vo.Emp;
import com.yootk.oa.service.IEmpAllPrivilegeService;
import com.yootk.oa.service.IEmpPrivilegeService;
import com.yootk.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

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
        Emp emp = this.empPrivilegeService.getByPhone(super.getEmpId());
        super.getSession().setAttribute("emp",emp);
        //登录时将登录时间设置到数据库
        String ip = super.getRequest().getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = getRequest().getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = getRequest().getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = getRequest().getRemoteAddr();
        }
        this.empPrivilegeService.setDateAndIp(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()),ip,super.getEmpId());
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
