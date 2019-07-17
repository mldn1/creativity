package com.yootk.dubbo.service.mall;

import com.yootk.dubbo.vo.Goods;

import java.util.List;

public interface IGoodsService {
    /**
     * 查询全部商品信息
     * @return 将商品保存到List集合中返回
     */
    List<Goods> findShowGoods();
}
