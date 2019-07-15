package com.yootk.dubbo.service.oa.organization;

import java.util.Map;

public interface IGroupService {

    Map<String, Object> getAllSplit(Long currentPage, Integer lineSize, String column, String keyWord);

}
