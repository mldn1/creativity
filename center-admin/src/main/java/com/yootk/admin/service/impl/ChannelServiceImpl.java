package com.yootk.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.admin.dao.IChannelDAO;
import com.yootk.dubbo.service.IChannelService;
import com.yootk.dubbo.vo.Channels;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Service
public class ChannelServiceImpl implements IChannelService {
    @Autowired
    private IChannelDAO channelDAO;
    @Override
    public List<Channels> getAll() {
        return this.channelDAO.findAll();
    }
}
