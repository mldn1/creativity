package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.mall.IGoodsService;
import com.yootk.dubbo.vo.mall.Goods;
import com.yootk.mall.service.IGoodsTransferService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:spring/spring-base.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
@Service
public class GoodsTransferServiceImpl implements IGoodsTransferService {
    @Reference
    private IGoodsService goodsService;

    @Override
    public List<Goods> findShowGoods() {
        return goodsService.findShowGoodss();
    }

    @Override
    public Goods findGoodsById(String gid) {
        return goodsService.findGoodsById(gid);
    }

    @Test
    public void info() {
        System.out.println(goodsService.findGoodsById("1001").getPicture());
    }

}
