package com.yootk.oa.service.checkork.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.oa.checkork.ICheckorkService;
import com.yootk.dubbo.vo.Checkork;
import com.yootk.oa.dao.CheckorkMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Service
public class CheckorkServiceImpl implements ICheckorkService {
    @Autowired
    private CheckorkMapper checkorkMapper;
    @Override
    public Map<String,Object> list(Long eid, Long currentPage, Integer lineSize,String column,String keyword) {
        Map<String,Object> params=new HashMap<>();
        Map<String,Object> result=new HashMap<>();
        params.put("eid",eid);
        params.put("start",(currentPage-1)*lineSize);
        params.put("end",lineSize);
        params.put("column",column);
        params.put("keyword",keyword);
        result.put("allCheckorks", this.checkorkMapper.findSplitByEid(params));
        result.put("allRecorders", this.checkorkMapper.getAllRecorders(params));
        return result;
    }

    @Override
    public boolean doCreate(Long eid, Date datetime, Integer state, String ip) {
        System.err.println("============================调用了业务层方法==================================");
        Checkork checkork=new Checkork();
        checkork.setEid(eid);
        checkork.setDatetime(datetime);
        checkork.setState(state);
        checkork.setIp(ip);
        return this.checkorkMapper.insert(checkork)>0;
    }

}
