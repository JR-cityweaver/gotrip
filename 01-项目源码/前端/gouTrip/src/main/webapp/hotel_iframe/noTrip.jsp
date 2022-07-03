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
    <link rel="stylesheet" href="<%=basePath %>/myself_files/public.css">
    <link rel="stylesheet" href="<%=basePath %>/myself_files/common.css">
    <link rel="shortcut icon" type="image/x-icon" href="<%=basePath %>/http://www.goutrip.com/images_new/favicon.ico">
    <link rel="stylesheet" href="<%=basePath %>/myself_files/myIndex2.css">
    <script src="<%=basePath %>/myself_files/hm.js.下载"></script><script src="<%=basePath %>/myself_files/jquery-1.11.3.js.下载"></script>
    <script src="<%=basePath %>/myself_files/layer.js.下载"></script><link rel="stylesheet" href="<%=basePath %>/myself_files/layer.css" id="layui_layer_skinlayercss">
    <script src="<%=basePath %>/myself_files/myIndex.js.下载"></script>
    <script src="<%=basePath %>/myself_files/three_Calendar.js.下载"></script>
    <script type="text/javascript" src="<%=basePath %>/myself_files/DateFormat.js.下载"></script>
    <script type="text/javascript" src="<%=basePath %>/myself_files/jquery-1.8.0.min.js.下载"></script>
</head>
<body>
	 <div class="hotelOrder">
         
         <div class="orders">
         	<ul id="">
                  <li style="color: #f00">当前订单数：<span>${typeCount}</span></li>
             </ul>
             <div>
                 <div class="all tab clearfix list_show">
                 	   <c:forEach items="${orderList}" var="orderList">
	                     <ol>
					        <li>
					            <p title="${orderList.hotelorder_name}">${orderList.hotelorder_name}</p>
					            <span>订单号：${orderList.hotelorder_number}</span>
					            <span>下单时间：${orderList.hotelorder_time}</span>
					        </li>
					        <li>￥${orderList.hotelorder_price}</li>
					        <li>
					        	${orderList.hotelorder_intime}至${orderList.hotelorder_outtime}
					        </li>
					        <li>${orderList.hotelorder_type}</li>
					        <li>${orderList.hotelorder_contract}</li>
					        <li>
					        	<a href="<%=basePath %>/paysuccess.do?hotelorder_number=${orderList.hotelorder_number}" target="_blank">查看</a>
					        </li>
					      </ol>
						</c:forEach>
					<div class="leafSign" status="0">
					    <!--显示分页-->
						<!-- <a href="javascript:;" class="bg_C">1</a>
						<a href="javascript:void(0)" onclick="changePage(2,this,&#39;/hotelNew/orders.html&#39;)">2</a>
					    <a href="javascript:void(0)" onclick="changePage(2,this,&#39;/hotelNew/orders.html&#39;)">下一页</a> -->
					    <ul style="display:inline-block; list-style: none;width: 600px;" id="page_ul">
							<c:if test="${pageNo <= 1}">
								<li class="disabled" style="width: 100px;background-color: #e8e8e8"><a>上一页</a></li>
							</c:if>
							<c:if test="${pageNo >1}">
								 <li><span style="width: 100px;background-color: #e8e8e8" class="bg_C"><a href="<%=basePath%>/ordertype.do?pageNo=${pageNo-1}&hotelorder_type=待付款">上一页</a></span></li>
							</c:if>
							<c:forEach var="item" begin="1" end="${page}" step="1">
								 <c:choose>
									<c:when test="${item==pageNo}">
								    	<li class="active"><span class="bg_C" style="background-color: #e8e8e8"><a>${item}</a></span></li>
								    </c:when>
								    <c:otherwise>
								    	<li><span class="bg_C" style="background-color: #e8e8e8"><a href="<%=basePath%>/ordertype.do?pageNo=${item}&hotelorder_type=待付款">${item}</a></span></li>
								    </c:otherwise>
								 </c:choose>
							</c:forEach>
							<c:if test="${pageNo < page}">
								<li><span class="bg_C" style="background-color: #e8e8e8; width: 100px"><a href="<%=basePath%>/ordertype.do?pageNo=${pageNo+1}&hotelorder_type=待付款">下一页</a></span></li>
							</c:if>
							<c:if test="${pageNo >= page}">
								 <li class="disabled" style="width: 100px;background-color: #e8e8e8" ><a>下一页</a></li>
							</c:if>
						</ul> 
					</div>
				</div>
                <div class="no_pay tab clearfix list_show" style="display: none;">
                    <!--酒店待付款订单-->
                </div>
                <div class="no_trip tab clearfix list_show" style="display: none;">
                    <!--酒店待出行订单-->
                </div>
            </div>
         </div>
    </div>
</body>
</html>