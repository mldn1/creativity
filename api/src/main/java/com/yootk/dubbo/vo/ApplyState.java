package com.yootk.dubbo.vo;

import java.io.Serializable;

public class ApplyState implements Serializable {
    private Long asid;

    private Integer state;

    public Long getAsid() {
        return asid;
    }

    public void setAsid(Long asid) {
        this.asid = asid;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", asid=").append(asid);
        sb.append(", state=").append(state);
        sb.append("]");
        return sb.toString();
    }
}