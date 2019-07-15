package com.yootk.oa.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.ICheckorkService;
import com.yootk.dubbo.vo.Checkork;
import com.yootk.oa.dao.CheckorkMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.Map;

@Service
public class CheckorkServiceImpl implements ICheckorkService {
    @Autowired
    private CheckorkMapper checkorkMapper;
    @Override
    public Checkork list(Long eid, Long currentPage, Integer lineSize) throws Exception {
        Map<String,Object> map=new HashMap<>();
        map.put("eid",1);
        map.put("start",1);//currentPage*(lineSize-1)
        map.put("end",1);//currentPage
        System.out.println("************"+checkorkMapper+"************");
        Checkork checkork=this.checkorkMapper.findSplitByEid(map);
        System.out.println(checkork.getIp());
        return null;
    }
}
