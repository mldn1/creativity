package com.yootk.admin.action;

import com.yootk.util.action.AbstractAction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin/pages/front/manage/*")
public class EmpAction extends AbstractAction {
    @RequestMapping("password")
    public void password(){

    }
}
