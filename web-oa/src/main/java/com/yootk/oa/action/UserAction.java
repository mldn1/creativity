package com.yootk.oa.action;

import com.yootk.dubbo.vo.Emp;
import com.yootk.oa.service.IEmpAllPrivilegeService;
import com.yootk.oa.service.IEmpPrivilegeService;
import com.yootk.util.action.AbstractAction;
import com.yootk.util.upload.token.UploadToken;
import com.yootk.util.upload.util.FileDelete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;

@Controller
@RequestMapping("/pages/back/admin/users/*")
public class UserAction extends AbstractAction {
    @Autowired
    private IEmpAllPrivilegeService empAllPrivilegeService;
    @Autowired
    private IEmpPrivilegeService empPrivilegeService;
    @RequestMapping("password")
    public ModelAndView EmpPassword(String oldpwd,String newpwd,String confpwd){
        ModelAndView mav = new ModelAndView("back/admin/users/profile-pwd");
        if (!newpwd.equals(confpwd)){
            mav.addObject("result","两次输入的密码不一致！请重新输入");
        }else {
            if (this.empAllPrivilegeService.setPassword(newpwd,oldpwd,super.getEmpId())){
                mav.addObject("result","密码修改成功");
            }else {
                mav.addObject("result","密码修改失败请重试");
            }
        }
        return mav;
    }
    @RequestMapping("avatar_pre")
    public void Avatar(MultipartFile file){
        String[] upload = super.upload(file);
        System.err.println("upload:==========="+upload[1]);
        if (this.empAllPrivilegeService.setPhoto(UploadToken.accessBuffer(upload),super.getEmpId())){
            super.getSession().removeAttribute("emp");
            Emp emp = this.empPrivilegeService.getByPhone(super.getEmpId());
            super.getSession().setAttribute("emp",emp);
        }else {
            try {
                FileDelete.Upload(
                         upload[1]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
