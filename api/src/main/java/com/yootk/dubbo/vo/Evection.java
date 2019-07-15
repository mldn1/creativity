package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Evection implements Serializable {
    private Long eveid;

    private Long eid;

    private String aim;

    private Date startdate;

    private Date endtime;

    private Integer days;

    private String reason;

    private String picture;

    private Long approver;

    private String note;

    private Integer state;

    private Integer result;

    private Integer progress;

    public Long getEveid() {
        return eveid;
    }

    public void setEveid(Long eveid) {
        this.eveid = eveid;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    public String getAim() {
        return aim;
    }

    public void setAim(String aim) {
        this.aim = aim == null ? null : aim.trim();
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Integer getDays() {
        return days;
    }

    public void setDays(Integer days) {
        this.days = days;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    public Long getApprover() {
        return approver;
    }

    public void setApprover(Long approver) {
        this.approver = approver;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getResult() {
        return result;
    }

    public void setResult(Integer result) {
        this.result = result;
    }

    public Integer getProgress() {
        return progress;
    }

    public void setProgress(Integer progress) {
        this.progress = progress;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", eveid=").append(eveid);
        sb.append(", eid=").append(eid);
        sb.append(", aim=").append(aim);
        sb.append(", startdate=").append(startdate);
        sb.append(", endtime=").append(endtime);
        sb.append(", days=").append(days);
        sb.append(", reason=").append(reason);
        sb.append(", picture=").append(picture);
        sb.append(", approver=").append(approver);
        sb.append(", note=").append(note);
        sb.append(", state=").append(state);
        sb.append(", result=").append(result);
        sb.append(", progress=").append(progress);
        sb.append("]");
        return sb.toString();
    }
}