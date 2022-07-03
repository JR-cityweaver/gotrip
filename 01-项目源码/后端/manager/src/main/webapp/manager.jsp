<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>后台欢迎页</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/content.css" />
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">管理首页</a>><a href="">管理员管理</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>用户信息</h3>
			</div>
			<div class="public-content-cont">
				
				<table class="public-cont-table">
						<tr class="public-cont-table-tr">
							<th style="width:5%">ID</th>
							<th style="width:10%">姓名</th>
							<th style="width:10%">密码</th>
							<th style="width:15%">联系电话</th>
							<th style="width:30%">住址</th>
							<th style="width:20%">邮箱</th>
							<th style="width:10%">操作</th>
						</tr>
						<c:forEach items="${managerList}" var="manager">
					<tr>
						<td>${manager.mId}</td>
						<td>${manager.mName}</td>
						<td>${manager.mPassword}</td>						
						<td>${manager.mPhone}</td>						
						<td>${manager.mAddr }</td>
						<td>${manager.mEmail}</td>
						<td>
							<div class="table-fun">
								<a href="<%=basePath%>/deleteManager.do?mId=${manager.mId}">删除</a>
							</div>
						</td>
					</tr>
					</c:forEach>
				</table>
				<nav aria-label="Page navigation">
				  <ul class="pagination pagination-lg" style="float: right">
				    <c:if test="${pageNo <= 1}">
					  		<li class="disabled"><a>上一页</a></li>
					</c:if>
				    <c:if test="${pageNo >1}">
					    	<li><a href="queryManager.do?pageNo=${pageNo-1}">上一页</a></li>
					</c:if>
					<c:forEach var="item" begin="1" end="${totalPageNo }" step="1">
					    <c:choose>
					    	<c:when test="${item==pageNo}">
					    		<li class="active"><a>${item }</a></li>
					    	</c:when>
					    <c:otherwise>
					    	<li><a href="queryManager.do?pageNo=${item}">${item }</a></li>
					    </c:otherwise>
					    </c:choose>
					    </c:forEach>
					<c:if test="${pageNo < totalPageNo}">
					    <li><a href="queryManager.do?pageNo=${pageNo+1}">下一页</a></li>
					</c:if>
					<c:if test="${pageNo >= totalPageNo}">
					    <li class="disabled"><a>下一页</a></li>
					</c:if>
				  </ul>
				  <ul class="pagination pagination-lg" style="float: center">
					<li class="active"><a href="insertManager.jsp">添加</a></li>
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