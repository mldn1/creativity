package com.yootk.dubbo.vo.mall;

import java.io.Serializable;

public class CategoryGoods implements Serializable {
    private Long cid;
    private String gid;

    public CategoryGoods() {}

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
    }

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    @Override
    public String toString() {
        return "CategoryGoods{" +
                "cid=" + cid +
                ", gid='" + gid + '\'' +
                '}';
    }
}
