package com.yootk.authc.dao;

import com.yootk.dubbo.vo.Emp;


public interface IEmpDAO {
    public Emp findById(String phone);
    public int updateDateAndIp(String lastrecord, String ip, String phone);
}
