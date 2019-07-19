package com.yootk.oa.action.resume;

import com.yootk.dubbo.vo.Resume;
import com.yootk.dubbo.vo.WorkYears;
import com.yootk.oa.service.resume.IResumeServiceClient;
import com.yootk.util.action.AbstractAction;
import com.yootk.util.split.SplitPageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/pages/back/admin/resumes/")///pages/back/admin/resumes/resume_list.action
public class ResumeActionBack extends AbstractAction {
    @Autowired
    private IResumeServiceClient resumeServiceClient;
    @RequestMapping("resume_list.action")
    public ModelAndView list(String status,String keywords){
        ModelAndView mav=new ModelAndView("back/admin/resumes/index");
        SplitPageUtil spu=new SplitPageUtil("/pages/back/admin/resumes/resume_list.action");
        Map<String,Object> map=this.resumeServiceClient.getIResumeService().findSplit(status,keywords,spu.getCurrentPage(),5,"state","name");
        mav.addAllObjects(map);
        mav.addObject("status",status);
        mav.addObject("keywords",keywords);
        mav.addObject("allWorkYears",this.resumeServiceClient.getIResumeService().findWorkYears());
        mav.addObject("allEducation",this.resumeServiceClient.getIResumeService().findAll());
        mav.addObject("allResumeState",this.resumeServiceClient.getIResumeService().findResumeState());
        return mav;
    }

    @RequestMapping("resume_add.action")
    public ModelAndView add(Resume resume){
        resume.setEid(5L);//eid待连接
        ModelAndView mav=new ModelAndView("back/admin/resumes/form-add");
        this.resumeServiceClient.getIResumeService().doCreate(resume);
        return mav;
    }

    @RequestMapping("resume_editPre.action")
    public ModelAndView editPre(String resid){       //resid为简历的id,等待修改前端jsp页面，将resid传过来
        ModelAndView mav=new ModelAndView("back/admin/resumes/form");
        Resume resume=this.resumeServiceClient.getIResumeService().findResumeByResid(Long.parseLong(resid));
        List<WorkYears> allWorkYears=this.resumeServiceClient.getIResumeService().findWorkYears();
        mav.addObject(resume);
//        mav.addObject("allWorkYears",this.resumeServiceClient.getIResumeService().findWorkYears());
        return mav;
    }

    @RequestMapping("resume_edit.action")
    public String edit(Resume resume){
        System.err.println("********************"+resume.getResid()+"****************************");
        this.resumeServiceClient.getIResumeService().doEdit(resume);
        return "forward:resume_list.action";
    }

    @RequestMapping("resume_delete.action")
    public String delete(String resid){
         this.resumeServiceClient.getIResumeService().doRemove(Long.parseLong(resid));
        return "forward:resume_list.action";
    }

}
