package com.yootk.dubbo.vo;

import java.io.Serializable;

public class Supplies implements Serializable {
    private Long supid;

    private Long eid;

    private String purpose;

    private String name;

    private Integer count;

    private String details;

    private String picture;

    private Long approver;

    private String note;

    private Integer state;

    private Integer result;

    private Integer progress;

    public Long getSupid() {
        return supid;
    }

    public void setSupid(Long supid) {
        this.supid = supid;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose == null ? null : purpose.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details == null ? null : details.trim();
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
        sb.append(", supid=").append(supid);
        sb.append(", eid=").append(eid);
        sb.append(", purpose=").append(purpose);
        sb.append(", name=").append(name);
        sb.append(", count=").append(count);
        sb.append(", details=").append(details);
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