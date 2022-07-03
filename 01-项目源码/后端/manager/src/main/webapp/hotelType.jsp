<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>后台欢迎页</title>
<script src="js/jquery-3.1.1.js"></script>
<script src="js/jquery.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/content.css" />

<style type="text/css">
	#tableCSS{
		table-layout: fixed;
	}
	#tableCSS td{
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
		word-break:break-all;
		-o-text-overflow:ellipsis;
		cursor: pointer;
	}
	.div1,.div2,.div3,.div4,.div5{
		display: none;
		font-size: 20px;
		background-color:#E0EEEE;
	}
</style>
<script type="text/javascript">
jQuery(function(){
	var divText2 = $('.public-cont-div2').text();
	console.log(divText2);
	var dvTitle2 = '';
	if(divText2.length > 5){
		divTitle2 = divText2.substr(0,5)+'...';
	}
	$('.public-cont-div2').text(divTitle2);
});
jQuery(function(){
	var divText4 = $('.public-cont-div4').text();
	console.log(divText4);
	var dvTitle4 = '';
	if(divText4.length > 5){
		divTitle4 = divText4.substr(0,5)+'...';
	}
	$('.public-cont-div4').text(divTitle4);
});

jQuery(function(){
	var divText5 = $('.public-cont-div5').text();
	console.log(divText5);
	var dvTitle5 = '';
	if(divText5.length > 5){
		divTitle5 = divText5.substr(0,5)+'...';
	}
	$('.public-cont-div5').text(divTitle5);
});
</script>

</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">管理首页</a>><a href="">酒店管理</a>><a href="">${type}</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>酒店信息</h3>
			</div>
			<div class="public-content-cont">
				<table class="public-cont-table" id="tableCSS">
						<tr>
							<th style="width:10%">ID</th>
							<th style="width:10%">酒店名称</th>
							<th style="width:10%">酒店介绍</th>
							<th style="width:10%">酒店地址</th>
							<th style="width:10%">酒店价格</th>
							<th style="width:20%">产品经理推荐</th>
							<th style="width:20%">周围环境</th>
							<th style="width:10%">操作</th>
						</tr>
						<c:forEach items="${hotelList}" var="hotel">
						<tr>
							<td>${hotel.hId}</td>
							<td class="public-cont-div1">${hotel.hName}</td>
							<td class="public-cont-div2">${hotel.hIntroduce}</td>
							<td class="public-cont-div3">${hotel.hAddress}</td>
							<td>${hotel.hPrice}</td>
							<td class="public-cont-div4">${hotel.hGroom}</td>
							<td class="public-cont-div5">${hotel.hAround}</td>					
							<td>
								<div class="table-fun">
									<a style="display: block; margin-left: 25px;" href="queryHotel.do?hotelId=${hotel.hId}&pageNo=${pageNo}&hType=${hType}&type=${type}">修改</a>
									<a style="display: block; margin-left: 25px;" href="deleteHotel.do?hotelId=${hotel.hId}&pageNo=${pageNo}&hType=${hType}&type=${type}">删除</a>
									<a style="display: block; margin-left: 25px;" href="gethotelinfo.do?hotelId=${hotel.hId}">查看</a>
								</div>
							</td>
						</tr>
						</c:forEach>
				</table>
				<!-- <div class="pagination" style="float: left">
					<ul class="pagination pagination-lg" style="float: center">
						<li class="active"><a href="">添加</a></li>
						<li class="active"><a href="exportExcel.do">导出excel</a></li>
					</ul>
				</div> -->
				<nav aria-label="Page navigation">
				  
				  <ul class="pagination pagination-lg" style="float: right">
				    <c:if test="${pageNo <= 1}">
					  		<li class="disabled"><a>上一页</a></li>
					</c:if>
				    <c:if test="${pageNo >1}">
					    <li><a href="queryByType.do?pageNo=${pageNo-1}&hType=${hType}&type=${type}">上一页</a></li>
					</c:if>
					<c:forEach var="item" begin="1" end="${totalPageNo }" step="1">
					    <c:choose>
					    	<c:when test="${item==pageNo}">
					    		<li class="active"><a>${item }</a></li>
					    	</c:when>
					    <c:otherwise>
					    	<li><a href="queryByType.do?pageNo=${item}&hType=${hType}&type=${type}">${item }</a></li>
					    </c:otherwise>
					    </c:choose>
					    </c:forEach>
					<c:if test="${pageNo < totalPageNo}">
					    <li><a href="queryByType.do?pageNo=${pageNo+1}&hType=${hType}&type=${type}">下一页</a></li>
					</c:if>
					<c:if test="${pageNo >= totalPageNo}">
					    <li class="disabled"><a>下一页</a></li>
					</c:if>
				  </ul>
				  <ul class="pagination pagination-lg" style="float: center">
					<li class="active"><a href="insertHotel.jsp?hType=${hType}">添加</a></li>
					<li class="active"><a href="exportExcel.do">导出excel</a></li>
				  </ul>
				</nav>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>