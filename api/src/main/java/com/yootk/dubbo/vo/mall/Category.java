package com.yootk.dubbo.vo.mall;

import java.io.Serializable;

public class Category implements Serializable {
    private Long cid;

    private String title;

    private Integer grade;

    private Integer sort;

    private String stitle;

    private String sdescription;

    private String skeyword;

    private Integer state;

    private Long eid;

    private String icon;

    public Category() {}

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getStitle() {
        return stitle;
    }

    public void setStitle(String stitle) {
        this.stitle = stitle;
    }

    public String getSdescription() {
        return sdescription;
    }

    public void setSdescription(String sdescription) {
        this.sdescription = sdescription;
    }

    public String getSkeyword() {
        return skeyword;
    }

    public void setSkeyword(String skeyword) {
        this.skeyword = skeyword;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    @Override
    public String toString() {
        return "Category{" +
                "cid=" + cid +
                ", title='" + title + '\'' +
                ", grade=" + grade +
                ", sort=" + sort +
                ", stitle='" + stitle + '\'' +
                ", sdescription='" + sdescription + '\'' +
                ", skeyword='" + skeyword + '\'' +
                ", state=" + state +
                ", eid=" + eid +
                ", icon='" + icon + '\'' +
                '}';
    }
}
