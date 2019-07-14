package com.yootk.dubbo.vo;

import java.util.Date;

public class Active {
    private Long aid;

    private String title;

    private String description;

    private String context;

    private Integer type;

    private Integer mgrade;

    private Integer count;

    private Date startdate;

    private Date enddate;

    private String gid;

    private Integer state;

    private Date createdate;

    private Date editdate;

    private Long eid;

    public Long getAid() {
        return aid;
    }

    public void setAid(Long aid) {
        this.aid = aid;
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

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context == null ? null : context.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getMgrade() {
        return mgrade;
    }

    public void setMgrade(Integer mgrade) {
        this.mgrade = mgrade;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
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

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid == null ? null : gid.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Date getEditdate() {
        return editdate;
    }

    public void setEditdate(Date editdate) {
        this.editdate = editdate;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", aid=").append(aid);
        sb.append(", title=").append(title);
        sb.append(", description=").append(description);
        sb.append(", context=").append(context);
        sb.append(", type=").append(type);
        sb.append(", mgrade=").append(mgrade);
        sb.append(", count=").append(count);
        sb.append(", startdate=").append(startdate);
        sb.append(", enddate=").append(enddate);
        sb.append(", gid=").append(gid);
        sb.append(", state=").append(state);
        sb.append(", createdate=").append(createdate);
        sb.append(", editdate=").append(editdate);
        sb.append(", eid=").append(eid);
        sb.append("]");
        return sb.toString();
    }
}