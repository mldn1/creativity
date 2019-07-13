package com.yootk.util.test;

import com.yootk.util.encrypt.EncryptUtil;
import org.junit.Test;

public class PasswordMD5 {
    @Test
    public void password(){
        System.out.println(EncryptUtil.encode("hello"));
    }
}
