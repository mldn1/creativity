package com.yootk.oa.service.resume.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.oa.resume.IResumeService;
import com.yootk.dubbo.vo.Education;
import com.yootk.dubbo.vo.Resume;
import com.yootk.dubbo.vo.ResumeState;
import com.yootk.dubbo.vo.WorkYears;
import com.yootk.oa.dao.EducationMapper;
import com.yootk.oa.dao.ResumeMapper;
import com.yootk.oa.dao.ResumeStateMapper;
import com.yootk.oa.dao.WorkYearsMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class ResumeServiceImpl implements IResumeService {
    @Autowired
    private ResumeMapper resumeMapper;
    @Autowired
    private EducationMapper educationMapper;
    @Autowired
    private ResumeStateMapper resumeStateMapper;
    @Autowired
    private WorkYearsMapper workYearsMapper;
    @Override//下面的状态state可能是Integer类型的
    public Map<String, Object> findSplit(String name, String state, Long currentPage, Integer lineSize, String columnone, String columntwo) {
        Map<String,Object> params=new HashMap<>();
        Map<String,Object> results=new HashMap<>();
        params.put("name",name);
        params.put("state",state);
        params.put("start",(currentPage-1)*lineSize);
        params.put("end",lineSize);
        params.put("columnone",columnone);
        params.put("columntwo",columntwo);
        results.put("allResumes",this.resumeMapper.findAll(params));
        results.put("allRecorders",this.resumeMapper.getAllRecorders(params));
        return results;
    }

    @Override
    public List<Education> findAll() {
        List<Education> allEducation=this.educationMapper.findAllEducation();
        return allEducation;
    }

    @Override
    public List<ResumeState> findResumeState() {
        List<ResumeState> allResumeState=this.resumeStateMapper.findAll();
        return allResumeState;
    }

    @Override
    public Resume findResumeByResid(Long resid) {
        return this.resumeMapper.findByRsid(resid);
    }

    @Override
    public List<WorkYears> findWorkYears() {
        return this.workYearsMapper.findAll();
    }

    @Override
    public boolean doCreate(Resume resume) {
        return this.resumeMapper.insert(resume)>0;
    }

    @Override
    public boolean doEdit(Resume resume) {
        return this.resumeMapper.updateByPrimaryKeySelective(resume)>0;
    }

    @Override
    public boolean doRemove(Long resid) {
        return this.resumeMapper.deleteByPrimaryKey(resid)>0;
    }

}
