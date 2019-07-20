package com.yootk.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.admin.service.IChannel;
import com.yootk.dubbo.service.IChannelService;
import com.yootk.dubbo.vo.Channels;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class ChannelImpl implements IChannel {
    @Reference
    private IChannelService channelService;
    @Override
    public List<Channels> getAll() {
        return this.channelService.getAll();
    }
}
