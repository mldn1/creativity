package com.yootk.dubbo.service;

import com.yootk.dubbo.vo.Emp;

public interface IEmpAllService {
    public boolean updatePassword(String new_password,String old_password,String phone);
    public boolean updatePhoto(String photo,String phone);
}
