package com.yootk.admin.action.checkork;

import com.yootk.admin.service.checkork.ICheckorkServiceClient;
import com.yootk.dubbo.vo.Checkork;
import com.yootk.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Iterator;
import java.util.List;

/**
 * 考勤管理
 */
@Controller
@RequestMapping("pages/back/admin/checkworks/")//pages/back/admin/checkworks/checkork_list.action
public class CheckorkActionBack extends AbstractAction {
    @Autowired
    private ICheckorkServiceClient checkorkServiceClient;
    @RequestMapping("checkork_list.action")
    public ModelAndView listl(){
        System.err.println("==============================hello world==================================");
        System.err.println("=============================="+this.checkorkServiceClient+"==================================");
        System.err.println("=============================="+this.checkorkServiceClient.getICheckorkService()+"==================================");
        ModelAndView mav=new ModelAndView("back/admin/checkworks/index");
        String phone=super.getEmpId();//待补充
        Long eid=1L;//根据当前用户的注册手机号查询出当前用户的eid
        try {
            List<Checkork> all=this.checkorkServiceClient.getICheckorkService().list(eid,1L,5);
            Iterator<Checkork> iterator=all.iterator();
            Checkork checkork=new Checkork();
            while(iterator.hasNext()){
                checkork=iterator.next();
                System.err.println(checkork.toString());
            }
            mav.addObject("allCheckorks",this.checkorkServiceClient.getICheckorkService().list(eid,1L,5));//list(eid,1L,5)
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mav;
    }
}
