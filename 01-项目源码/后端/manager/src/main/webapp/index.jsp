<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理界面</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/public.css">
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-3.1.1.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/laydate.js"></script>
	
	<style type="text/css"> 
		*{ margin:0px; padding:0px;} 
		a{ text-decoration:none; color:#000;} 
		a:hover,a:linked{ color:#000;} 
		#nav{ margin-left:0px; list-style:none;} 
		#nav li，#nav li ul,#nav li ul li{ list-style:none;} 
		#nav li a{ width:180px; height:30px; line-height:30px; background:#79CDCD; display:block; text-indent:10px;} 
		#nav li ul li a{ background:#eaeaea;} 
		#nav li ul li ul li a{ background:#C5C1AA;} 
	</style> 
	
	<script type="text/javascript" src="https://cdn.goeasy.io/goeasy.js"></script>
		<script type="text/javascript">
		        var goEasy = new GoEasy({
		             appkey: 'BC-daa966db1e0c42dd90f128ab3fd272ba'
		        	});
		        goEasy.subscribe({
		            channel: 'demo_channel',
		            onMessage: function(message){
		                alert('收到：'+message.content);
		            	}
		        	});       
		        //GoEasy-OTP可以对appkey进行有效保护，详情请参考：GoEasy-Reference
		</script>
</head>
<body>
<div class="public-header-warrp">
	<div class="public-header" style="background: #CDC9A5">
		<div class="content">
			<div class="public-header-logo"><a href=""><img src="images/logo.png"/>够旅游管理系统</a></div>
			<div class="public-header-admin fr">
				<p class="admin-name">${loginManager.mName}管理员  您好！</p>
				<div class="public-header-fun fr">
					<shiro:lacksPermission name="管理员管理">
						<a href="" class="public-header-man">管理</a>
					</shiro:lacksPermission>
 					<a href="quit.do" class="public-header-loginout">安全退出</a>	
				</div>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<!-- 内容展示 -->
<div class="public-ifame mt20">
	<div class="content">
		<!-- 左侧导航栏 -->
		<div class="public-ifame-leftnav">
			<div class="public-title-warrp">
				<div class="public-ifame-title ">
					<a href="">首页</a>
				</div>
			</div>
			<ul id="nav">
				<li>
					<a href="javascript:;">主题旅行管理</a>
						<ul>
							<li><a href="<%=basePath %>/route/index.do?routeType=0&type=亲子系列" target="content">亲子系列</a></li>
							<li><a href="<%=basePath %>/route/index.do?routeType=1&type=蜜月度假" target="content">蜜月度假</a></li>
							<li><a href="<%=basePath %>/route/index.do?routeType=2&type=摄影" target="content">摄影</a></li>
							<li><a href="<%=basePath %>/route/index.do?routeType=3&type=潜水" target="content">潜水</a></li>
							<li><a href="<%=basePath %>/route/index.do?routeType=4&type=越野自驾" target="content">越野自驾</a></li>
							<li><a href="<%=basePath %>/route/index.do?routeType=5&type=滑雪" target="content">滑雪</a></li>
							<li><a href="<%=basePath %>/route/index.do?routeType=6&type=特色旅行" target="content">特色旅行</a></li>
						</ul>
				</li>
				<li>
					<a href="javascript:;">主题酒店管理</a>
						<ul>
							<li><a href="queryByType.do?hType=0&type=文化精品" target="content">文化精品</a></li>
							<li><a href="queryByType.do?hType=1&type=海岛风情" target="content">海岛风情</a></li>
							<li><a href="queryByType.do?hType=2&type=健康养生" target="content">健康养生</a></li>
							<li><a href="queryByType.do?hType=3&type=名山胜景" target="content">名山胜景</a></li>
							<li><a href="queryByType.do?hType=4&type=亲子悦动" target="content">亲子悦动</a></li>
							<li><a href="queryByType.do?hType=5&type=别墅庄园" target="content">别墅庄园</a></li>
							<li><a href="queryByType.do?hType=6&type=市郊游乐" target="content">市郊游乐</a></li>
							<li><a href="queryByType.do?hType=7&type=商务酒店" target="content">商务酒店</a></li>
							<li><a href="queryByType.do?hType=8&type=联合酒店" target="content">联合酒店</a></li>
							<li><a href="queryByType.do?hType=9&type=公寓浪潮" target="content">公寓浪潮</a></li>
						</ul>
				</li>
				<li>
					<a href="javascript:;">订单管理</a>
						<ul>
							<li><a href="javascript:;">主题订单</a>
								<ul> 
									<li><a href="<%=basePath %>/routeorder/index.do?orderType=待出行" target="content">待出行</a> </li> 
									<li><a href="<%=basePath %>/routeorder/index.do?orderType=待付款" target="content">待付款</a> </li>
									<li><a href="<%=basePath %>/routeorder/index.do?orderType=已退团" target="content">已退团</a> </li>  
								</ul> 
							</li>
							<li><a href="javascript:;">酒店订单</a>
								<ul> 
									<li><a href="<%=basePath %>/hotelorder/index.do?hotelorder_type=待出行&type=已支付" target="content">已支付</a> </li> 
									<li><a href="<%=basePath %>/hotelorder/index.do?hotelorder_type=待付款&type=未支付" target="content">未支付</a> </li> 
								</ul> 
							</li>

							<li><a href="javascript:;">灵感触发</a>
								<ul> 
									<li><a href="<%=basePath %>/insorder/index.do?pageNo=${pageNo}" target="content">灵感触发</a> </li> 
								</ul> 
							</li>
	
							<li><a href="<%=basePath %>/hotelorder/tailor.do?pageNo=${pageNo}" target="content">私人订制</a></li>

						</ul>
				</li>
				
				<li>
					<a href="javascript:;">用户信息</a>
						<ul>
							<li><a href="queryUser.do" target="content">用户信息</a></li>
						</ul>
				</li>
				<shiro:hasPermission name="管理员管理">
				<li>
					<a href="javascript:;">管理员管理</a>
					
						<ul>
							<li><a href="queryManager.do" target="content">管理员管理</a></li>
						</ul>
					
				</li>
				</shiro:hasPermission>
				<li>
					<a href="need.jsp">管理员需知</a>
					<!-- <ul>
						<li><a href="need.jsp">管理员管理</a></li>
					</ul> -->
				</li>
			</ul>
		</div>
		<!-- 右侧内容展示部分 -->
		<div class="public-ifame-content">
			<iframe name="content" src="main.jsp" frameborder="0" id="content" scrolling="yes" marginheight="0" marginwidth="0" width="100%" style="height: 700px;"></iframe>
		</div>
	</div>
</div>
<script src="js/jquery.min.js"></script>
<script type="text/javascript"> 
	$(function () { 
		$("#nav ul").hide(); 
			//控制一级子菜单 
			$("#nav li a:first-child").click(function () { 
			$(this).siblings().toggle(); 
			}); 
			//控制二级子菜单 
			$("#nav li ul a:first-child").click(function () { 
			$(this).siblings().find("ul").toggle(); 
		}); 
	}); 
</script>
</body>

</html>