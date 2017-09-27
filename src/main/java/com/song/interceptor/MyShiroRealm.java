package com.song.interceptor;

import com.song.utils.DecriptUtil;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by lenovo on 2017/9/27.
 */
public class MyShiroRealm extends AuthorizingRealm {

    //默认用户和密码
    private static final String USER_NAME = "luoguohui";
    private static final String PASSWORD = "123456";

    /**
     * 授权验证
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        Set<String> roleNames = new HashSet<String>();
        Set<String> permissions = new HashSet<String>();
        roleNames.add("administrator");//添加角色
        permissions.add("newPage.jhtml");  //添加权限
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roleNames);
        info.setStringPermissions(permissions);
        return info;
    }

    /**
     *   登录验证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
            UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
            if(token.getUsername().equals(USER_NAME)){
                return new SimpleAuthenticationInfo(USER_NAME, DecriptUtil.MD5(PASSWORD), getName());
            }else{
                throw new AuthenticationException();
            }
    }
}
