package com.yootk.dubbo.service;

import java.util.Map;

public interface IGoodsService {

    public Map<String,Object> list(String column, String keyword, Long start, int lineSize) ;
    public Long allCount(String column, String keyword) ;
}
