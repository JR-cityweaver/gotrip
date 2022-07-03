<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>路线订单详情表</title>
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
		<div class="public-content">
			
			<div class="public-content-header">
                <span>订单信息</span>
                <i></i>
            </div>
            <div class="infor">
                <ul>
                    <li>
                        <i>订单编号:</i>
                        <span>${routeorders.orderNum}</span>
                    </li>
                    <li>
                        <i>订单状态:</i>
                        <span>${routeorders.orderType}</span>
                    </li>
                    
                </ul>
            </div>
			<div class="public-content-cont">
				<h3>路线信息</h3>
				<table class="public-cont-table">
					<tr>
						<td style="width:10%;float: center;">路线编号</td>
						<td style="width:30%;float: center;">路线名称</td>
						<td style="width:10%;float: center;">出发城市</td>
						<td style="width:10%;float: center;">出行时间</td>
						<td style="width:10%;float: center;">返回时间</td>
						<td style="width:10%;float: center;">出游人数</td>
						<td style="width:10%;float: center;">房间数</td>
						<td style="width:10%;float: center;">小计</td>
					</tr>
					<tr>
						<td>1234</td>
						<td>${routeorders.orderTitle}</td>
						<td>${routeorders.orderBegin}</td>						
						<td>${routeorders.orderBegindate}</td>
						<td>${routeorders.orderEnddate}</td>						
						<td>${routeorders.orderAdult+routeOrders.orderChild}人</td>
						<td>${routeorders.orderRoom}间</td>
						<td>￥${routeorders.orderTotalprice}</td>
					</tr>
				</table>
				
				<h3>游客信息</h3>
				<table class="public-cont-table">
					<tr>
						<td style="width:10%;float: center;">游客类型</td>
						<td style="width:30%;float: center;">中文名字</td>
						<td style="width:10%;float: center;">证件类型</td>
						<td style="width:20%;float: center;">证件号码</td>
						<td style="width:10%;float: center;">性别</td>
						<td style="width:10%;float: center;">手机号</td>
						<td style="width:10%;float: center;">国籍</td>
					</tr>
					<tr>
						<td>${tourists.tourist_type}</td>
						<td>${tourists.tourist_name}</td>
						<td>${tourists.tourist_card}</td>						
						<td>${tourists.tourist_cardnum}</td>
						<td>${tourists.tourist_sex}</td>						
						<td>${tourists.tourist_tele}</td>
						<td>${tourists.tourist_country}</td>
					</tr>
				</table>
				
				<h3>联系人信息</h3>
				<table class="public-cont-table">
					<tr>
						<td style="width:10%;float: center;">联系人姓名</td>
						<td style="width:30%;float: center;">手机号码</td>
						<td style="width:30%;float: center;">电子邮箱</td>
						<td style="width:30%;float: center;">备注信息</td>
						
					</tr>
					<tr>
						<td>${contacts.contact_name}</td>
						<td>${contacts.contact_phone}</td>
						<td>${contacts.contact_mail}</td>						
						<td></td>
						
					</tr>
				</table>
					
			</div>
		</div>
	</div>
</body>

</html>