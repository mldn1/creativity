package com.yootk.mall.action;

import com.yootk.mall.service.IMemberMallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pages/front/register/*")
public class RegisterAction {
    @Autowired
    private IMemberMallService memberMallService;
    @RequestMapping("register_1")
    public String  register(){
        return "front/register/register-1";
    }
    @RequestMapping("register_pre")
    public ModelAndView register_pre(String userphone,String userpassword){
        ModelAndView mav = new ModelAndView("front/login/login-3");
        if (!this.memberMallService.CreateMember(userphone,userpassword)){
            mav.setViewName("front/register/register-1");
            mav.addObject("error","该手机号已存在，请直接登录");
        }
        return mav;
    }
    @RequestMapping("getPhone")
    @ResponseBody
    public Object getPhone(String phone){
        return this.memberMallService.getPhone(phone);
    }
}
