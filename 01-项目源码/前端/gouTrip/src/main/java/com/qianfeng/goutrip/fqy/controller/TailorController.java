package com.qianfeng.goutrip.fqy.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qianfeng.goutrip.fqy.bean.TbTailor;
import com.qianfeng.goutrip.fqy.service.ITailorService;

@Controller
public class TailorController {
	
	private ITailorService tailorService;
	
	@Autowired
	public void setTailorService(ITailorService tailorService) {
		this.tailorService = tailorService;
	}
	
	@RequestMapping("/tailor.do")
	public String insertTailor(TbTailor tailor,Model model,HttpSession session){
		Object obj = session.getAttribute("userSession");
		if(obj == null){
			return "loginRegister.jsp";
		}else{
			//获得订单编号
			Date date = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
			String time = dateFormat.format(date);
			long timeNow = new Date().getTime();//获得当前的毫秒数
			String time1 = String.valueOf(timeNow);//转成String类型
			String orderNum = time + time1;
			tailor.setTailor_num(orderNum);
			
			tailorService.insertTailor(tailor);
			model.addAttribute("tailor", tailor);
			return "myself.jsp";
		}
	}
}
