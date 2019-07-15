package com.yootk.admin.action.organization;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.oa.organization.IGroupService;
import com.yootk.util.action.AbstractAction;
import com.yootk.util.split.SplitPageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/pages/back/admin/groups/*")
public class GroupAction extends AbstractAction {

    @Reference
    private IGroupService groupService;

    @RequestMapping("group_list")
    public ModelAndView list() {
        System.out.println(this.groupService);
        ModelAndView mav = new ModelAndView("/pages/back/admin/groups/index.jsp");
        SplitPageUtil spu = new SplitPageUtil("/pages/back/admin/groups/group_list.action.");
        Map<String, Object> map = this.groupService.getAllSplit(spu.getCurrentPage(), spu.getLineSize(), spu.getColumn(), spu.getKeyword());
        System.out.println(map);
        mav.addObject(map);
        return mav;
    }

}
