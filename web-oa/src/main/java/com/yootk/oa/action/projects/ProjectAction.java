package com.yootk.admin.action.projects;

import com.yootk.admin.service.projects.IProjectsClientService;
import com.yootk.dubbo.vo.Emp;
import com.yootk.dubbo.vo.Project;
import com.yootk.util.action.AbstractAction;
import com.yootk.util.split.SplitPageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * @author yaoxinlan
 */
@Controller
@RequestMapping("/pages/back/admin/projects/*")
public class ProjectAction extends AbstractAction {
    @Autowired
    private IProjectsClientService projectClientService;

    @RequestMapping("project_list_pre")
    private ModelAndView projectListPre() {
        ModelAndView mav = new ModelAndView("back/admin/projects/project");
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/projects/project_list_pre.action", "项目状态:state");
        Emp emp = (Emp) super.getSession().getAttribute("emp");
        Map<String, Object> map = this.projectClientService.getAllSplit(emp.getEid(), spu.getCurrentPage(), spu.getLineSize(), spu.getColumn(), spu.getKeyword());
        mav.addObject(map);
        return mav;
    }

    @RequestMapping("project_add")
    public ModelAndView projectAdd(Project project) {
        ModelAndView mav = new ModelAndView();
        this.projectClientService.insertSelective(project);
        return mav;
    }
}
