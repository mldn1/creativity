package com.yootk.dubbo.vo;

import java.io.Serializable;

public class PayChannel implements Serializable {
    private Integer id ;
    private String title ;

    @Override
    public String toString() {
        return "PayChannel{" +
                "id=" + id +
                ", title='" + title + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
