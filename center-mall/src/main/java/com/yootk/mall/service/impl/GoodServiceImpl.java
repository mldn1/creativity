package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.IGoodService;
import com.yootk.dubbo.vo.mall.Good;
import com.yootk.mall.dao.IGoodDAO;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Service
public class GoodServiceImpl implements IGoodService {

    @Autowired
    private IGoodDAO goodDAO;

    @Override
    public List<Good> findShowGoods() {
        return goodDAO.findShow();
    }

    @Override
    public Good get(String gid) {
        return null;
    }


}
