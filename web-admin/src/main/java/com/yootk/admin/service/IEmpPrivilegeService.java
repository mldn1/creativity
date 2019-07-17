package com.yootk.admin.service;


import com.yootk.dubbo.vo.Emp;

public interface IEmpPrivilegeService {
    public Emp getByPhone(String phone);
    public boolean setDateAndIp(String lastrecord, String ip, String phone);
}
