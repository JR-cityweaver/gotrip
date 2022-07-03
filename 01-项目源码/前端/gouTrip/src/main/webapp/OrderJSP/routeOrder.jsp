<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0046)http://www.goutrip.com/memberNew/my_index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <title>个人中心首页</title>
    <link rel="stylesheet" href="<%=basePath %>/route/public.css">
    <link rel="stylesheet" href="<%=basePath %>/route/common.css">
    <link rel="stylesheet" href="<%=basePath %>/route/themeList.css">
    <link rel="stylesheet" href="<%=basePath%>/myself_files/public.css">
    <link rel="stylesheet" href="<%=basePath%>/myself_files/common.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <link rel="stylesheet" href="<%=basePath%>/myself_files/myIndex2.css">
    <script src="<%=basePath%>/myself_files/hm.js.下载"></script><script src="<%=basePath%>/myself_files/jquery-1.11.3.js.下载"></script>
    <script src="<%=basePath%>/myself_files/layer.js.下载"></script><link rel="stylesheet" href="<%=basePath%>/myself_files/layer.css" id="layui_layer_skinlayercss">
    <script src="<%=basePath%>/myself_files/myIndex.js.下载"></script>
    <script src="<%=basePath%>/myself_files/three_Calendar.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/myself_files/DateFormat.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/myself_files/jquery-1.8.0.min.js.下载"></script>
    <link rel="stylesheet" href="<%=basePath%>/myself_files/style.css" type="text/css"><!--头像上传-->
	<script type="text/javascript" src="<%=basePath%>/myself_files/cropbox.js.下载"></script><!--头像上传-->
</head>
<body>

 <!--主题订单 开始-->
                    <div class="themeOrder clearfix" >
                        <div class="title">
                            <span>主题订单</span>
                        </div>
                        <ul class="state clearfix ">
                            <li ><a href="<%=basePath%>/order/getAllOrder.do" class="addd">全部订单<sup id="routeOrderNumberAll"></sup></a></li>
                            <li ><a href="<%=basePath%>/order/unpay.do?order_type=待付款">待付款<sup id="routeOrderNumberNoPay"></sup></a></li>
                            <li ><a href="<%=basePath%>/order/unpay.do?order_type=待出行">待出行<sup id="routeOrderNumberPay"></sup></a></li>
                            <li ><a href="<%=basePath%>/order/unpay.do?order_type=已退团">已退团<sup id="routeOrderNumberPay"></sup></a></li>
                        </ul>
                        <div class="orders">
                            <ul id="ListAll">
                                <!--加载订单内容-->
                                <li>产品信息</li>
                                <li>订单金额</li>
                                <li>出行时间</li>
                                <li>订单状态</li>
                                <li>合同状态</li>
                                <li>其他</li>
                            </ul>
                            <div>
                                <div class="all tab clearfix list_show">
                                    <!--主题所有订单-->
                                    		<c:forEach items="${routeOrder }" var="order">
				                           <div class="clearfix list_show" id="ordersListAll" >		<ol>
											        <li>
											            <p >${order.order_title }全部订单</p>
											            <span>订单号：${order.order_num }</span>
											            <span >下单时间：${order.order_time}</span>
											        </li>
											        <li>￥${order.order_totalprice }</li>
											        <li>
											        	${order.order_begindate }
											        </li>
											        <li>${order.order_type }</li>
											        
											        <li>有效</li>
											        <li>
											        		<a onclick="load('${order.order_num}','${order.order_type }')" >查看</a>
											        	<c:if test="${order.order_type=='待付款'}">	
											        		<a onclick="quit('${order.order_num}','${order.order_type }')">取消订单</a>
											        	</c:if>	
											        	<c:if test="${order.order_type=='待出行'}">	
											        		<a onclick="tuituan('${order.order_num}','${order.order_type }')">退团</a>
											        	</c:if>							        		
											        </li>
											    </ol>
					    					</div>
					    					</c:forEach>
					    	<!--分也开始  -->
					    	<div >
								<div style="text-align: center;" >
								
								<p style="text-align: center;">
						     	<c:if test="${pageno<1 }">
								    	<li style="display: none;"><a style="float: left;">上一页</a></li>
								 </c:if>
							 	<c:if test="${pageno>1 }">
								   <a href="<%=basePath %>/order/getAllOrder.do?pageno=${pageno-1 }" style="float: left;">上一页</a>
								 </c:if>
								    
						     	<c:forEach var="i" begin="1" step="1" end="${totalPage }">
									    <a style="float: left;" href="<%=basePath%>/order/getAllOrder.do?pageno=${i}">${i }</a>
							 	</c:forEach>  
							 								  
							 	<c:if test="${pageno<totalPage }">
						        <a style="float: left;" href="<%=basePath%>/order/getAllOrder.do?pageno=${pageno+1}"><span>下一页</span></a>		    
					    	 	</c:if>
					    	 	<c:if test="${pageno>totalPage }">
							 	<li style="display: none;"><a style="float: left;">下一页</a></li>
								 </c:if> 					    		
					    		</p>					    		
								</div>
							</div>
					    	<!--分也结束  -->
                           </div>                               
                              
                        </div>
                    </div>
                    <!--主题订单 结束-->

<script type="text/javascript">
	function load(a,b){
		var num=a;
		var content=b;
		if("待出行"==content){
		console.log(content);
		window.open("<%=basePath%>/order/selectOrder.do?order_num="+num);
			}
		if("待付款"==content){
		console.log(content);
		window.open("<%=basePath%>/order/unpayOrder.do?order_num="+num);
			}
		if("已退团"==content){
			console.log(content);
			window.open("<%=basePath%>/order/selectOrder.do?order_num="+num);
			}
	}

	function quit(c,d){
		var num=c;
		var content=d;
		if("待付款"==content){
		console.log(content);
		window.location.href="<%=basePath%>/order/deleteUnPay.do?order_num="+num;
			}
	}
	function tuituan(e,f){
		layer.confirm('您确定退团？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
				var num=e;
				var content=f;
				if("待出行"==content){
				console.log(content);
				window.location.href="<%=basePath%>/order/deleteUnTrip.do?order_num="+num;}
				
			}, function(){
			  
			  });
			
		
			
	}

</script>
</body>
</html>