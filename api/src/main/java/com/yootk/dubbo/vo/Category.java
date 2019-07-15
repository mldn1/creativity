package com.yootk.dubbo.vo;

import java.io.Serializable;

public class Category implements Serializable {
    private Long cid ;  //分类id，自增
    private String title ;  //分类名
    private Integer grade ;//分类级别
    private String icon ;
    private Integer sort ;
    private String stitle ;//站点显示的title
    private String sdescription ;//站点显示的description
    private String skeyword ;//站点显示的keyword
    private Integer state;//分类状态，0打开，1关闭
    private Long eid;//操作员工eid

    public Category() {}

    @Override
    public String toString() {
        return "Catogery{" +
                "cid=" + cid +
                ", title='" + title + '\'' +
                ", grade=" + grade +
                ", icon='" + icon + '\'' +
                ", sort=" + sort +
                ", stitle='" + stitle + '\'' +
                ", sdescription='" + sdescription + '\'' +
                ", skeyword='" + skeyword + '\'' +
                ", state=" + state +
                ", eid=" + eid +
                '}';
    }

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

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
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
}
