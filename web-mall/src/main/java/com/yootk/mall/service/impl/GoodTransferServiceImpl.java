package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.mall.IGoodService;
import com.yootk.dubbo.vo.mall.Good;
import com.yootk.mall.service.IGoodTransferService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodTransferServiceImpl implements IGoodTransferService {
    @Reference
    private IGoodService goodsService;

    @Override
    public List<Good> findShowGoods() {
        return goodsService.findShowGoodss();
    }

    @Override
    public Good findGoodsById(String gid) {
        return goodsService.findGoodsById(gid);
    }

    @Override
    public List<Good> findCateGood(Long cid) {
        return goodsService.findCategoryGood(cid);
    }

    @Override
    public List<Good> findSplitGood(String keyWord) {
        return goodsService.findSplitGood(keyWord);
    }
}
