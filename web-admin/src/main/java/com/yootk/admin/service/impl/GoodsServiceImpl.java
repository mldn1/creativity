package com.yootk.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IGoodsService ;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class GoodsServiceImpl implements IGoodsService {
    @Reference
    IGoodsService goodsService ;
    @Override
    public Map<String, Object> list(String column, String keyword, Long start, int lineSize) {
        return goodsService.list(column,keyword,start,lineSize);
    }

    @Override
    public Long allCount(String column, String keyword) {
        return goodsService.allCount(column,keyword);
    }
}
