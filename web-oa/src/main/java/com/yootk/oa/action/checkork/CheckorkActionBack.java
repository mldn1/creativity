package com.yootk.oa.action.checkork;

import com.yootk.dubbo.vo.Emp;
import com.yootk.oa.service.checkork.ICheckorkServiceClient;
import com.yootk.oa.service.checkork.IEmpServicewxlClient;
import com.yootk.util.action.AbstractAction;
import com.yootk.util.split.SplitPageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * 考勤管理
 */
@Controller
@RequestMapping("/pages/back/admin/checkworks/")///pages/back/admin/checkworks/checkork_list.action
public class CheckorkActionBack extends AbstractAction {
    @Autowired
    private ICheckorkServiceClient checkorkServiceClient;
    @Autowired
    private IEmpServicewxlClient empServicewxlClient;


    @RequestMapping("checkork_list.action")
    public ModelAndView listl(String type){
        Long eid=this.empServicewxlClient.getIEmpServicewxl().getEidByPhone(super.getEmpId());
        ModelAndView mav=new ModelAndView("back/admin/checkworks/index");
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/checkworks/checkork_list.action");
        Map<String, Object> map = this.checkorkServiceClient.getICheckorkService().list(eid, spu.getCurrentPage(),spu.getLineSize(),"state",type);
        mav.addAllObjects(map);
        return mav;
    }
    @RequestMapping("checkork_listall.action")
    public ModelAndView listall(String column,String name){
        ModelAndView mav=new ModelAndView("back/admin/checkworks/all");
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/checkworks/checkork_listall.action");
        List<Emp> all=this.empServicewxlClient.getIEmpServicewxl().getAllEmp();
        Iterator<Emp> iter=all.iterator();
        Emp emp=null;
        String keyword=null;
        if(!((name ==null) || name.equals(""))){
            Long eid=0L;
            while(iter.hasNext()){
                if((emp=iter.next()).getName().equals(name)){
                    eid=emp.getEid();
                    break;
                }
            }
            keyword=eid.toString();
        }

        Map<String, Object> map = this.checkorkServiceClient.getICheckorkService().list(null, spu.getCurrentPage(),spu.getLineSize(),column,keyword);
        mav.addObject("allEmp",all);
        mav.addAllObjects(map);
        return mav;
    }
    @RequestMapping("checkork_add.action")
    public String add(){
        Long eid=this.empServicewxlClient.getIEmpServicewxl().getEidByPhone(super.getEmpId());
        Date datetime=new Date();
        DateFormat dateFormat=new SimpleDateFormat("HH:mm:ss");
         String time=dateFormat.format(datetime);
        Integer hour=Integer.parseInt(time.split(":")[0]);
        Integer minutes=Integer.parseInt(time.split(":")[1]);
        Integer state=null;//假设早上8点上班，下午五点下班
        if(hour>8 && hour<=12){ //如果是上午8点到12点之间打的卡就是属于迟到
            state=2;
        }else if(hour==8){
            if(minutes==0){//8:00打卡算正常
                state=1;
            }else{          //8:00以后打卡算迟到
                state=2;
            }
        }else if(hour<8){   //8:00以前打卡算正常
            state=1;
        }else if(hour>12 && hour<17){  //17:00以前打卡算早退
            state=3;
        }else if(hour>=18){  //18:00以后打卡算加班
            state=4;
        }else {
            state=1;        //17:00到18:00之间打卡算正常
        }
        String ip=super.getRequest().getRemoteAddr();
         this.checkorkServiceClient.getICheckorkService().doCreate(eid,new Date(), state, ip);
           return "forward:checkork_list.action";
    }
}
