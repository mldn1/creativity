package com.yootk.dubbo.vo;

import java.util.Date;

public class AskLeave {
    private Long alid;

    private Long eid;

    private Integer type;

    private Date startdate;

    private Date enddate;

    private String reason;

    private String picture;

    private Long approver;

    private String note;

    private Integer state;

    private Integer result;

    private Integer progress;

    public Long getAlid() {
        return alid;
    }

    public void setAlid(Long alid) {
        this.alid = alid;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
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
        sb.append(", alid=").append(alid);
        sb.append(", eid=").append(eid);
        sb.append(", type=").append(type);
        sb.append(", startdate=").append(startdate);
        sb.append(", enddate=").append(enddate);
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