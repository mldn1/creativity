package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Checkork implements Serializable {
    private Long coid;

    private Long eid;

    private Date datetime;

    private Integer state;

    private String ip;

    public Long getCoid() {
        return coid;
    }

    public void setCoid(Long coid) {
        this.coid = coid;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    public Date getDatetime() {
        return datetime;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", coid=").append(coid);
        sb.append(", eid=").append(eid);
        sb.append(", datetime=").append(datetime);
        sb.append(", state=").append(state);
        sb.append(", ip=").append(ip);
        sb.append("]");
        return sb.toString();
    }
}