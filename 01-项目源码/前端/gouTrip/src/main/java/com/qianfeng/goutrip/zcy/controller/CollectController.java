package com.qianfeng.goutrip.zcy.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qianfeng.goutrip.zcy.bean.CollectDTO;
import com.qianfeng.goutrip.zcy.service.ICollectService;

@Controller
@RequestMapping("/collect")
public class CollectController {

	private ICollectService collectService;
	
	@Autowired
	public void setCollectService(ICollectService collectService) {
		this.collectService = collectService;
	}

	@RequestMapping("/add.do")
	public void insertCollect(CollectDTO collect,Model model){
		collectService.insertColl(collect);	
	}
	
	@RequestMapping("/delete.do")
	public void deleteColl(Integer collect_detail_id){
		collectService.deleteColl(collect_detail_id);
	}
	
	@RequestMapping("/selectSingle.do")
	public void selectCollById(CollectDTO collect,HttpServletResponse response){
		CollectDTO collects=collectService.selectCollById(collect.getCollect_detail_id());
		if(null==collects){			
			try {
				response.getWriter().write("success");
				collectService.insertColl(collect);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else{
			try {
				response.getWriter().write("failed");
				collectService.deleteColl(collect.getCollect_detail_id());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
    }
	
	@RequestMapping("/all.do")
	public String selectAllColl(Model model,HttpSession session){
		Integer user_collect=(Integer) session.getAttribute("user_collect");
		List<CollectDTO> collList=collectService.selectAll(user_collect);
		model.addAttribute("collList",collList);
		return "/personal_center/myCollect.jsp";
		
	}
	
	@RequestMapping("/select.do")
	public void selectCollect(Integer collect_detail_id,HttpServletResponse response){
		CollectDTO collect=collectService.selectCollById(collect_detail_id);
		if(null==collect){
			try {
				response.getWriter().write("empty");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
