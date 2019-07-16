package com.yootk.admin.service.organization;

import com.yootk.dubbo.vo.Group;

import java.util.Map;

public interface IGroupClientService {

    Map<String, Object> getGroupsSplit(long currentPage, int lineSize, String column, String keyWord);

    boolean addGroup(Group group) ;

    boolean deleteGroup(long gid);

}
