package com.yootk.client.dao;

import com.yootk.dubbo.vo.Client;

public interface IClientDAO {
    public Client findById(String cid);
}
