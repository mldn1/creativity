package com.yootk.admin.dao;

import com.yootk.dubbo.vo.Channels;
import java.util.List;

public interface IChannelDAO {
     public List<Channels> findAll();
}
