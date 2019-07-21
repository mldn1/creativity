package com.yootk.admin.action;

import com.yootk.admin.service.IEmpAllPrivilegeService;
import com.yootk.admin.service.IEmpLogsService;
import com.yootk.admin.service.IEmpPrivilegeService;
import com.yootk.dubbo.vo.Emp;
import com.yootk.dubbo.vo.EmpLogs;
import com.yootk.util.action.AbstractAction;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
public class CommonAction extends AbstractAction {
    @Autowired
    private IEmpPrivilegeService empPrivilegeService;
    @Autowired
    private IEmpLogsService logsService;
    @RequestMapping("pages/login")
    public String login() {
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
        String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        this.empPrivilegeService.setDateAndIp(format,ip,super.getEmpId());
        EmpLogs empLogs = new EmpLogs();
        empLogs.setLogintime(format);
        empLogs.setLogintip(ip);
        empLogs.setPhone(super.getEmpId());
        this.logsService.send(empLogs);
        return "index" ;
    }
    @RequestMapping("/pages/index")
    public String welcome() {
        return "index" ;
    }
    @RequestMapping("/logoutInfo")
    public String logoutInfo() {
        return "logout_info" ;
    }
    @RequestMapping("/pages/failure")
    public String failure() {
        return "failure" ;
    }

}