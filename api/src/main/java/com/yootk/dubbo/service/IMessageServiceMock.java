package com.yootk.dubbo.service;

import com.yootk.dubbo.vo.Message;

public class IMessageServiceMock implements IMessageService {
    public Message echo(Message msg) {
        Message vo = new Message();
        vo.setTitle("【haha】"+msg.getTitle());
        vo.setContent("【haha】"+msg.getContent());
        vo.setSender("【haha】"+msg.getSender());
        return vo;
    }
}
