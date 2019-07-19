package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.IGoodsService;
import com.yootk.dubbo.vo.mall.Goods;
import com.yootk.mall.dao.IGoodsDAO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@Service
public class GoodsServiceImpl implements IGoodsService {

    @Autowired
    private IGoodsDAO goodsDAO;

    @Override
    public List<Goods> findShowGoodss() {
        return goodsDAO.findShow();
    }

    @Override
    public Goods findGoodsById(String gid) {
        return goodsDAO.findById(gid);
    }

}
