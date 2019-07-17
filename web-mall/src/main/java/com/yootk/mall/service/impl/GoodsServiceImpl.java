package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.mall.IGoodsService;
import com.yootk.dubbo.vo.mall.Goods;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class GoodsServiceImpl implements IGoodsService {
    @Reference
    private IGoodsService goodsService;

    @Override
    public List<Goods> findShowGoods() {
        System.out.println("【第一次查询】：" + goodsService.findShowGoods());
        System.out.println("----------------------------------------------------------------------------------------");
        System.err.println("【第二次查询】：" + goodsService.findShowGoods());
        return goodsService.findShowGoods();
    }

}
