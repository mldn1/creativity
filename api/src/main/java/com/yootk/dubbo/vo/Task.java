package com.yootk.dubbo.vo;

import java.util.Date;

public class Task {
    private Long taskid;

    private Long rid;

    private Long founder;

    private Long assigned;

    private Long finisher;

    private String title;

    private String description;

    private Integer type;

    private String note;

    private Integer period;

    private Integer workhours;

    private Date startdate;

    private Date enddate;

    private Long send;

    private String appendix;

    private Integer state;

    public Long getTaskid() {
        return taskid;
    }

    public void setTaskid(Long taskid) {
        this.taskid = taskid;
    }

    public Long getRid() {
        return rid;
    }

    public void setRid(Long rid) {
        this.rid = rid;
    }

    public Long getFounder() {
        return founder;
    }

    public void setFounder(Long founder) {
        this.founder = founder;
    }

    public Long getAssigned() {
        return assigned;
    }

    public void setAssigned(Long assigned) {
        this.assigned = assigned;
    }

    public Long getFinisher() {
        return finisher;
    }

    public void setFinisher(Long finisher) {
        this.finisher = finisher;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public Integer getPeriod() {
        return period;
    }

    public void setPeriod(Integer period) {
        this.period = period;
    }

    public Integer getWorkhours() {
        return workhours;
    }

    public void setWorkhours(Integer workhours) {
        this.workhours = workhours;
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

    public Long getSend() {
        return send;
    }

    public void setSend(Long send) {
        this.send = send;
    }

    public String getAppendix() {
        return appendix;
    }

    public void setAppendix(String appendix) {
        this.appendix = appendix == null ? null : appendix.trim();
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
        sb.append(", taskid=").append(taskid);
        sb.append(", rid=").append(rid);
        sb.append(", founder=").append(founder);
        sb.append(", assigned=").append(assigned);
        sb.append(", finisher=").append(finisher);
        sb.append(", title=").append(title);
        sb.append(", description=").append(description);
        sb.append(", type=").append(type);
        sb.append(", note=").append(note);
        sb.append(", period=").append(period);
        sb.append(", workhours=").append(workhours);
        sb.append(", startdate=").append(startdate);
        sb.append(", enddate=").append(enddate);
        sb.append(", send=").append(send);
        sb.append(", appendix=").append(appendix);
        sb.append(", state=").append(state);
        sb.append("]");
        return sb.toString();
    }
}