package com.yootk.oa.service.organization.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.oa.organization.IGroupService;
import com.yootk.dubbo.vo.Group;
import com.yootk.oa.service.organization.IGroupClientService;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class GroupClientServiceImpl implements IGroupClientService {

    @Reference
    private IGroupService groupService;

    @Override
    public Map<String, Object> getGroupsSplit(long currentPage, int lineSize, String column, String keyWord) {
        return this.groupService.getAllSplit(currentPage, lineSize, column, keyWord);
    }

    @Override
    public boolean addGroup(Group group) {
        return this.groupService.add(group);
    }

    @Override
    public boolean deleteGroup(long gid) {
        return this.groupService.delete(gid);
    }

    @Override
    public Map<String, Object> getAllGroupEmps(long currentPage, int lineSize, long gid) {
        return this.groupService.getAllEmpsByGroup(currentPage, lineSize, gid);
    }

    @Override
    public boolean deleteEmpInGroup(long gid, long eid) {
        return this.groupService.deleteGroupEmp(gid, eid);
    }

    @Override
    public int addGroupEmp(String key, long gid) {
        return this.groupService.addGroupEmpByNameOrUsername(key, gid);
    }

    @Override
    public Group getGroupByTitle(String title) {
        return this.groupService.getByTitle(title);
    }
}
