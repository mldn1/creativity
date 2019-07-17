package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.IGoodsService;
import com.yootk.dubbo.vo.Goods;
import com.yootk.mall.dao.IGoodsDAO;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Service
public class GoodsServiceImpl implements IGoodsService {

    @Autowired
    private IGoodsDAO goodsDAO;

    @Override
    public List<Goods> findShowGoods() {
        return goodsDAO.findShow();
    }


}
