package com.yootk.oa.service.projects;

import com.yootk.dubbo.vo.Project;

import java.util.Map;

/**
 * @author yaoxinlan
 */
public interface IProjectsClientService {
    Map<String, Object> getAllSplit(Long eid, Long currentPage, Integer lineSize, String column, String keyWord);

    boolean insertSelective(Project project);
}
