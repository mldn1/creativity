package com.yootk.dubbo.service.mall;

import com.yootk.dubbo.vo.mall.Good;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;

import java.util.List;

public interface IGoodService {
    /**
     * 查询全部商品信息
     * @return 将商品保存到List集合中返回
     */
    List<Good> findShowGoodss();

    /**
     * 查询单个商品信息
     * @return 返回该商品的vo对象
     */
    Good findGoodsById(String gid);

    /**
     * 查询分类商品信息
     * 根据分类id查询该分类下的所有商品
     * @return 查询结果保存在List集合中返回
     */
    List<Good> findCategoryGood(Long cid);
}
