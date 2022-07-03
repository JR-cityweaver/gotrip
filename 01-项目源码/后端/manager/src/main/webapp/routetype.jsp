<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>后台欢迎页</title>
	<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=basePath%>/css/reset.css" />
	<link rel="stylesheet" href="<%=basePath%>/css/content.css" />

	<%-- <script type="text/javascript">
		function deleteItem(item,routeId){
			var bool=window.confirm("确定删除"+item)
			if(bool){
				var aTag=item;
				aTag.href = "<%=basePath%>/route/delete.do?routeId="+routeId+"&pageNo="+pageNo+"&routeType="+routeType;
				}
			}
    </script> --%>
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">管理首页</a>><a href="">路线管理</a>><a href="">${type}</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>网站信息</h3>
			</div>
			<div class="public-content-cont">
				<table class="public-cont-table">
					<tr>
						<td style="width:10%;float: center;">ID</td>
						<td style="width:40%;float: center;">标题</td>
						<td style="width:10%;float: center;">费用</td>
						<td style="width:10%;float: center;">出发地点</td>
						<td style="width:30%;float: center;">操作</td>
					</tr>
					<c:forEach items="${routes}" var="route">
					<tr>
						<td>${route.routeId}</td>
						<td>${route.routeName}</td>
						<td>${route.routePrice}</td>						
						<td>${route.routeBeginning}</td>						
						<td>
							<div class="table-fun">
								<a href="<%=basePath %>/route/select.do?routeId=${route.routeId}&routeType=${routeType}&pageNo=${pageNo}&type=${type}">修改</a>
								<%-- <a id="item_del" onclick="deleteItem(this,${route.routeId})">删除</a> --%>
								<a href="<%=basePath %>/route/delete.do?routeId=${route.routeId}&routeType=${routeType}&pageNo=${pageNo}&type=${type}">删除</a>
							</div>
						</td>
					</tr>
					</c:forEach>
				</table>
				
				<div class="pagination" style="float: right;">
					<ul class="pagination pagination-lg" style="float: center">
						<li class="active"><a href="<%=basePath %>/insertRoute.jsp?type=${param.routeType}">再来一个</a></li>
					</ul>
				</div>
				
				<div class="pagination" style="float: center;"> 
					<ul class="pagination pagination-lg" style="float: center">
					    <c:if test="${pageNo <= 1}">
						  		<li class="disabled"><a>上一页</a></li>
						</c:if>
					    <c:if test="${pageNo >1}">
						    	<li><a href="<%=basePath%>/route/index.do?pageNo=${pageNo-1}&routeType=${routeType}&type=${type}">上一页</a></li>
						</c:if>
						<c:forEach var="item" begin="1" end="${count }" step="1">
						    <c:choose>
						    	<c:when test="${item==pageNo}">
						    		<li class="active"><a>${item }</a></li>
						    	</c:when>
						    <c:otherwise>
						    	<li><a href="<%=basePath%>/route/index.do?pageNo=${item}&routeType=${routeType}&type=${type}">${item }</a></li>
						    </c:otherwise>
						    </c:choose>
						    </c:forEach>
						<c:if test="${pageNo < count}">
						    <li><a href="<%=basePath%>/route/index.do?pageNo=${pageNo+1}&routeType=${routeType}&type=${type}">下一页</a></li>
						</c:if>
						<c:if test="${pageNo >= count}">
						    <li class="disabled"><a>下一页</a></li>
						</c:if>
					  </ul>
				</div>
				
				
					<%-- <ul style="display: inline-block;">
						<c:if test="${pageNo <= 1}">
							<li class="disabled"><a>上一页</a></li>
						</c:if>
						<c:if test="${pageNo >1}">
							 <li><a href="<%=basePath%>/route/index.do?pageNo=${pageNo-1}">上一页</a></li>
						</c:if>
						<c:forEach var="item" begin="1" end="${count}" step="1">
							 <c:choose>
								<c:when test="${item==pageNo}">
							    	<li class="active"><a>${item}</a></li>
							    </c:when>
							    <c:otherwise>
							    	<li><a href="<%=basePath%>/route/index.do?pageNo=${item}">${item}</a></li>
							    </c:otherwise>
							 </c:choose>
						</c:forEach>
						<c:if test="${pageNo < count}">
							<li><a href="<%=basePath%>/route/index.do?pageNo=${pageNo+1}">下一页</a></li>
						</c:if>
						<c:if test="${pageNo >= count}">
							 <li class="disabled"><a>下一页</a></li>
						</c:if>
					</ul> --%>
				
				
				
			</div>
		</div>
	</div>
</body>

</html>