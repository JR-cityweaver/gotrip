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
		<div class="public-content">
			
			<div class="public-content-header">
                <span>私人订制信息</span>
                <i></i>
            </div>
            <div class="infor">
                <ul>
                    <li>
                        <i>订单编号:</i>
                        <span>${tailorInfo.tailor_num}</span>
                    </li>
                </ul>
            </div>
			<div class="public-content-cont">
				<h3>需求信息</h3>
				<table class="public-cont-table">
					<tr>
						<td style="width:15%;float: center;">从哪出发</td>
						<td style="width:15%;float: center;">到哪去玩</td>
						<td style="width:15%;float: center;">玩儿多久</td>
						<td style="width:15%;float: center;">出发日期</td>
						<td style="width:15%;float: center;">行程主题</td>
						<td style="width:15%;float: center;">出游人数</td>
						<td style="width:15%;float: center;">人均预算</td>
					</tr>
					<tr>
						<td>${tailorInfo.tailor_start}</td>
						<td>${tailorInfo.tailor_end}</td>						
						<td>${tailorInfo.tailor_days}</td>
						<td>${tailorInfo.tailor_gotime}</td>						
						<td>${tailorInfo.tailor_type}</td>
						<td>${tailorInfo.tailor_adult+tailorInfo.tailor_child}</td>
						<td>￥${tailorInfo.tailor_price}</td>
					</tr>
				</table>
				
				<h3>游客信息</h3>
				<table class="public-cont-table">
					<tr>
						<td style="width:25%;float: center;">中文名字</td>
						<td style="width:25%;float: center;">手机号</td>
						<td style="width:25%;float: center;">邮箱</td>
						<td style="width:25%;float: center;">补充备注</td>
					</tr>
					<tr>
						<td>${tailorInfo.tailor_name}</td>
						<td>${tailorInfo.tailor_phone}</td>						
						<td>${tailorInfo.tailor_mail}</td>
						<td>${tailorInfo.tailor_remarks}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>

</html>