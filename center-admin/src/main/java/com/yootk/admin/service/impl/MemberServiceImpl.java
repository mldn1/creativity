package com.yootk.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.admin.dao.IChannelDAO;
import com.yootk.admin.dao.IMemberDAO;
import com.yootk.admin.dao.IMember_gradeDAO;
import com.yootk.admin.dao.IStateDAO;
import com.yootk.dubbo.service.IMemberServiceAdmin;
import com.yootk.dubbo.vo.Channels;
import com.yootk.dubbo.vo.Member;
import com.yootk.dubbo.vo.Member_grade;
import com.yootk.dubbo.vo.State;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.HashMap;
import java.util.Map;

@Service
public class MemberServiceImpl implements IMemberServiceAdmin {
    @Autowired
    private IChannelDAO channelDAO;
    @Autowired
    private IMember_gradeDAO member_gradeDAO;
    @Autowired
    private IStateDAO stateDAO;
    @Autowired
    private IMemberDAO memberDAO;
    @Override
    public Member login(Member vo) {
        return null;
    }

    @Override
    public Member get(String mid) {
        return null;
    }

    @Override
    public Map<String, Object> list(Map<String, Object> param) {
        Map<String,Object> result = new HashMap<>();
        result.put("allMembers",this.memberDAO.findSplit(param));
        result.put("allRecorders",this.memberDAO.getAllCount(param));
        Map<Long,String> states = new HashMap<>();
        for(State state : this.stateDAO.findAll()){
            states.put(state.getId(),state.getTitle());
        }
        Map<Long,String> m_grades = new HashMap<>();
        for(Member_grade m_grade: this.member_gradeDAO.findAll()){
            m_grades.put(m_grade.getId(),m_grade.getTitle());
        }
        result.put("allStates",states);
        result.put("allM_grades",m_grades);
        return result;
    }

    @Override
    public Map<String, Object> getByPhone(String phone) {
        Map<String,Object> result = new HashMap<>();
        result.put("member",this.memberDAO.findByPhone(phone));
        result.put("allStates",this.stateDAO.findAll());
        result.put("allGrades",this.member_gradeDAO.findAll());
        result.put("allChannels",this.channelDAO.findAll());
        return result;
    }

    @Override
    public boolean edit(Member member) {
        return this.memberDAO.doUpdate(member);
    }
}
