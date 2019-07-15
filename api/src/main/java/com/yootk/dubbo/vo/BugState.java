package com.yootk.dubbo.vo;

import java.io.Serializable;

public class BugState implements Serializable {
    private Integer bsid;

    private String title;

    public Integer getBsid() {
        return bsid;
    }

    public void setBsid(Integer bsid) {
        this.bsid = bsid;
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
        sb.append(", bsid=").append(bsid);
        sb.append(", title=").append(title);
        sb.append("]");
        return sb.toString();
    }
}