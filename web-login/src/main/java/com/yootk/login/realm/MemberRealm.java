package com.yootk.login.realm;

import com.yootk.dubbo.vo.Emp;
import com.yootk.dubbo.vo.Member;
import com.yootk.login.service.IOAuthService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;


// 此处不使用扫描配置，通过bean配置文件的模式来完成
public class MemberRealm extends AuthorizingRealm {
    @Autowired
    private IOAuthService oauthService;
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        System.err.println("【1】｛MemberRealm｝============== 用户认证处理 ==============");
        String mid = (String) token.getPrincipal() ;
        Emp emp = this.oauthService.getEmp(mid) ; // 根据mid查询用户信息
        if (emp == null) {   // 用户信息不存在
            throw new UnknownAccountException(mid + "账户信息不存在！") ;
        }
        if (emp.getState().equals(1)) { // 用户锁定了
            throw new LockedAccountException(mid + "账户已经被锁定！");
        }
        return new SimpleAuthenticationInfo(token.getPrincipal(),emp.getPassword(),this.getName());
    }
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        SimpleAuthorizationInfo authz = new SimpleAuthorizationInfo() ;
        return authz;
    }
}
