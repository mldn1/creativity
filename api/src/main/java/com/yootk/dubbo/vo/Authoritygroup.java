package com.yootk.dubbo.vo;

public class Authoritygroup {
    private Long authoid;

    private Long gid;

    public Long getAuthoid() {
        return authoid;
    }

    public void setAuthoid(Long authoid) {
        this.authoid = authoid;
    }

    public Long getGid() {
        return gid;
    }

    public void setGid(Long gid) {
        this.gid = gid;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", authoid=").append(authoid);
        sb.append(", gid=").append(gid);
        sb.append("]");
        return sb.toString();
    }
}