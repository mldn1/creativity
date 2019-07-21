package com.yootk.oa.service;

import com.yootk.dubbo.vo.Emp;

public interface IEmpAllPrivilegeService {
    public boolean setPassword(String new_password,String old_password,String phone);
    public boolean setPhoto(String photo,String phone);
    public boolean upadteEmp(Emp emp);
}
