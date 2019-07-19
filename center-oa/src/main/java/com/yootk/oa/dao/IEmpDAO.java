package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Emp;

import java.util.Map;

public interface IEmpDAO {
    /**
     * 根据手机号查询雇员的详细信息
     * @param phone 雇员手机号（ID）
     * @return
     */
    public Emp findByPhone(String phone);
    /**
     * 修改密码
     * @param password 需要修改的新密码
     * @param phone 需要被修改的雇员手机号（ID）
     * @return
     */
    public int updateByPassword(String password,String phone);

    public int updatePhoto(String photo,String phone);


    public int updateEmp(Emp emp);

}
