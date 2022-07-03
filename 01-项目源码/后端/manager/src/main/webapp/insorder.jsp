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

<style type="text/css">
        .box{
            width: 300px;
            height: 50px;
        }
        ul{
            display:inline;
            white-space: nowrap;
        }
        ul li{
            padding: 10px 20px;
            display: inline-block;
            white-space:nowrap;
        }
  </style>
	
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">管理首页</a>><a href="">订单管理</a>><a href="">私人订制</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>网站信息</h3>
			</div>
			<div class="public-content-cont">
				<table class="public-cont-table">
					<tr>
						<td style="width:20%;float: center;">预定天数</td>
						<td style="width:20%;float: center;">订单名字</td>
						<td style="width:10%;float: center;">订单出发地点</td>
						<td style="width:20%;float: center;">联系方式</td>
						<td style="width:10%;float: center;">备注信息</td>
						<td style="width:10%;float: center;">删除</td>
						<td style="width:10%;float: center;">其他</td>
					</tr>
					<c:forEach items="${insList}" var="insList">
					<tr>
						<td>${insList.ins_days}</td>
						<td>${insList.ins_name}</td>
						<td>${insList.ins_whither}</td>						
						<td>${insList.ins_phone}</td>
						<td>${insList.ins_remaks}</td>
						<td>
							<div class="table-fun">
								<a href="<%=basePath%>/insorder/delete.do?ins_id=${insList.ins_id}">删除</a>							
							</div>
						</td>						
						<td>尽快联系</td>
					</tr>
					</c:forEach>
				</table>
				
				<div class="pagination" style="float: center;"> 
					<ul class="pagination pagination-lg" style="float: center">
					    <c:if test="${pageNo <= 1}">
						  		<li class="disabled"><a>上一页</a></li>
						</c:if>
					    <c:if test="${pageNo >1}">
						    	<li><a href="<%=basePath%>/insorder/index.do?pageNo=${pageNo-1}">上一页</a></li>
						</c:if>
						<c:forEach var="item" begin="1" end="${count }" step="1">
						    <c:choose>
						    	<c:when test="${item==pageNo}">
						    		<li class="active"><a>${item }</a></li>
						    	</c:when>
						    <c:otherwise>
						    	<li><a href="<%=basePath%>/insorder/index.do?pageNo=${item}">${item }</a></li>
						    </c:otherwise>
						    </c:choose>
						    </c:forEach>
						<c:if test="${pageNo < count}">
						    <li><a href="<%=basePath%>/insorder/index.do?pageNo=${pageNo+1}">下一页</a></li>
						</c:if>
						<c:if test="${pageNo >= count}">
						    <li class="disabled"><a>下一页</a></li>
						</c:if>
					  </ul>
				</div>
					
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	function load(a){
		var num=a;
		window.open("<%=basePath%>/routeorder/selectOrder.do?orderNum="+num);
		console.log(num);
		}
</script>

</html>