package com.yootk.authz.dao;

import java.util.Set;

public interface IActionDAO {
    public Set<String> findAllByMember(String mid);
}
