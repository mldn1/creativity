package com.yootk.dubbo.vo;

public class ResumeState {
    private Long rsid;

    private String title;

    public Long getRsid() {
        return rsid;
    }

    public void setRsid(Long rsid) {
        this.rsid = rsid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", rsid=").append(rsid);
        sb.append(", title=").append(title);
        sb.append("]");
        return sb.toString();
    }
}