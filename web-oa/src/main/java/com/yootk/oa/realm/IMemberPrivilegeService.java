package com.yootk.admin.realm;

import java.util.Map;
import java.util.Set;

public interface IMemberPrivilegeService {
    public Map<String, Set<String>> getByMember(String mid);
}