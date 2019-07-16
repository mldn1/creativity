package com.yootk.admin.service.organization.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.admin.service.organization.IGroupClientService;
import com.yootk.dubbo.service.oa.organization.IGroupService;
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
}
