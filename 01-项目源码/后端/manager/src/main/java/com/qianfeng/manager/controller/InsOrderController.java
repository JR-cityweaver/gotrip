package com.qianfeng.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qianfeng.manager.bean.InsOrderBean;
import com.qianfeng.manager.service.IInsOrderService;

@Controller
@RequestMapping("/insorder")
public class InsOrderController {

	private final static int page_size=3;
	private IInsOrderService insOrderService;
	@Autowired
	public void setInsOrderService(IInsOrderService insOrderService) {
		this.insOrderService = insOrderService;
	}
	
	@RequestMapping("/index.do")
	public String selectIns(@RequestParam(required=false) Integer pageNo,Model model,Integer ins_id){
		if(pageNo==null){
			pageNo=1;
		}
		model.addAttribute("pageNo", pageNo);
		pageNo=(pageNo-1)*page_size;
		List<InsOrderBean> insList=insOrderService.selectIns(pageNo);
		int totalpage=insOrderService.selectInsCount(ins_id);
		model.addAttribute("insList", insList);
		model.addAttribute("count", totalpage);
		return "../insorder.jsp";
	}
	
	@RequestMapping("/delete.do")
	public String deleteIns(Integer ins_id,@RequestParam(required=false) Integer pageNo,Model model){
		insOrderService.deleteInsOrder(ins_id);
		return "index.do";
	}
}
