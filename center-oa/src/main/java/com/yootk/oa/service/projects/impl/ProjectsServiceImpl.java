package com.yootk.oa.service.projects.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.oa.projects.IProjectService;
import com.yootk.oa.dao.ProjectMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.Map;

/**
 * @author yaoxinlan
 */
@Service
public class ProjectsServiceImpl implements IProjectService {
    @Autowired
    private ProjectMapper projectMapper;

    @Override
    public Map<String, Object> getAllSplit(Long currentPage, Integer lineSize, String column, String keyWord) {
        Map<String, Object> result = new HashMap<>();
        Map<String, Object> params = new HashMap<>();
        params.put("start", (currentPage - 1) * lineSize);
        params.put("lineSize", lineSize);
        params.put("column", column);
        params.put("keyWord", keyWord);
        System.out.println(params);
        result.put("allProjects", this.projectMapper.findSplit(params));
        result.put("allRecorders", this.projectMapper.getAllRecorders(params));
        return result;
    }
}
