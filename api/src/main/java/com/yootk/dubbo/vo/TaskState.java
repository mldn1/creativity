package com.yootk.dubbo.vo;

import java.io.Serializable;

public class TaskState implements Serializable {
    private Integer tsid;

    private String title;

    public Integer getTsid() {
        return tsid;
    }

    public void setTsid(Integer tsid) {
        this.tsid = tsid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", tsid=").append(tsid);
        sb.append(", title=").append(title);
        sb.append("]");
        return sb.toString();
    }
}