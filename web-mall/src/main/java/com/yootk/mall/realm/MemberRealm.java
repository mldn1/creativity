package com.yootk.mall.realm;

import com.yootk.dubbo.vo.Member;
import com.yootk.mall.service.IMemberMallService;
import com.yootk.util.encrypt.EncryptUtil;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberRealm extends AuthorizingRealm {
    @Autowired
    private IMemberMallService memberMallService;

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        System.err.println("=====================认证处理================");
        //进行用户认证处理
        String phone =  (String) token.getPrincipal();
        String password = new String((char[]) token.getCredentials());
        Member member = this.memberMallService.login(phone);
        if (member == null){
            throw new UnknownAccountException("用户不存在");
        }
        if (!member.getPassword().equals(EncryptUtil.encode(password))){
            throw new IncorrectCredentialsException("错误的用户名或密码");
        }
        if (member.getState().equals(1)){
            throw new LockedAccountException("账户被锁定");
        }
        return new SimpleAuthenticationInfo(token.getPrincipal(),token.getCredentials(),this.getName());
    }
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        SimpleAuthorizationInfo authz = new SimpleAuthorizationInfo();
        return authz;
    }
}
