package com.yootk.mall.action;

import com.yootk.dubbo.vo.EmpLogs;
import com.yootk.dubbo.vo.MemberLogs;
import com.yootk.mall.service.IMemberLogsService;
import com.yootk.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class CommonAction extends AbstractAction {

    @RequestMapping("login")
    public String  login(){

        return "front/login/login-2" ;
    }
    @RequestMapping("login_pswd")
    public String  login_pswd(String username,String password){

        return "front/login/login-3" ;
    }
    @RequestMapping("logoutInfo")
    public String logoutInfo() {
        return "logout_info" ;
    }
}
