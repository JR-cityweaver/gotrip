package com.qianfeng.goutrip.zcy.controller;


import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.qianfeng.goutrip.utils.MD5Utils;
import com.qianfeng.goutrip.zcy.bean.UserDTO;
import com.qianfeng.goutrip.zcy.dao.IUserDAO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private IUserDAO userDAO;
	
	@Autowired
	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@RequestMapping("/login.do")
	public String login(String user_phone,String user_password,HttpSession session,HttpServletRequest request,HttpServletResponse response){
		
		Subject subject=SecurityUtils.getSubject();
		
		String password = MD5Utils.digest(user_password);
		UserDTO userDTO = new UserDTO();
		userDTO.setUser_phone(user_phone);
		userDTO.setUser_password(password);
		UserDTO user = userDAO.loginByUser(userDTO);
		
		Integer user_collect=user.getUser_id();
		session.setMaxInactiveInterval(1800);
		session.setAttribute("user_collect", user_collect);			
		session.setAttribute("userSession", user);
		subject.login(new UsernamePasswordToken(user_phone,password));
		org.apache.shiro.web.util.SavedRequest a=WebUtils.getSavedRequest(request);
		if(a==null){
			return "../home.jsp";
		}else{
			String url=a.getRequestUrl();
			String newUrl=url.substring(8);
			return "redirect:"+newUrl;
		}
		
		
	}
	
	@RequestMapping("/singout.do")
	public String singOut(){
		Subject subject=SecurityUtils.getSubject();
		subject.logout();
		return "redirect:../home.jsp";
	}
	
	@RequestMapping("/update.do")
	public String updateInfo(UserDTO userDTO,Model model){
		userDAO.updateInfo(userDTO);
		return "/user/select.do";
	}
	
	@RequestMapping("/select.do")
	public String selectInfo(Model model,HttpSession session){
		Integer user_id=(Integer)session.getAttribute("user_collect");
		UserDTO userInfo=userDAO.selectInfo(user_id);
		model.addAttribute("userInfo",userInfo);
		return "../personal_center/profile_iframe.jsp";	
	}
	
	@RequestMapping("/check.do")
	public void check(String user_phone,String user_password,HttpServletResponse response){
		String password = MD5Utils.digest(user_password);
		UserDTO userDTO = new UserDTO();
		userDTO.setUser_phone(user_phone);
		userDTO.setUser_password(password);
		UserDTO user=userDAO.loginByUser(userDTO);
		if(null==user){		
			try {
				response.getWriter().write("empty");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}else{
		try {
			response.getWriter().write("exist");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}
	
	@RequestMapping("/img.do")
	public String  uploadImg(@RequestParam(value = "file", required = false)MultipartFile file,HttpServletRequest request,Model model){
		System.out.println("开始");
		
		String path=request.getSession().getServletContext().getRealPath("/myself_files"); 
		String fileName=new Date().getTime()+".jpg";
		System.out.println(path);
		File targetFile=new File(path,fileName);
		String imgPath=path+fileName;
		if(!targetFile.exists()){
			targetFile.mkdirs();
		}
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {			
			e.printStackTrace();
		} 
		
		return "redirect:../myself.jsp";
		
	}
}
