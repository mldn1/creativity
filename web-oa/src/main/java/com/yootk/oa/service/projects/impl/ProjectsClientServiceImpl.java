package com.yootk.admin.service.projects.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.admin.service.projects.IProjectsClientService;
import com.yootk.dubbo.service.oa.projects.IProjectService;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * @author yaoxinlan
 */
@Service
public class ProjectsClientServiceImpl implements IProjectsClientService {
    @Reference
    private IProjectService projectService;

    @Override
    public Map<String, Object> getAllSplit(Long currentPage, Integer lineSize, String column, String keyWord) {
        return this.projectService.getAllSplit(currentPage, lineSize, column, keyWord);
    }
}
