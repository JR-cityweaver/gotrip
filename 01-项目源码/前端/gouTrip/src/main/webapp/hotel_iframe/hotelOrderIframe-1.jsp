<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String basePath=request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0046)http://www.goutrip.com/memberNew/my_index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <title>酒店订单iframe</title>
    <link rel="stylesheet" href="<%=basePath%>/myself_files/public.css">
    <link rel="stylesheet" href="<%=basePath%>/myself_files/common.css">
    <link rel="shortcut icon" type="image/x-icon" href="<%=basePath%>/http://www.goutrip.com/images_new/favicon.ico">
    <link rel="stylesheet" href="<%=basePath%>/myself_files/myIndex2.css">
    <script src="<%=basePath%>/myself_files/hm.js.下载"></script><script src="<%=basePath%>/myself_files/jquery-1.11.3.js.下载"></script>
    <script src="<%=basePath%>/myself_files/layer.js.下载"></script><link rel="stylesheet" href="<%=basePath%>/myself_files/layer.css" id="layui_layer_skinlayercss">
    <script src="<%=basePath%>/myself_files/myIndex.js.下载"></script>
    <script src="<%=basePath%>/myself_files/three_Calendar.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/myself_files/DateFormat.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/myself_files/jquery-1.8.0.min.js.下载"></script>
</head>
<body>
	 <div class="hotelOrder">
         <div class="title">
              <span>酒店订单</span>
         </div>
         <ul class="state clearfix">
             <li class="bor_btm" url="/hotelNew/orders.html"><a href="<%=basePath%>/hotelOrderIframe.jsp" target="content" class="addd">全部订单<sup id="hotelOrderNumberAll">${totalCount}</sup></a></li>
             <li class="bor_btm" url="/hotelNew/orders.html?status=1"><a href="<%=basePath%>/hotel_iframe/hotelOrderIframe-1.jsp" target="content" class="addd">待付款<sup id="hotelOrderNumberNoPay">${typeCount}</sup></a></li>
             <li class="bor_btm" url="/hotelNew/orders.html?status=2"><a href="<%=basePath%>/hotel_iframe/hotelOrderIframe-2.jsp" target="content" class="addd">待出行<sup id="hotelOrderNumberPay"></sup></a></li>
         </ul>
         <div class="orders">
             <ul id="">
                  <!--加载订单内容-->
                  <li>酒店信息</li>
                  <li>订单金额</li>
                  <li>出行时间</li>
                  <li>订单状态</li>
                  <li>合同状态</li>
                  <li>其他</li>
             </ul>
             <iframe name="content" style="width: 860px;height: 800px;border: 0px;" scrolling="no" src="<%=basePath%>/ordertype.do?pageNo=1&hotelorder_type=待付款"></iframe>
         </div>
    </div>
</body>
</html>