package com.yootk.dubbo.vo;

import java.io.Serializable;

public class Groupemp implements Serializable {
    private Long gid;

    private Long eid;

    public Long getGid() {
        return gid;
    }

    public void setGid(Long gid) {
        this.gid = gid;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", gid=").append(gid);
        sb.append(", eid=").append(eid);
        sb.append("]");
        return sb.toString();
    }
}