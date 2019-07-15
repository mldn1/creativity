package com.yootk.dubbo.vo;

import java.io.Serializable;

public class LeaveType implements Serializable {
    private Long ltid;

    private String title;

    public Long getLtid() {
        return ltid;
    }

    public void setLtid(Long ltid) {
        this.ltid = ltid;
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
        sb.append(", ltid=").append(ltid);
        sb.append(", title=").append(title);
        sb.append("]");
        return sb.toString();
    }
}