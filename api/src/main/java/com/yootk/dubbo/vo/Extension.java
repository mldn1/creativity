package com.yootk.dubbo.vo;

public class Extension {
    private Long extid;

    private Integer channelid;

    private String plane;

    private String unit;

    private String keyword;

    private String code;

    private String link;

    private Long state;

    private Integer count;

    private Long eid;

    public Long getExtid() {
        return extid;
    }

    public void setExtid(Long extid) {
        this.extid = extid;
    }

    public Integer getChannelid() {
        return channelid;
    }

    public void setChannelid(Integer channelid) {
        this.channelid = channelid;
    }

    public String getPlane() {
        return plane;
    }

    public void setPlane(String plane) {
        this.plane = plane == null ? null : plane.trim();
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword == null ? null : keyword.trim();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link == null ? null : link.trim();
    }

    public Long getState() {
        return state;
    }

    public void setState(Long state) {
        this.state = state;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
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
        sb.append(", extid=").append(extid);
        sb.append(", channelid=").append(channelid);
        sb.append(", plane=").append(plane);
        sb.append(", unit=").append(unit);
        sb.append(", keyword=").append(keyword);
        sb.append(", code=").append(code);
        sb.append(", link=").append(link);
        sb.append(", state=").append(state);
        sb.append(", count=").append(count);
        sb.append(", eid=").append(eid);
        sb.append("]");
        return sb.toString();
    }
}