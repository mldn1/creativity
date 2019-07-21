package com.yootk.oa.action.organization;

import com.yootk.dubbo.vo.Group;
import com.yootk.oa.service.organization.IGroupClientService;
import com.yootk.util.action.AbstractAction;
import com.yootk.util.split.SplitPageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/pages/back/admin/groups/*")
@ResponseBody
public class GroupAction extends AbstractAction {

    @Autowired
    private IGroupClientService groupClientService;

    @RequestMapping("group_list")
    public ModelAndView list() {
        System.out.println(this.groupClientService);
        ModelAndView mav = new ModelAndView("back/admin/groups/index");
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/groups/group_list.action.");
        Map<String, Object> map = this.groupClientService.getGroupsSplit(spu.getCurrentPage(), spu.getLineSize(), spu.getColumn(), spu.getKeyword());
        System.out.println(map);
        mav.addAllObjects(map);
        return mav;
    }

    @RequestMapping("group_add")
    public Object add(Group group) {
        return this.groupClientService.addGroup(group);
    }

    @RequestMapping("group_delete")
    public Object delete(long gid) {
        return this.groupClientService.deleteGroup(gid);
    }

    @RequestMapping("group_user")
    public ModelAndView listGroupUsers(Long gid) {
//        System.err.println("******************************************************************************" + gid);
        if (gid == null) {
            gid = (Long) super.getSession().getAttribute("gid");
        }
//        System.err.println("******************************************************************************" + gid);
        super.getSession().setAttribute("gid", gid);
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/groups/group_user.action");
        Map<String, Object> map = this.groupClientService.getAllGroupEmps(spu.getCurrentPage(), spu.getLineSize(), gid);
//        System.err.println("******************************************************************************" + map);

        ModelAndView mav = new ModelAndView("back/admin/groups/user");
        mav.addAllObjects(map);
        return mav;
    }

    @RequestMapping("group_user_delete")
    public Object deleteGroupUser(long gid, long eid) {
        return this.groupClientService.deleteEmpInGroup(gid, eid);
    }

    @RequestMapping("group_user_add")
    public Object addGroupUser(String key, long gid) {
        return this.groupClientService.addGroupEmp(key, gid);
    }

    @RequestMapping("group_add_check")
    public Object checkGroupName(String title) {
        return this.groupClientService.getGroupByTitle(title) == null;
    }

}
