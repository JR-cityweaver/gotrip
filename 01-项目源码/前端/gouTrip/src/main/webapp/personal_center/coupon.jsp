<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String basePath=request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0046)http://www.goutrip.com/memberNew/my_index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <title>我的收藏iframe</title>
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
       <!--优惠券 开始-->
                    <div class="myCoupon">
                        <div class="title">
                            <span>我的优惠券</span>
                        </div>
                        <ul class="state clearfix ">
                            <li url="/member/couponsList.json?status=1" class="bor_btm"><a href="javascript:void(0)" id="" class="tab_a">可使用(<i id="noUse">0</i>)</a></li>
                            <li url="/member/couponsList.json?status=2"><a href="javascript:void(0)" id="">已使用(<i id="used">0</i>)</a></li>
                            <li url="/member/couponsList.json?status=3"><a href="javascript:void(0)" id="">已过期(<i id="pastTime">0</i>)</a></li>
                        </ul>
                        <div class="orders">
                            <ul id="">
                                <!--加载内容-->
                                <li>面值</li>
                                <li>名称</li>
                                <li>开始使用时间</li>
                                <li>结束使用时间</li>
                            </ul>
                            <div>
                                <div class="all tab clearfix list_show">	
	                                <div class="no_inner">
									    <img src="../myself_files/no_img.png" alt="">
									    <p>您最近没有领取过优惠券哦</p>
									</div>
								
								</div>
                                <div class="no_pay tab clearfix list_show" style="display: none;">
                                    <!--已使用的优惠券-->
                                </div>
                                <div class="no_trip tab clearfix list_show" style="display: none;">
                                    <!--已过期的优惠券-->
                                </div>
                            </div>
                        </div>

                    </div>
                    <!--优惠券 结束-->
</body>
</html>