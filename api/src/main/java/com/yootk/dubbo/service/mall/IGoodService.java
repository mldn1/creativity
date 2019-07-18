package com.yootk.dubbo.service.mall;

import com.yootk.dubbo.vo.mall.Good;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;

import java.util.List;

@CacheConfig(cacheNames = "goods")
public interface IGoodService {
    /**
     * 查询全部商品信息
     * @return 将商品保存到List集合中返回
     */
    @Cacheable
    public  List<Good> findShowGoods();

    public Good get(String gid) ;
}
