package com.yootk.admin.service.impl;


import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.admin.dao.ICatogeryDAO;
import com.yootk.admin.service.ICatogeryService;
import com.yootk.admin.vo.Catogery;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

@Service
public class CatogeryServiceImpl implements ICatogeryService {
    @Autowired
    private ICatogeryDAO catogeryDAO ;
    @Override
    public List<Catogery> oneGradeCatogery(Integer grade) {
        List<Catogery> list = new ArrayList<>() ;
        list = catogeryDAO.findCatogeryByGrade(grade) ;
        return list ;
    }
}
