package com.yootk.oa.service.organization.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.oa.organization.IGroupService;
import com.yootk.dubbo.vo.Emp;
import com.yootk.dubbo.vo.Group;
import com.yootk.oa.dao.GroupMapper;
import com.yootk.oa.dao.GroupempMapper;
import com.yootk.oa.dao.IEmpDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Service
@CacheConfig(cacheNames = "group")
public class GroupServiceImpl implements IGroupService {

    @Autowired
    private GroupMapper groupMapper;
    @Autowired
    private GroupempMapper groupempMapper;
    @Autowired
    private IEmpDAO empDAO;

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

    @Override
    public boolean add(Group group) {
        return this.groupMapper.doCreate(group);
    }

    @Override
    public boolean delete(long gid) {
        this.groupempMapper.deleteByGid(gid);
        return this.groupMapper.deleteByPrimaryKey(gid) > 0;
    }

    @Override
    public Map<String, Object> getAllEmpsByGroup(long currentPage, int lineSize, long gid) {
        Map<String, Object> result = new HashMap<>();
        long allRecorders = this.groupempMapper.getAllCountByGid(gid);
        result.put("allRecorders", allRecorders);
        if (allRecorders != 0) {
            Set<Long> eids = this.groupempMapper.findAllEidsByGid(gid);

            Map<String, Object> params = new HashMap<>();
            params.put("start", (currentPage -1) * lineSize);
            params.put("lineSize", lineSize);
            params.put("eids", eids.toArray());
            result.put("allEmps", this.empDAO.findAllEmpsByIds(params));
        }
        return result;
    }

    @Override
    public boolean deleteGroupEmp(long gid, long eid) {
        Map<String, Long> params = new HashMap<>();
        params.put("gid", gid);
        params.put("eid", eid);
        return this.groupempMapper.deleteByGidAndEid(params) > 0;
    }

    @Override
    public int addGroupEmpByNameOrUsername(String key, long gid) {
        List<Emp> result = this.empDAO.findByNameOrUsername(key);
        System.err.println("**********************************" + result);
        if (result == null || result.size() == 0) {
            return 0;
        }else if (result.size() > 1) {
            return 2;
        }
        long eid = result.iterator().next().getEid();
        Map<String, Long> params = new HashMap<>();
        params.put("gid", gid);
        params.put("eid", eid);
        if (this.groupempMapper.getCountByGidAndEid(params) > 0){
            return 3;
        }
        if (this.groupempMapper.doCreate(params) > 0) {
            return 1;
        }else {
            return 4;
        }
    }

    @Override
    @Cacheable(unless = "#result == null")
    public Group getByTitle(String title) {
        return this.groupMapper.findByTitle(title);
    }

}
