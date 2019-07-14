package com.yootk.dubbo.vo;

public class Education {
    private Long eduid;

    private String title;

    public Long getEduid() {
        return eduid;
    }

    public void setEduid(Long eduid) {
        this.eduid = eduid;
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
        sb.append(", eduid=").append(eduid);
        sb.append(", title=").append(title);
        sb.append("]");
        return sb.toString();
    }
}