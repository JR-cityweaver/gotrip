package com.qianfeng.goutrip.shiro.myrealm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.qianfeng.goutrip.utils.MD5Utils;
import com.qianfeng.goutrip.zcy.bean.UserDTO;
import com.qianfeng.goutrip.zcy.dao.IRedisDAO;
import com.qianfeng.goutrip.zcy.dao.IUserDAO;

public class MyRealm extends AuthorizingRealm {

	private IUserDAO userDAO;
	
	private IRedisDAO redisDAO;
	
	
	@Autowired
	public void setRedisDAO(IRedisDAO redisDAO) {
		this.redisDAO = redisDAO;
	}

	@Autowired
	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	@Override
	public String getName() {	
		return "MyRealm";
	}



	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		
	UsernamePasswordToken upToken=(UsernamePasswordToken) token;
	String user_phone=upToken.getUsername();
	String password=new String(upToken.getPassword());
	UserDTO userDTO=new UserDTO();
	userDTO.setUser_phone(user_phone);
	userDTO.setUser_password(password);
	//UserDTO user= redisDAO.get("user", UserDTO.class);
	//System.out.println("这是redis读取的user"+user);
	//if(user==null){
	UserDTO user=userDAO.loginByUser(userDTO);
	// System.out.println("这是从mysql读取的user"+user);
	// redisDAO.set("user", userDTO);
	//}
	if(user!=null){
		SimpleAuthenticationInfo info=new SimpleAuthenticationInfo(user.getUser_phone(),user.getUser_password(),getName());
		return info;
	}
		return null;
	}

}
