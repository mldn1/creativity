package com.yootk.oa.service;

import com.yootk.dubbo.vo.Emp;

public interface IEmpPrivilegeService {
    public Emp getEmp(String phone);
    public boolean setPassword(String new_password,String old_password,String phone);
    public boolean setDateAndIp(String lastrecord, String ip, String phone);
}
