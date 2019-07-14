package com.yootk.dubbo.vo;

import java.util.Date;

public class News {
    private Long nid;

    private String title;

    private String shorttitle;

    private String overview;

    private String context;

    private Integer type;

    private Integer position;

    private Integer state;

    private Integer sort;

    private Date createdate;

    private Date editdate;

    private Long count;

    private Long eid;

    public Long getNid() {
        return nid;
    }

    public void setNid(Long nid) {
        this.nid = nid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getShorttitle() {
        return shorttitle;
    }

    public void setShorttitle(String shorttitle) {
        this.shorttitle = shorttitle == null ? null : shorttitle.trim();
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview == null ? null : overview.trim();
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

    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
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

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
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
        sb.append(", nid=").append(nid);
        sb.append(", title=").append(title);
        sb.append(", shorttitle=").append(shorttitle);
        sb.append(", overview=").append(overview);
        sb.append(", context=").append(context);
        sb.append(", type=").append(type);
        sb.append(", position=").append(position);
        sb.append(", state=").append(state);
        sb.append(", sort=").append(sort);
        sb.append(", createdate=").append(createdate);
        sb.append(", editdate=").append(editdate);
        sb.append(", count=").append(count);
        sb.append(", eid=").append(eid);
        sb.append("]");
        return sb.toString();
    }
}