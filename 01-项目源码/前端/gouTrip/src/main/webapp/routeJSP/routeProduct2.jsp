<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="<%=basePath %>/route/public.css">
    <link rel="stylesheet" href="<%=basePath %>/route/common.css">
    <link rel="stylesheet" href="<%=basePath %>/route/themeList.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="<%=basePath %>/route/hm.js"></script><script src="<%=basePath %>/route/jquery-1.11.3.js"></script>
    <script src="<%=basePath %>/route/layer.js"></script><link rel="stylesheet" href="<%=basePath %>/route/layer.css" id="layui_layer_skinlayercss">
    <script type="text/javascript" src="<%=basePath %>/route/ojbUrl.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="main">
   <!--主题右部开始-->
        <div class="Ma_right">
            
            <!--主题产品列表-->
            <div>
                <!--每一小块内容-->
                		    							          
	    				<c:forEach items="${routeList }" var="route">
	    				<div>
			                <a href="http://www.goutrip.com/<%=basePath %>/route/2357.html" target="_blank">
			                	<img class="bgImage" src="<%=basePath %>/route/4fa506e7ca62405e667185caea6712.jpg" alt="${route.route_name }">
			                </a>
			                
			                <p><a href="http://www.goutrip.com/<%=basePath %>/route/2357.html" target="_blank">${route.route_name }</a></p>
			                <p>
			                    <span class="money"><strong>${route.route_price }</strong>元起/人</span>
			                    <span class="address"><img src="<%=basePath %>/route/Pro_List_01.png"> 出发地：${route.route_beginning }</span>
			                </p>
			                
			            </div>
			            </c:forEach>
	    				
                </div>
                <!--翻页开始-->
				
				<!--翻页结束-->
       </div>
   </div>
</body>
</html>