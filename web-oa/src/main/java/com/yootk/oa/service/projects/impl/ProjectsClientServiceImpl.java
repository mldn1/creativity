package com.yootk.oa.service.projects.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.oa.service.projects.IProjectsClientService;
import com.yootk.dubbo.service.oa.projects.IProjectService;
import com.yootk.dubbo.vo.Project;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * @author yaoxinlan
 */
@Service
public class ProjectsClientServiceImpl implements IProjectsClientService {
    @Reference(check = false)
    private IProjectService projectService;

    @Override
    public Map<String, Object> getAllSplit(Long eid, Long currentPage, Integer lineSize, String column, String keyWord) {
        return this.projectService.getAllSplit(eid, currentPage, lineSize, column, keyWord);
    }

    @Override
    public boolean insertSelective(Project project) {
        return this.projectService.insertSelective(project) == 1;
    }
}
