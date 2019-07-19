package com.yootk.dubbo.service;

import com.yootk.dubbo.vo.Goods_state;

import java.util.List;

public interface IGoods_stateService {
    /**
     * 查询所有的商品状态
     * @return
     */
    public List<Goods_state> list();
}
