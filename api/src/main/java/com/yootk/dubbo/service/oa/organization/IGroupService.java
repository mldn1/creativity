package com.yootk.dubbo.service.oa.organization;

import com.yootk.dubbo.vo.Group;

import java.util.Map;

public interface IGroupService {

    Map<String, Object> getAllSplit(Long currentPage, Integer lineSize, String column, String keyWord);

    boolean add(Group group) ;

    boolean delete(long gid);

}
