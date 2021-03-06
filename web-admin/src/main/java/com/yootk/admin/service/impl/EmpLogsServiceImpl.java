package com.yootk.admin.service.impl;

import com.yootk.admin.service.IEmpLogsService;
import com.yootk.dubbo.vo.EmpLogs;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class EmpLogsServiceImpl implements IEmpLogsService {

    @Autowired
    private AmqpTemplate amqpTemplate;
    @Value("${amqp.rabbitmq.routing.key}")
    private String routingKey;
    @Override
    public void send(EmpLogs empLogs) {
        this.amqpTemplate.convertAndSend(routingKey,empLogs);
    }
}