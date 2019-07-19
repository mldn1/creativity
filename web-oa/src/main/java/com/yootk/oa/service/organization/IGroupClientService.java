package com.yootk.oa.service.organization;

import com.yootk.dubbo.vo.Group;

import java.util.Map;

public interface IGroupClientService {

    Map<String, Object> getGroupsSplit(long currentPage, int lineSize, String column, String keyWord);

    boolean addGroup(Group group) ;

    boolean deleteGroup(long gid);

    Map<String, Object> getAllGroupEmps(long currentPage, int lineSize, long gid);

    boolean deleteEmpInGroup(long gid, long eid);

    int addGroupEmp(String key, long gid);

    Group getGroupByTitle(String title);

}
