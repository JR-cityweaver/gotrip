package com.qianfeng.manager.shiro.test;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.subject.Subject;

import junit.framework.TestCase;

public class Test extends TestCase {
	public void testShiro(){
		IniSecurityManagerFactory factory = new IniSecurityManagerFactory();
		org.apache.shiro.mgt.SecurityManager manager = factory.getInstance();
		SecurityUtils.setSecurityManager(manager);
		Subject subject = SecurityUtils.getSubject();
		try {
			subject.login(new UsernamePasswordToken("zhangsan", "123456"));
			System.out.println("登录成功");
			subject.checkPermission("管理员管理");
			System.out.println("有此权限");
		} catch (AuthenticationException e) {
			System.out.println("登录失败");
			e.printStackTrace();
		}catch (AuthorizationException e) {
			System.out.println("没有此角色或权限");
			e.printStackTrace();
		}
	}
}
