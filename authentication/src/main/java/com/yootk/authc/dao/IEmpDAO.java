package com.yootk.authc.dao;

import com.yootk.dubbo.vo.Emp;

import java.util.List;

public interface IEmpDAO {
    public Emp findById(String mid);
    public int updateDateAndIp(String lastrecord, String ip, String phone);
}
