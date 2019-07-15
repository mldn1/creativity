package com.yootk.oa.service.organization.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.oa.organization.IGroupService;
import com.yootk.oa.dao.GroupMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.Map;
@Service
public class GroupServiceImpl implements IGroupService {

    @Autowired
    private GroupMapper groupMapper;

    @Override
    public Map<String, Object> getAllSplit(Long currentPage, Integer lineSize, String column, String keyWord) {
        Map<String, Object> result = new HashMap<>();
        Map<String, Object> params = new HashMap<>();
        params.put("start", (currentPage - 1) * lineSize);
        params.put("lineSize", lineSize);
        params.put("column", column);
        params.put("keyWord", keyWord);
        System.out.println(params);
        result.put("allGroups", this.groupMapper.findSplit(params));
        result.put("allRecorders", this.groupMapper.getAllRecorders(params));
        return result;
    }
}
