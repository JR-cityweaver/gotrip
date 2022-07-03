package com.qianfeng.goutrip.fqy.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ImageController {
	String strs = "qwertyuipasdfghjkzxcvbnm23456789ABCDEFGHIJKLMNOPQRSTUVWSYZ";
	@RequestMapping("/image.do")
	public void image(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException{
		BufferedImage bufferImage = new BufferedImage(80, 40, BufferedImage.TYPE_INT_RGB);
		//获取画笔
		Graphics graphics = bufferImage.getGraphics();
		//将画布填充为白色
		graphics.setColor(Color.gray);
		//填充画布
		graphics.fillRect(0, 0, 80, 40);
		int size = strs.length();
		char[] codes = new char[4];
		Random random = new Random();
		graphics.setFont(new Font("宋体", Font.PLAIN, 18));
		for (int i=0; i<4; i++){
			int index = random.nextInt(size);
			Character c = strs.charAt(index);
			codes[i]=c;
			graphics.setColor(Color.BLUE);
			graphics.drawString(c.toString(),i*20,30);
		}
		//为了验证验证码的正确性，需要将验证码保存到session中
		request.getSession().setAttribute("code", new String(codes));
		response.setHeader("Cache-control", "no-cache");
		//释放资源
		graphics.dispose();
		//将图片对象写入网络输出流
		ImageIO.write(bufferImage, "png", response.getOutputStream());
}
	
	@RequestMapping("/checkCode.do")
	public void checkCode(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String code = request.getParameter("code");
		String code_init = (String) request.getSession().getAttribute("code");
		if(code_init.equals(code)){
			response.getWriter().write("success");
			//response返回的值success如果和ajax中对应的data值相同就通过
		}else{
			response.getWriter().write("failure");
		}
	}
	
	
}
