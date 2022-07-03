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
        		<!--收藏 开始-->
                    <div class="collect">
                        <div class="title">
                            <span>我的收藏</span>
                        </div>
                       <!--  <ol class="clearfix labelTabs">
                            <li class="a_cl" url="/bookMarkNew/my_list.json"><span>全部</span></li>
                            <li url="/bookMarkNew/my_list.json?type=2"><span id="">主题游线路(<span id="routeNum">1</span>)</span></li>
                            <li url="/bookMarkNew/my_list.json?type=1"><span id="">主题酒店(<span id="hotelNum">0</span>)</span></li>
                            <li url="/bookMarkNew/my_list.json?type=4"><span id="">签证(<span id="visaNum">0</span>)</span></li>
                            <li url="/bookMarkNew/my_list.json?type=6"><span id="">WIFI(<span id="wifiNum">0</span>)</span></li>
                        </ol> -->
                        <div>
                        	<div class="themetour_order list_show">                     		
	                        	<ul>
	                        	<c:forEach items="${collList}" var="collect"> 
	                        	<a href="<%=basePath %>/routeDetail/detail.do?route_detail=${collect.collect_detail_id}&route_img=${collect.collect_picture}" target="view_window">
							
									<li class="tablehead clearfix">
								        <div class="img_div">
								           <img  src="<%=basePath %>/route/image/${collect.collect_picture }">
								            	<span>主题游</span>
								        </div>
								        <p>${collect.collect_name }</p>
								    </li>
								        </a>
								    </c:forEach>
								</ul>
							
							</div>
	                        <div class="themetour_order list_show">
	                            <!--收藏夹列表2-->
	                        </div>
	                        <div class="themetour_order list_show">
	                            <!--收藏夹列表3-->
	                        </div>
	                        <div class="themetour_order list_show">
	                            <!--收藏夹列表4-->
	                        </div>
	                        <div class="themetour_order list_show">
	                            <!--收藏夹列表5-->
	                        </div>
                        </div>
                    </div>
                    <!--收藏 结束-->
<script type="text/javascript">
	function check(a,b){
		var detailId=a;
		var picture=b;
		
			$.post("<%=basePath%>/collect/select.do",{collect_detail_id:detailId},
				function(data,status){
					if("empty"==data){
							layer.alert("收藏夹空空如也！");
							location.reload([true]);
						}else{
					window.open("<%=basePath %>/routeDetail/detail.do?route_detail=detailId&route_img=picture");
							}
				}
			);

		};
</script>
</body>
</html>