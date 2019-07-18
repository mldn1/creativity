package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.mall.IGoodService;
import com.yootk.dubbo.vo.mall.Good;
import com.yootk.mall.service.IGoodsTransferService;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class GoodsTransferServiceImpl implements IGoodsTransferService {
    @Reference
    private IGoodService goodService;

    @Override
    public List<Good> findShowGoods() {
        System.out.println("【第一次查询】：" + goodService.findShowGoods());
        System.out.println("----------------------------------------------------------------------------------------");
        System.err.println("【第二次查询】：" + goodService.findShowGoods());
        return goodService.findShowGoods();
    }

}
