package com.yootk.dubbo.vo;

public class ApprovalResult {
    private Long arid;

    private Integer result;

    public Long getArid() {
        return arid;
    }

    public void setArid(Long arid) {
        this.arid = arid;
    }

    public Integer getResult() {
        return result;
    }

    public void setResult(Integer result) {
        this.result = result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", arid=").append(arid);
        sb.append(", result=").append(result);
        sb.append("]");
        return sb.toString();
    }
}