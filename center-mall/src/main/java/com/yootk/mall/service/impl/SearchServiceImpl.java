package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.ISearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.Set;

@Service
public class SearchServiceImpl implements ISearchService {

    @Autowired
    private RedisTemplate<String, String> stringRedisTemplate;

    /**
     * 获取指定数组中指定关键字的排名
     * @param arr 指定数组
     * @param keyWord 指定关键字
     * @return 返回该关键字在数组中的排名
     */
    public Long rank(String arr, String keyWord) {
        Long rank = stringRedisTemplate.opsForZSet().rank(arr, keyWord);
        return rank;
    }

    /**
     * 获取指定数组中指定关键字的分数
     * @param arr 指定数组
     * @param keyWord 指定关键字
     * @return 返回该关键字在数组中的分数
     */
    public Double score(String arr, String keyWord) {
        Double score = stringRedisTemplate.opsForZSet().score(arr, keyWord);
        return score;
    }

    /**
     * 降序获取指定数组中所有关键字的排名
     * @param arr 指定数组
     * @param start 排名开始值
     * @param end 排名结束值
     * @return 返回结果保存在Set集合中
     */
    public Set<String> descRank(String arr, Long start, Long end) {
        System.out.println(stringRedisTemplate);
        Set<String> descRank = stringRedisTemplate.opsForZSet().reverseRange(arr , start , end);
        return descRank;

    }

    /**
     * 增加指定数组中指定关键字的分数
     * @param arr 指定数组
     * @param keyWord 指定关键字
     * @param score 增加分数
     * @return 增加成功返回true 失败返回false
     */
    public boolean add(String arr, String keyWord, Double score) {
        return stringRedisTemplate.opsForZSet().add(arr, keyWord, score);
    }
}
