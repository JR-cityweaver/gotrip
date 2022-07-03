<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台欢迎页</title>
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/content.css" />

</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">管理首页</a>></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>网站后台</h3>
				<h1>主题路线营业额：${totalTheme}元</h1>
				<h1>酒店预订营业额：${TotalHotel}元</h1>
			</div>
			<div class="public-content-cont">
				<h3 style="width: 100%;text-align: center; padding: 50px 0; font-size: 16px; color: #FF0000;"> 欢迎登陆够旅游网站后台！</h3>
			</div>
		</div>
	</div>
</body>

</html>