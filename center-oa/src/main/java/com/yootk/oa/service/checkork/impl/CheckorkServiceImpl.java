package com.yootk.oa.service.checkork.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.oa.checkork.ICheckorkService;
import com.yootk.dubbo.vo.Checkork;
import com.yootk.oa.dao.CheckorkMapper;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

@Service
public class CheckorkServiceImpl implements ICheckorkService {
    @Autowired
    private CheckorkMapper checkorkMapper;
    @Override
    public List<Checkork> list(Long eid, Long currentPage, Integer lineSize) throws Exception {
        Map<String,Object> map=new HashMap<>();
        map.put("eid",eid);
        map.put("start",(currentPage-1)*lineSize);
        map.put("end",lineSize);
        List<Checkork> allCheckork=this.checkorkMapper.findSplitByEid(map);
        return allCheckork;
    }
}
