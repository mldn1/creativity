package com.yootk.dubbo.vo;

public class WorkYears {
    private Long wyid;

    private String title;

    public Long getWyid() {
        return wyid;
    }

    public void setWyid(Long wyid) {
        this.wyid = wyid;
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
        sb.append(", wyid=").append(wyid);
        sb.append(", title=").append(title);
        sb.append("]");
        return sb.toString();
    }
}