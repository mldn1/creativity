package com.yootk.admin.action.organization;

import com.yootk.admin.service.organization.IGroupClientService;
import com.yootk.util.action.AbstractAction;
import com.yootk.util.split.SplitPageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/pages/back/admin/groups/*")
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

}
