package com.yootk.mall.service.impl;

import com.yootk.dubbo.vo.MemberLogs;
import com.yootk.mall.service.IMemberLogsService;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class MemberLogsServiceImpl implements IMemberLogsService {

    @Autowired
    private AmqpTemplate amqpTemplate;

    @Value("${amqp.rabbitmq.routing.key}")
    private String routingKey;
    @Override
    public void send(MemberLogs memberLogs) {
        this.amqpTemplate.convertAndSend(routingKey,memberLogs);
    }
}
