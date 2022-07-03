package com.qianfeng.goutrip.fqy.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qianfeng.goutrip.fqy.bean.TbAddress;
import com.qianfeng.goutrip.fqy.bean.TbHotelOrder;
import com.qianfeng.goutrip.fqy.bean.TbTraveller;
import com.qianfeng.goutrip.fqy.service.IMyselfService;

@Controller
public class MyselfController {
	
	private IMyselfService myselfService;

	@Autowired
	public void setMyselfService(IMyselfService myselfService) {
		this.myselfService = myselfService;
	}
	
	@RequestMapping("/address.do")
	public String insertAddr(TbAddress addr){
		myselfService.insertAddr(addr);
		return "getAddr.do";
	}
	
	@RequestMapping("/getAddr.do")
	public String getAddr(TbAddress addr,Integer pageNo, Model model,HttpSession session){
		if(pageNo == null){
			pageNo = 1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*IMyselfService.ADDR_SIZE;
		List<TbAddress> addrList = myselfService.getAddress(pageNo);
		int page = myselfService.addrCount();
		if(addr != null){
			session.setMaxInactiveInterval(2000000000*2000000000);
			session.setAttribute("addrSession", addr);
		}
		model.addAttribute("addrList", addrList);
		model.addAttribute("addr",addr);
		model.addAttribute("page", page);
		return "personal_center/address.jsp";
	}
	
	@RequestMapping("/deleteAddr.do")
	public String deleteAddr(Integer address_id){
		myselfService.deleteAddr(address_id);
		return "getAddr.do";
	}
	
	@RequestMapping("/updateAddr.do")
	public String updateAddr(TbAddress addr){
		myselfService.updateAddr(addr);
		return "getAddr.do";
	}
	
	@RequestMapping("/saveTraveller.do")
	public String saveTraveller(TbTraveller traveller){
		myselfService.saveTraveller(traveller);
		return "getTra.do";
	}
	
	@RequestMapping("/getTra.do")
	public String getTraveller(TbTraveller traveller,Integer pageNo,Model model,HttpSession session){
		if(pageNo == null){
			pageNo = 1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo = (pageNo-1)*IMyselfService.ADDR_SIZE;
		List<TbTraveller> traList = myselfService.getTraveller(pageNo);
		model.addAttribute("traList", traList);
		int page = myselfService.TraCount();
		model.addAttribute("page", page);
		if(traveller != null){
			session.setMaxInactiveInterval(20000*20000);
			session.setAttribute("traSession", traveller);
		}
		model.addAttribute("traveller", traveller);
		return "personal_center/traveller.jsp";
	}
	
	@RequestMapping("/deleteTra.do")
	public String deleteTra(Integer traveller_id){
		myselfService.deleteTra(traveller_id);
		return "getTra.do";
	}
	
	@RequestMapping("/updateTra.do")
	public String updateTra(TbTraveller traveller){
		myselfService.updateTra(traveller);
		return "getTra.do";
	}
}
