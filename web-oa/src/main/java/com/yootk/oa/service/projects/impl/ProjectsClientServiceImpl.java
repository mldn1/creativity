package com.yootk.oa.service.projects.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.vo.Require;
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
    @Reference
    private IProjectService projectService;

    @Override
    public Map<String, Object> getAllSplit(Long currentPage, Integer lineSize, String column, String keyWord) {
        return this.projectService.getAllSplit(currentPage, lineSize, column, keyWord);
    }

    @Override
    public Map<String, Object> getAllSearchSplit(Integer state, String title, Long currentPage, Integer lineSize, String column, String keyWord) {
        return this.projectService.getAllSearchSplit(state, title, currentPage, lineSize, column, keyWord);
    }

    @Override
    public Map<String, Object> needsList(Long proid, Long currentPage, Integer lineSize, String column, String keyWord) {
        return this.projectService.needsList(proid, currentPage, lineSize, column, keyWord);
    }

    @Override
    public Map<String, Object> needsSearchList(Require require, Long currentPage, Integer lineSize, String column, String keyWord) {
        return this.projectService.needsSearchList(require, currentPage, lineSize, column, keyWord);
    }

    @Override
    public Map<String, Object> getDetail(Long proid) {
        return this.projectService.getDetail(proid);
    }

    @Override
    public Object chart(Long proid) {
        return this.projectService.chart(proid);
    }

    @Override
    public Map<String, Object> getEdit(Long proid) {
        return this.projectService.getEdit(proid);
    }

    @Override
    public boolean update(Project project) {
        return this.projectService.update(project);
    }

    @Override
    public boolean add(Project project) {
        return this.projectService.add(project);
    }

    @Override
    public boolean state(Long proid, Integer state) {
        return this.projectService.state(proid, state);
    }

    @Override
    public boolean addTeam(Long proid, String username) {
        return this.projectService.addTeam(proid, username);
    }

    @Override
    public boolean canAdd(Long proid, String username) {
        return this.projectService.canAdd(proid, username);
    }

    @Override
    public boolean deleteTeam(Long tid) {
        return this.projectService.deleteTeam(tid);
    }

    @Override
    public Map<String, Object> addPre() {
        return this.projectService.addPre();
    }

    @Override
    public Map<String, Object> findTeam(Long proid, Long currentPage, Integer lineSize) {
        return this.projectService.findTeam(proid, currentPage, lineSize);
    }
}
