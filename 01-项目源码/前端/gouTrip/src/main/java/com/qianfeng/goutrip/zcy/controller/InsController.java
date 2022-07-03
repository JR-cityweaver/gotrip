package com.qianfeng.goutrip.zcy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qianfeng.goutrip.zcy.bean.InsDTO;
import com.qianfeng.goutrip.zcy.service.IInsService;

@Controller
@RequestMapping("/ins")
public class InsController {

	private IInsService insService;
	
	@Autowired
	public void setInsService(IInsService insService) {
		this.insService = insService;
	}

	@RequestMapping("/insert.do")
	public void insertIns(InsDTO insDTO){
		System.out.println(insDTO.getIns_name());
		insService.insertIns(insDTO);
	}
}
