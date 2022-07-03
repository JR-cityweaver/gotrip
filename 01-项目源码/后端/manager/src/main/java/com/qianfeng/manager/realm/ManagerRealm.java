package com.qianfeng.manager.realm;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.qianfeng.manager.bean.ManagerBean;
import com.qianfeng.manager.service.IManagerService;

public class ManagerRealm extends AuthorizingRealm{
	private IManagerService managerService;
	
	@Autowired
	public void setManagerService(IManagerService managerService) {
		this.managerService = managerService;
	}
	@Override
	public String getName() {
		return "ManagerRealm";
	}
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		Iterator<String> it = principals.iterator();
		String mName = it.next();
		List<String> permissionList = managerService.getPermissionList(mName);
		if(permissionList ==null){
			return null;
		}
		Set<String> permissionSet = new HashSet<String>(permissionList);
		SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
		simpleAuthorizationInfo.setStringPermissions(permissionSet);
		return simpleAuthorizationInfo;
	}
	/**
	 * 查询并提供用户信息
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		UsernamePasswordToken upToken=(UsernamePasswordToken) token;
		String username = upToken.getUsername();
		String password = new String(upToken.getPassword());
		ManagerBean managerBean = new ManagerBean();
		managerBean.setmName(username);
		managerBean.setmPassword(password);
		ManagerBean manager = managerService.getManager(managerBean);
		if(manager != null){
			return new SimpleAuthenticationInfo(manager.getmName(),manager.getmPassword(), getName());
		}
		return null;
	}

	
}
