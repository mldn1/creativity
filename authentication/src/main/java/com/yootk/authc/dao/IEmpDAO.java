package com.yootk.authc.dao;

import com.yootk.dubbo.vo.Emp;
import com.yootk.dubbo.vo.Member;

public interface IEmpDAO {
    public Emp findById(String mid);
}
