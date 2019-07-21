package com.yootk.mall.service;

import java.util.Set;

public interface ISearchTransferService {

    // Zset数组名
    public static final String ZSET = "zhan";

    /**
     * 获取指定数组中指定关键字的排名
     * @param keyWord 指定关键字
     * @return 返回该关键字在数组中的排名
     */
    Long rank(String keyWord);

    /**
     * 获取指定数组中指定关键字的分数
     * @param keyWord 指定关键字
     * @return 返回该关键字在数组中的分数
     */
    Double score(String keyWord);

    /**
     * 降序获取指定数组中所有关键字的排名
     * @param start 排名开始值
     * @param end 排名结束值
     * @return 返回结果保存在Set集合中
     */
    Set<String> descRank(Long start, Long end);

    /**
     * 增加指定数组中指定关键字的分数
     * @param keyWord 指定关键字
     * @param score 增加分数
     * @return 增加成功返回true 失败返回false
     */
    boolean add(String keyWord, Double score);
}
