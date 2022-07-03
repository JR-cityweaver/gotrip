package com.qianfeng.goutrip.zcy.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qianfeng.goutrip.zcy.bean.CollectDTO;
import com.qianfeng.goutrip.zcy.bean.RouteDetailDTO;
import com.qianfeng.goutrip.zcy.service.ICollectService;
import com.qianfeng.goutrip.zcy.service.IRouteDetailService;

@Controller
@RequestMapping("/routeDetail")
public class RouteDetailController {

	private IRouteDetailService routeDetailService;
	private ICollectService collectService;
	
	
	@Autowired
	public void setCollectService(ICollectService collectService) {
		this.collectService = collectService;
	}

	@Autowired
	public void setRouteDetailService(IRouteDetailService routeDetailService) {
		this.routeDetailService = routeDetailService;
	}
	
	@RequestMapping("/detail.do")
	public String queryRouteDetail(Integer route_detail,String route_img,Model model){
		List<RouteDetailDTO> detailList=routeDetailService.queryRouteDetail(route_detail);
		CollectDTO collect=collectService.selectCollById(route_detail);
		if(null!=collect){
			String str="exist";
			model.addAttribute("str",str);
		}
		model.addAttribute("detailList",detailList);
		model.addAttribute("route_img",route_img);
		return "/routeDetail.jsp";
		
	}
	
	@RequestMapping("/orderWrite.do")
	public String goOrderWrite(Integer route_detail,Model model,HttpSession session){
		List<RouteDetailDTO> detailList= routeDetailService.queryRouteDetail(route_detail);
		model.addAttribute("detailList",detailList);
		Random rand=new Random();
		int token=rand.nextInt(1000000);
		session.setAttribute("token", token);
		model.addAttribute("token",token);
		return "/routeOrderWrite.jsp";
	}
}
