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
	<script src="js/jquery-3.1.1.js"></script>
	<script src="js/jquery.min.js"></script>
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
		.div1,.div2,.div3,.div4,.div5,.div6{
			display: none;
			font-size: 20px;
			background-color:#E0EEEE;
		}
  </style>

<script type="text/javascript">
jQuery(function(){
	var divText1 = $('.public-cont-div1').text();
	console.log(divText1);
	var dvTitle1 = '';
	if(divText1.length > 5){
		divTitle1 = divText1.substr(0,5)+'...';
	}
	$('.public-cont-div1').text(divTitle1);
	$('.public-cont-div1').mouseover(function(){
		$('.public-cont-div1').text(divTitle1);
		$('.div1').show();
	});
	$('.public-cont-div1').mouseout(function(){
		$('.div1').hide();
		$('.public-cont-div1').text(divTitle1);
	});
});
	//第二个div
jQuery(function(){
	var divText2 = $('.public-cont-div2').text();
	var dvTitle2 = '';
	if(divText2.length > 5){
		divTitle2 = divText2.substr(0,5)+'...';
	}
	$('.public-cont-div2').text(divTitle2);
	$('.public-cont-div2').mouseover(function(){
		$('.div2').show();
	});
	$('.public-cont-div2').mouseout(function(){
		$('.div2').hide();
		$('.public-cont-div2').text(divTitle2);
	});
});
	//第三个div
jQuery(function(){
	var divText3 = $('.public-cont-div3').text();
	var dvTitle3 = '';
	if(divText3.length > 5){
		divTitle3 = divText3.substr(0,5)+'...';
	}
	$('.public-cont-div3').text(divTitle3);
	$('.public-cont-div3').mouseover(function(){
		$('.div3').show();
	});
	$('.public-cont-div3').mouseout(function(){
		$('.div3').hide();
		$('.public-cont-div3').text(divTitle3);
	});
});
	//第四个div
jQuery(function(){
	var divText4 = $('.public-cont-div4').text();
	var dvTitle4 = '';
	if(divText4.length > 5){
		divTitle4 = divText4.substr(0,5)+'...';
	}
	$('.public-cont-div4').text(divTitle4);
	$('.public-cont-div4').mouseover(function(){
		$('.div4').show();
	});
	$('.public-cont-div4').mouseout(function(){
		$('.div4').hide();
		$('.public-cont-div4').text(divTitle4);
	});
});
	//第五个div
jQuery(function(){
	var divText5 = $('.public-cont-div5').text();
	var dvTitle5 = '';
	if(divText5.length > 5){
		divTitle5 = divText5.substr(0,5)+'...';
	}
	$('.public-cont-div5').text(divTitle5);
	$('.public-cont-div5').mouseover(function(){
		$('.div5').show();
	});
	$('.public-cont-div5').mouseout(function(){
		$('.div5').hide();
		$('.public-cont-div5').text(divTitle5);
	});
});
</script>
	
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-content">
			
			<div class="public-content-header">
                <span>酒店详情信息</span>
                <i></i>
            </div>
            <div class="infor">
                <ul>
                    <li>
                        <i>酒店名:</i>
                        <span>${hotelInfo.hName}</span>
                    </li>
                </ul>
            </div>
			<div class="public-content-cont">
				<h3>酒店信息</h3>
				<table class="public-cont-table" id="tableCSS">
					<tr style="height: 80px;">
						<td style="width:20%;float: center;">酒店介绍</td>
						<td style="width:20%;float: center;">酒店地址</td>
						<td style="width:10%;float: center;">酒店价格</td>
						<td style="width:20%;float: center;">产品经理推荐</td>
						<td style="width:20%;float: center;">周围环境</td>
						<td style="width:10%;float: center;">酒店星级</td>
					</tr>
					<tr>
						<div class="div1">${hotelInfo.hIntroduce}</div>
						<td class="public-cont-div1">${hotelInfo.hIntroduce}</td>
						
						<div class="div2">${hotelInfo.hAddress}</div>
						<td class="public-cont-div2">${hotelInfo.hAddress}</td>			
						
						<td class="public-cont-div3">${hotelInfo.hPrice}</td>
						
						<div class="div3">${hotelInfo.hGroom}</div>
						<td class="public-cont-div3">${hotelInfo.hGroom}</td>		
							
						<div class="div4">${hotelInfo.hAround}</div>			
						<td class="public-cont-div4">${hotelInfo.hAround}</td>
						
						<div class="div5">${hotelInfo.hXingji}</div>
						<td class="public-cont-div5">${hotelInfo.hXingji}</td>
					</tr>
				</table>
				
				<h3>房间信息</h3>
				<table class="public-cont-table">
					<tr>
						<td style="width:15%;float: center;">房间名字</td>
						<td style="width:10%;float: center;">床型</td>
						<td style="width:10%;float: center;">早餐</td>
						<td style="width:10%;float: center;">WiFi</td>
						<td style="width:15%;float: center;">说明</td>
						<td style="width:10%;float: center;">价格</td>
						<td style="width:10%;float: center;">面积</td>
						<td style="width:15%;float: center;">楼层</td>
						<td style="width:5%;float: center;">其他</td>
					</tr>
			<c:forEach items="${roomList}" var="room">
					<tr>
						<td>${room.room_name}</td>
						<td>${room.room_bed}</td>						
						<td>${room.room_breakfast}</td>
						<td>${room.room_wifi}</td>
						<td>${room.room_explain}</td>
						<td>${room.room_price}</td>						
						<td>${room.room_area}</td>
						<td>${room.room_floor}</td>
						<td>
							<div class="table-fun">
								<a href="<%=basePath%>/updateRoom.jsp?id=${room.room_id}&name=${room.room_name}&bed=${room.room_bed}&breakfast=${room.room_breakfast}&wifi=${room.room_wifi}&explain=${room.room_explain}&price=${room.room_price}&area=${room.room_area}&floor=${room.room_floor}">修改</a>
								<a href="<%=basePath%>/deleteRoom.do?room_id=${room.room_id}">删除</a>
							</div>
						</td>
					</tr>
			</c:forEach>
				</table>
				<div class="pagination" style="float: right;">
					<ul class="pagination pagination-lg" style="float: center">
						<li class="active"><a href="<%=basePath %>/insertRoom.jsp?hotel_id=${hotelInfo.hId}">新增房间</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>

</html>