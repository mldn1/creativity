package com.yootk.oa.service;

import java.util.Map;
import java.util.Set;

public interface IMemberPrivilegeService {
    public Map<String, Set<String>> getByMember(String mid);

}
