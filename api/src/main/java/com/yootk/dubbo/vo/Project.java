package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Project implements Serializable {
    private Long proid;

    private String title;

    private String alias;

    private Long founder;

    private Long head;

    private Long pl;

    private Long tl;

    private Date startdate;

    private Date enddate;

    private String description;

    private Integer state;

    private Integer workinghours;

    public Long getProid() {
        return proid;
    }

    public void setProid(Long proid) {
        this.proid = proid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias == null ? null : alias.trim();
    }

    public Long getFounder() {
        return founder;
    }

    public void setFounder(Long founder) {
        this.founder = founder;
    }

    public Long getHead() {
        return head;
    }

    public void setHead(Long head) {
        this.head = head;
    }

    public Long getPl() {
        return pl;
    }

    public void setPl(Long pl) {
        this.pl = pl;
    }

    public Long getTl() {
        return tl;
    }

    public void setTl(Long tl) {
        this.tl = tl;
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

    public Integer getWorkinghours() {
        return workinghours;
    }

    public void setWorkinghours(Integer workinghours) {
        this.workinghours = workinghours;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", proid=").append(proid);
        sb.append(", title=").append(title);
        sb.append(", alias=").append(alias);
        sb.append(", founder=").append(founder);
        sb.append(", head=").append(head);
        sb.append(", pl=").append(pl);
        sb.append(", tl=").append(tl);
        sb.append(", startdate=").append(startdate);
        sb.append(", enddate=").append(enddate);
        sb.append(", description=").append(description);
        sb.append(", state=").append(state);
        sb.append(", workinghours=").append(workinghours);
        sb.append("]");
        return sb.toString();
    }
}