package com.yootk.dubbo.vo;

import java.io.Serializable;

public class State implements Serializable {
    private Long id;
    private String title;

    @Override
    public String toString() {
        return "State{" +
                "id=" + id +
                ", title='" + title + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
