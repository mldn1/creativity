package com.yootk.admin.service.projects;

import java.util.Map;

/**
 * @author yaoxinlan
 */
public interface IProjectsClientService {
    Map<String, Object> getAllSplit(Long currentPage, Integer lineSize, String column, String keyWord);
}
