package com.yootk.dubbo.service.oa.projects;

import com.yootk.dubbo.vo.Project;

import java.util.Map;

/**
 * @author yaoxinlan
 */
public interface IProjectService {
    Map<String, Object> getAllSplit(Long eid, Long currentPage, Integer lineSize, String column, String keyWord);

    int insertSelective(Project project);
}
