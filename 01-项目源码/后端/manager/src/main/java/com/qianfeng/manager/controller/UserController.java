package com.qianfeng.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qianfeng.manager.bean.UserBean;
import com.qianfeng.manager.service.IUserService;

@Controller
public class UserController {
	private IUserService userService;
	private	static final int PAGE_SIZE = 5;
	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	@RequestMapping("/queryUser.do")
	public String queryUserList(@RequestParam(required=false) Integer pageNo,Model model){
		if(pageNo == null){
			pageNo=1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*PAGE_SIZE;
		List<UserBean> userList = userService.queryUserList(pageNo);
		int totalPageNo = userService.queryUserCount();
		model.addAttribute("userList", userList);
		model.addAttribute("totalPageNo", totalPageNo);
		return "userInfo.jsp";
	}
}
