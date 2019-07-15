package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Overtime implements Serializable {
    private Long otid;

    private Long eid;

    private Date startdate;

    private Date enddate;

    private Integer time;

    private Integer method;

    private Integer islegalholiday;

    private String reason;

    private Long approver;

    private String note;

    private Integer state;

    private Integer result;

    private Integer progress;

    public Long getOtid() {
        return otid;
    }

    public void setOtid(Long otid) {
        this.otid = otid;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public Integer getMethod() {
        return method;
    }

    public void setMethod(Integer method) {
        this.method = method;
    }

    public Integer getIslegalholiday() {
        return islegalholiday;
    }

    public void setIslegalholiday(Integer islegalholiday) {
        this.islegalholiday = islegalholiday;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
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
        sb.append(", otid=").append(otid);
        sb.append(", eid=").append(eid);
        sb.append(", startdate=").append(startdate);
        sb.append(", enddate=").append(enddate);
        sb.append(", time=").append(time);
        sb.append(", method=").append(method);
        sb.append(", islegalholiday=").append(islegalholiday);
        sb.append(", reason=").append(reason);
        sb.append(", approver=").append(approver);
        sb.append(", note=").append(note);
        sb.append(", state=").append(state);
        sb.append(", result=").append(result);
        sb.append(", progress=").append(progress);
        sb.append("]");
        return sb.toString();
    }
}