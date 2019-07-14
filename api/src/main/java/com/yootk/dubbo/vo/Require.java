package com.yootk.dubbo.vo;

import java.util.Date;

public class Require {
    private Long id;

    private Long proid;

    private Integer origin;

    private Integer grade;

    private String title;

    private Long founder;

    private Long assigned;

    private Integer workhours;

    private Date createdate;

    private Integer state;

    private Integer period;

    private String description;

    private String standard;

    private String appendix;

    private Long did;

    private Integer type;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getProid() {
        return proid;
    }

    public void setProid(Long proid) {
        this.proid = proid;
    }

    public Integer getOrigin() {
        return origin;
    }

    public void setOrigin(Integer origin) {
        this.origin = origin;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
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

    public Integer getWorkhours() {
        return workhours;
    }

    public void setWorkhours(Integer workhours) {
        this.workhours = workhours;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getPeriod() {
        return period;
    }

    public void setPeriod(Integer period) {
        this.period = period;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getStandard() {
        return standard;
    }

    public void setStandard(String standard) {
        this.standard = standard == null ? null : standard.trim();
    }

    public String getAppendix() {
        return appendix;
    }

    public void setAppendix(String appendix) {
        this.appendix = appendix == null ? null : appendix.trim();
    }

    public Long getDid() {
        return did;
    }

    public void setDid(Long did) {
        this.did = did;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", proid=").append(proid);
        sb.append(", origin=").append(origin);
        sb.append(", grade=").append(grade);
        sb.append(", title=").append(title);
        sb.append(", founder=").append(founder);
        sb.append(", assigned=").append(assigned);
        sb.append(", workhours=").append(workhours);
        sb.append(", createdate=").append(createdate);
        sb.append(", state=").append(state);
        sb.append(", period=").append(period);
        sb.append(", description=").append(description);
        sb.append(", standard=").append(standard);
        sb.append(", appendix=").append(appendix);
        sb.append(", did=").append(did);
        sb.append(", type=").append(type);
        sb.append("]");
        return sb.toString();
    }
}