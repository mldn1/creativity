package com.yootk.admin.action.front.user;

import com.yootk.admin.service.IChannel;
import com.yootk.admin.service.IMember;
import com.yootk.admin.util.PageUtil;
import com.yootk.dubbo.vo.Channels;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller // 创建一个控制器
@RequestMapping("/pages/front/user/*")
public class UserAction{
    @Autowired
    private IChannel channelService;
    @Autowired
    private IMember memberService;
    @RequestMapping("user_list")
    public ModelAndView userLis(String keyword,Integer state,Integer source) {
        ModelAndView mav = new ModelAndView("front/user/user_list") ;
        PageUtil pu = new PageUtil("pages/front/user/user_list.action");
        Map<String,Object> param = new HashMap<>();
        param.put("column","name"); //设置属性
        if(keyword == null || "".equals(keyword)){
            param.put("keyword","%%");
        }else{
            param.put("keyword","%" + keyword + "%");
            mav.addObject("keyword",keyword);
        }
        param.put("start",(pu.getCurrentPage()-1)*pu.getLineSize());
        param.put("linesize",pu.getLineSize());
        if(state == null ){
            param.put("state","");
        }else{
            param.put("state",state);
        }
        if(source == null){
            param.put("source","");
        }else{
            param.put("source",source);
        }
        System.err.println(param + "【param】");
        List<Channels> allChannels = this.channelService.getAll();
        mav.addObject("allChannels",allChannels);
        Map<Long,String> channels = new HashMap<>();
        for(Channels channel : allChannels){
            channels.put(channel.getChannel(),channel.getTitle());
        }
        mav.addObject("Channels",channels);
        Map<String,Object> result = this.memberService.list(param);
        System.err.println(result + "【result】");
        mav.addObject("allMembers",result.get("allMembers"));
        mav.addObject("allRecorders",result.get("allRecorders"));
        mav.addObject("allStates",result.get("allStates"));
        mav.addObject("allM_grades",result.get("allM_grades"));
        return mav ;
    }
}
