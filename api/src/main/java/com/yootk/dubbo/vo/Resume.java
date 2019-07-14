package com.yootk.dubbo.vo;

import java.util.Date;

public class Resume {
    private Long resid;

    private String name;

    private Integer sex;

    private Integer phone;

    private Date birthday;

    private Integer eduid;

    private Integer wyid;

    private String note;

    private String appendix;

    private Integer state;

    private Long eid;

    public Long getResid() {
        return resid;
    }

    public void setResid(Long resid) {
        this.resid = resid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getEduid() {
        return eduid;
    }

    public void setEduid(Integer eduid) {
        this.eduid = eduid;
    }

    public Integer getWyid() {
        return wyid;
    }

    public void setWyid(Integer wyid) {
        this.wyid = wyid;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
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
        sb.append(", resid=").append(resid);
        sb.append(", name=").append(name);
        sb.append(", sex=").append(sex);
        sb.append(", phone=").append(phone);
        sb.append(", birthday=").append(birthday);
        sb.append(", eduid=").append(eduid);
        sb.append(", wyid=").append(wyid);
        sb.append(", note=").append(note);
        sb.append(", appendix=").append(appendix);
        sb.append(", state=").append(state);
        sb.append(", eid=").append(eid);
        sb.append("]");
        return sb.toString();
    }
}