package com.yootk.dubbo.vo;

import java.io.Serializable;

public class Album implements Serializable {
    private Long albid;

    private Long eid;

    private String picture;

    public Long getAlbid() {
        return albid;
    }

    public void setAlbid(Long albid) {
        this.albid = albid;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", albid=").append(albid);
        sb.append(", eid=").append(eid);
        sb.append(", picture=").append(picture);
        sb.append("]");
        return sb.toString();
    }
}