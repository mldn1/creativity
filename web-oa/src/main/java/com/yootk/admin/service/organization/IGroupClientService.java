package com.yootk.admin.service.organization;

import java.util.Map;

public interface IGroupClientService {

    Map<String, Object> getGroupsSplit(long currentPage, int lineSize, String column, String keyWord);

}
