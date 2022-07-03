package com.qianfeng.manager.controller;

import java.io.IOException;
import java.util.List;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qianfeng.manager.bean.ManagerBean;
import com.qianfeng.manager.service.IManagerService;

@Controller
public class ManagerController {
	private IManagerService managerService;
	private	static final int PAGE_SIZE = 5;
	@Autowired
	public void setManagerService(IManagerService managerService) {
		this.managerService = managerService;
	}
	/**
	 * 登录
	 * @param session
	 * @param resp
	 * @param username
	 * @param password
	 * @param loginManager
	 * @throws IOException
	 */
	@RequestMapping("/login.do")
	public void login(HttpSession session,HttpServletResponse resp,String username,String password,ManagerBean loginManager
) throws IOException{
		Subject subject = SecurityUtils.getSubject();
		try {
			subject.login(new UsernamePasswordToken(username, password));
			loginManager.setmName(username);
			loginManager.setmPassword(password);
			
			String totalTheme = managerService.getTotalPrice();
			session.setAttribute("totalTheme", totalTheme);
			String TotalHotel = managerService.getHotelPrice();
			session.setAttribute("TotalHotel", TotalHotel);
			
			session.setAttribute("loginManager", loginManager);
			resp.getWriter().write("success");
		} catch (AuthenticationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			resp.getWriter().write("failure");
		}
	}
	/**
	 * 退出
	 * @param session
	 * @return 登录界面
	 */
	@RequestMapping("/quit.do")
	public String quit(HttpSession session){
		session.removeAttribute("loginManager");
		session.removeAttribute("totalTheme");
		session.removeAttribute("TotalHotel");
		return "login.jsp";
	}
	@RequestMapping("/queryManager.do")
	public String queryManager(Model model,@RequestParam(required=false) Integer pageNo){
		if(pageNo == null){
			pageNo=1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*PAGE_SIZE;
		List<ManagerBean> managerList = managerService.getManagerList(pageNo);
		int totalPageNo = managerService.getManagerCount();
		model.addAttribute("managerList", managerList);
		model.addAttribute("totalPageNo", totalPageNo);
		return "manager.jsp";
	}
	
	@RequestMapping("/deleteManager.do")
	public String deleteManager(Integer mId,Model model,@RequestParam(required=false) Integer pageNo){
		managerService.deleteManager(mId);
		return "queryManager.do";
	}
	
	@RequestMapping("/insertManager.do")
	public String insertManager(ManagerBean manager,@RequestParam(required=false) Integer pageNo,Model model){
	
		managerService.insertManager(manager);
		return "queryManager.do";
	}
}
