package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.mall.ISearchService;
import com.yootk.mall.service.ISearchTransferService;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
public class SearchTransferServiceImpl implements ISearchTransferService {

    @Reference
    private ISearchService searchService;

    public Long rank(String keyWord) {
        return searchService.rank(ISearchTransferService.ZSET, keyWord);
    }

    public Double score(String keyWord) {
        return searchService.score(ISearchTransferService.ZSET, keyWord);
    }

    public Set<String> descRank(Long start, Long end) {
        return searchService.descRank(ISearchTransferService.ZSET, start, end);
    }

    public boolean add(String keyWord, Double score) {
        return searchService.add(ISearchTransferService.ZSET, keyWord, score);
    }
}
