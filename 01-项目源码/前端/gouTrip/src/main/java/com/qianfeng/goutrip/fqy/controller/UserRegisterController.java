package com.qianfeng.goutrip.fqy.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qianfeng.goutrip.fqy.bean.TbUser;
import com.qianfeng.goutrip.fqy.service.IUserService;
import com.qianfeng.goutrip.utils.MD5Utils;

@Controller
public class UserRegisterController {
	
	private IUserService userService;

	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping("/register.do")
	public String registerUser(TbUser user,Model model){
		user.setUser_password(MD5Utils.digest(user.getUser_password()));
		userService.registerUser(user);
		model.addAttribute("user", user);
		return "loginRegister.jsp";
	}
	
	@RequestMapping("/updatePW.do")
	public void updatePW(TbUser user,HttpSession session,String user_password,HttpServletRequest req,HttpServletResponse resp) throws IOException{
		String oldpw = req.getParameter("oldPW");
		String oldPWMD5 = MD5Utils.digest(oldpw);
		String sessionPW = req.getParameter("oldPWMD5");
		if(oldPWMD5.equals(sessionPW)){
			resp.getWriter().write("success");
			user.setUser_password(MD5Utils.digest(user.getUser_password()));
			userService.updatePW(user);
			session.removeAttribute("userSession");
		}else{
			resp.getWriter().write("fail");
		}
	}
}
