package com.yootk.authz.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IGoods_stateService;
import com.yootk.dubbo.vo.Goods_state;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Goods_stateServiceImpl implements IGoods_stateService {
    @Reference
    private IGoods_stateService goods_stateService;
    @Override
    public List<Goods_state> list() {
        return this.goods_stateService.list();
    }
}
