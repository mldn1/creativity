package com.yootk.dubbo.service.oa.projects;

import java.util.Map;

/**
 * @author yaoxinlan
 */
public interface IProjectService {
    Map<String, Object> getAllSplit(Long currentPage, Integer lineSize, String column, String keyWord);
}
