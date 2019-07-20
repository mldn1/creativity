package com.yootk.dubbo.vo;

import java.io.Serializable;

public class Channels implements Serializable {
    private Long channel;
    private String title;

    @Override
    public String toString() {
        return "Channels{" +
                "channel=" + channel +
                ", title='" + title + '\'' +
                '}';
    }

    public Long getChannel() {
        return channel;
    }

    public void setChannel(Long channel) {
        this.channel = channel;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
