package com.yootk.dubbo.service.mall;

import com.yootk.dubbo.vo.mall.Goods;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;

import java.util.List;

public interface IGoodsService {
    /**
     * 查询全部商品信息
     * @return 将商品保存到List集合中返回
     */
    List<Goods> findShowGoodss();

    /**
     * 查询单个商品信息
     * @return 返回该商品的vo对象
     */
    Goods findGoodsById(String gid);
}
