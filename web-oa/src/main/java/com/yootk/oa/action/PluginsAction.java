package com.yootk.oa.action;

import com.alibaba.fastjson.JSON;
import com.yootk.dubbo.vo.Emp;
import com.yootk.oa.service.IEmpPrivilegeService;
import com.yootk.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@ResponseBody
public class PluginsAction extends AbstractAction {
    @Autowired
    private IEmpPrivilegeService empPrivilegeService;
    @RequestMapping("pages/plugins/userinfo")
    public Object Include_userinfo(){
        Emp emp = this.empPrivilegeService.getEmp(super.getEmpId());
        System.err.println(emp);
        return emp;
    }
}
