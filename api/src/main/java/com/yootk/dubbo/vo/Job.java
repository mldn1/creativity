package com.yootk.dubbo.vo;

import java.io.Serializable;

public class Job implements Serializable {
    private Long jid;

    private String job;

    private String description;

    private Integer state;

    public Long getJid() {
        return jid;
    }

    public void setJid(Long jid) {
        this.jid = jid;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job == null ? null : job.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
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
        sb.append(", jid=").append(jid);
        sb.append(", job=").append(job);
        sb.append(", description=").append(description);
        sb.append(", state=").append(state);
        sb.append("]");
        return sb.toString();
    }
}