package com.yootk.dubbo.vo;

import java.util.Date;

public class Team {
    private Long tid;

    private Long proid;

    private Long eid;

    private Date joindate;

    public Long getTid() {
        return tid;
    }

    public void setTid(Long tid) {
        this.tid = tid;
    }

    public Long getProid() {
        return proid;
    }

    public void setProid(Long proid) {
        this.proid = proid;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    public Date getJoindate() {
        return joindate;
    }

    public void setJoindate(Date joindate) {
        this.joindate = joindate;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", tid=").append(tid);
        sb.append(", proid=").append(proid);
        sb.append(", eid=").append(eid);
        sb.append(", joindate=").append(joindate);
        sb.append("]");
        return sb.toString();
    }
}