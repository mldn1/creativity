package com.yootk.mall.action;

import com.yootk.dubbo.vo.MemberLogs;
import com.yootk.mall.service.IMemberLogsService;
import com.yootk.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/pages/front/login/*")
public class MemberAction extends AbstractAction {
    @Autowired
    private IMemberLogsService memberLogsService;

    @RequestMapping("welcome")
    public String welcome() {
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
        MemberLogs memberLogs = new MemberLogs();
        memberLogs.setLogintime(format);
        memberLogs.setLogintip(ip);
        memberLogs.setPhone(super.getEmpId());
        this.memberLogsService.send(memberLogs);
        return "front/main/index";
    }
}
