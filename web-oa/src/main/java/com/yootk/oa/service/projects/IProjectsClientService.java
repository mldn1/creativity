package com.yootk.oa.service.projects;

import com.yootk.dubbo.vo.Project;
import com.yootk.dubbo.vo.Require;

import java.util.Map;

/**
 * @author yaoxinlan
 */
public interface IProjectsClientService {
    Map<String, Object> getAllSplit(Long currentPage, Integer lineSize, String column, String keyWord);

    Map<String, Object> getAllSearchSplit(Integer state, String title, Long currentPage, Integer lineSize, String column, String keyWord);

    Map<String, Object> needsList(Long proid, Long currentPage, Integer lineSize, String column, String keyWord);

    Map<String, Object> needsSearchList(Require require, Long currentPage, Integer lineSize, String column, String keyWord);

    Map<String, Object> getDetail(Long proid);

    Object chart(Long proid);

    Map<String, Object> getEdit(Long proid);

    boolean update(Project project);

    boolean add(Project project);

    boolean state(Long proid, Integer state);

    boolean addTeam(Long proid, String username);

    boolean canAdd(Long proid, String username);

    boolean deleteTeam(Long tid);

    Map<String, Object> addPre();

    Map<String, Object> findTeam(Long proid, Long currentPage, Integer lineSize);

}
