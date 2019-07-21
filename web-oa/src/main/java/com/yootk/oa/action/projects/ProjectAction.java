package com.yootk.oa.action.projects;

import com.yootk.dubbo.vo.Require;
import com.yootk.oa.service.projects.IProjectsClientService;
import com.yootk.dubbo.vo.Project;
import com.yootk.util.action.AbstractAction;
import com.yootk.util.split.SplitPageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

/**
 * @author yaoxinlan
 */
@Controller
@ResponseBody
@RequestMapping("/pages/back/admin/projects/")
public class ProjectAction extends AbstractAction {
    @Autowired
    private IProjectsClientService projectClientService;

//    @InitBinder
//    public void initBinder(WebDataBinder binder) {
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        dateFormat.setLenient(false);
//        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
//    }

    @RequestMapping("project_list_pre")
    private ModelAndView projectListPre() {
        ModelAndView mav = new ModelAndView("back/admin/projects/project");
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/projects/project_list_pre.action");
        Map<String, Object> map = this.projectClientService.getAllSplit(spu.getCurrentPage(), spu.getLineSize(), spu.getColumn(), spu.getKeyword());
        mav.addAllObjects(map);
        return mav;
    }

    @RequestMapping("project_detail")
    public ModelAndView projectDetail(Long proid) {
        ModelAndView mav = new ModelAndView("back/admin/projects/project-detail");
        Map<String, Object> map = this.projectClientService.getDetail(proid);
        mav.addAllObjects(map);
        return mav;
    }

    @RequestMapping("project_edit_pre")
    public ModelAndView projectEditPre(Long proid) {
        ModelAndView mav = new ModelAndView("back/admin/projects/project-form");
        Map<String, Object> map = this.projectClientService.getEdit(proid);
        mav.addAllObjects(map);
        return mav;
    }

    @RequestMapping("project_edit")
    public ModelAndView projectEdit(Project project) {
        ModelAndView mav = new ModelAndView();
        boolean isSucceed = this.projectClientService.update(project);
        if (isSucceed) {
            mav.setViewName("forward:/pages/back/admin/projects/project_list_pre.action");
        } else {
            mav.addObject("error", "项目编辑失败！");
        }
        return mav;
    }

    @RequestMapping("project_add")
    public ModelAndView projectAdd(Project project) {
        ModelAndView mav = new ModelAndView();
        boolean isSucceed = this.projectClientService.add(project);
        if (isSucceed) {
            mav.setViewName("forward:/pages/back/admin/projects/project_list_pre.action");
        } else {
            mav.addObject("error", "项目添加失败！");
        }
        return mav;
    }

    @RequestMapping("project_state")
    public ModelAndView projectState(Long proid, Integer state) {
        System.err.println("进行了状态操作 ： proid = " + proid + " , state = " + state);
        try {
            if (this.projectClientService.state(proid, state)) {
                super.getResponse().getWriter().print("succedd");
            } else {
                super.getResponse().getWriter().print("failed");
            }
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping("project_add_pre")
    public ModelAndView projectAddPre() {
        ModelAndView mav = new ModelAndView("back/admin/projects/project-add");
        Map<String, Object> map = this.projectClientService.addPre();
        mav.addAllObjects(map);
        return mav;
    }

    @RequestMapping("team")
    public ModelAndView team(Long proid) {
        ModelAndView mav = new ModelAndView("back/admin/projects/team");
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/projects/team.action?proid =" + proid);
        Map<String, Object> map = this.projectClientService.findTeam(proid, spu.getCurrentPage(), spu.getLineSize());
        mav.addAllObjects(map);
        mav.addObject("proid", proid);
        return mav;
    }

    @RequestMapping("team_add")
    public ModelAndView teamAdd(Long proid, String username) {
        ModelAndView mav = new ModelAndView("forward:/pages/back/admin/projects/team.action?proid=" + proid);
        boolean isSucceed = this.projectClientService.addTeam(proid, username);
        if (isSucceed) {
            mav.addObject("msg", "成员添加成功！");
        } else {
            mav.addObject("msg", "成员添加失败！");
        }
        return mav;
    }

    @RequestMapping("can_add")
    public Object canAdd(Long proid, String username) {
        return this.projectClientService.canAdd(proid, username);
    }

    @RequestMapping("team_delete")
    public void teamForm(Long tid) {
        try {
            if (this.projectClientService.deleteTeam(tid)) {
                super.getResponse().getWriter().print("succeed");
            } else {
                super.getResponse().getWriter().print("failed");
            }
        } catch (Exception e) {
        }
    }

    @RequestMapping("needs_list")
    public ModelAndView needsList(Long proid) {
        ModelAndView mav = new ModelAndView("back/admin/projects/needs");
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/projects/needs_list.action?proid=" + proid);
        Map<String, Object> map = this.projectClientService.needsList(proid, spu.getCurrentPage(), spu.getLineSize(), spu.getColumn(), spu.getKeyword());
        mav.addAllObjects(map);
        mav.addObject("proid", proid);
        return mav;
    }

    @RequestMapping("needs_search_list")
    public ModelAndView needsSearchList(Integer state, Integer period, Long assigned, String title, Long proid) {
        Require require = new Require();
        require.setState(state);
        require.setPeriod(period);
        require.setAssigned(assigned);
        require.setTitle(title);
        require.setProid(proid);
        ModelAndView mav = new ModelAndView("back/admin/projects/needs");
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/projects/needs_search_list.action?proid=" + require.getProid() + "&state=" + state + "&period=" + period + "&assigned=" + assigned + "&title=" + title);
        Map<String, Object> map = this.projectClientService.needsSearchList(require, spu.getCurrentPage(), spu.getLineSize(), spu.getColumn(), spu.getKeyword());
        mav.addAllObjects(map);
        mav.addObject("proid", require.getProid());
        return mav;
    }

    @RequestMapping("project_search_list")
    private ModelAndView projectSearchList(Integer state, String title) {
        ModelAndView mav = new ModelAndView("back/admin/projects/project");
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/projects/project_search_list.action?state=" + state + "&title=" + title);
        Map<String, Object> map = this.projectClientService.getAllSearchSplit(state, title, spu.getCurrentPage(), spu.getLineSize(), spu.getColumn(), spu.getKeyword());
        mav.addAllObjects(map);
        return mav;
    }

    @RequestMapping("chart")
    private ModelAndView chart(Long proid) {
        ModelAndView mav = new ModelAndView("back/admin/projects/project-chart");
        mav.addObject("proid", proid);
        Object json = this.projectClientService.chart(proid);
        mav.addObject("teamJob", json);
        return mav;
    }
}
