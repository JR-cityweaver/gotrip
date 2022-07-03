<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0064)http://www.goutrip.com/route/orders/orderfill2.html?routeId=2354 -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>信息填写页面</title>
    <link rel="stylesheet" href="<%=basePath%>/bootStrap/css/bootstrap.min.css">
   
    
    <link rel="stylesheet" href="<%=basePath%>/routeOrderWrite/public.css">
    <link rel="stylesheet" href="<%=basePath%>/routeOrderWrite/common.css">
    <link rel="stylesheet" href="<%=basePath%>/routeOrderWrite/routeOrderFill.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="<%=basePath%>/routeOrderWrite/hm.js.下载"></script><script src="<%=basePath%>/routeOrderWrite/jquery-1.11.3.js.下载"></script>
    <script src="<%=basePath%>/routeOrderWrite/layer.js.下载"></script><link rel="stylesheet" href="<%=basePath%>/routeOrderWrite/layer.css" id="layui_layer_skinlayercss">
    <script type="text/javascript" src="<%=basePath%>/routeOrderWrite/jquery.validate.js.下载"></script>
    <script src="<%=basePath%>/routeOrderWrite/Calendar_orderBanner.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/routeOrderWrite/DateFormat.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/routeOrderWrite/laydate.js.下载"></script><link type="text/css" rel="stylesheet" href="<%=basePath%>/routeOrderWrite/laydate.css"><link type="text/css" rel="stylesheet" href="<%=basePath%>/routeOrderWrite/laydate(1).css" id="LayDateSkin">
   

</head>
<body>
<!--头部开始-->
<!--顶部导航开始-->
<div class="header">
   
   <div class="clearfix w1200">
                <ol class="head-nav fl">
                    <li class="logo"><a href="<%=basePath%>/home.jsp"><img src="<%=basePath%>/home/logo.png"></a></li>
                    <li class="nav-hov"><a clas="index-a" href="<%=basePath%>/home.jsp" style="color:#f2af33">首页</a></li>
                    <li class="nav-hov"><a href="<%=basePath%>/route.jsp">主题旅行</a></li>
                    <li class="nav-hov"><a href="<%=basePath%>/hotel.do">主题酒店</a></li>
                    <li class="nav-hov"><a href="<%=basePath%>/personal.jsp">私人定制</a></li>
                    <li class="nav-hov"><a href="<%=basePath%>/inspiration.jsp">灵感触发</a></li>
                </ol>
                <!--未登录-->
		        <c:if test="${userSession.user_phone == null}">
			        <div class="signOut">
			            <img src="customizeParis/personal.png">
			          <span>
            <a class="user" href="<%=basePath%>/loginRegister.jsp">登录</a>
			            </span>
			        </div>
		       	</c:if>
		        <!-- 已登录之后 -->
		        <c:if test="${userSession.user_phone != null}">
			        <div class="signIn-sec fr">
			            <img class="signIn-img userInfo_headImg" src="<%=basePath%>/hotel/1c1073e4f135e0818ceb616b5b2d71.jpg" alt="头像">
			            <span>账号</span>
			            <ul>
			                <li><a href="<%=basePath%>/myself.jsp">我的订单</a></li>
			                <li><a href="<%=basePath%>/myself.jsp">我的收藏</a></li>
			                <li><a href="<%=basePath%>/myself.jsp">个人中心</a></li>
			                <li><a href="javascript:;" id="yijian_1">遇到问题</a></li>
			                <li><a id="logout" href="<%=basePath%>/user/singout.do">退出</a></li>
			            </ul>
			        </div>
		       	</c:if>
            </div>
   
</div>
<!--顶部导航结束-->
<!--意见反馈开始-->
		<div id="feedback" style="display:none">
		    <div class="modal_body">
		    	<dl>
		        	<dt>QQ</dt>
		            <dd><input id="qq" name="#" type="text" placeholder="请输入QQ号码">
		            </dd>
		        </dl>
		    	<dl>
		        	<dt>邮箱</dt>
		            <dd><input id="email" name="#" type="text" placeholder="请输入常用邮箱">
		            </dd>
		        </dl>
		    	<dl>
		        	<dt>问题说明</dt>
		            <dd> 
		            	<textarea id="yijian" name="#" placeholder="产品Bug、建议意见、使用帮助、吐（biao）槽（yang）等"></textarea>
		            </dd>
		        </dl>
		    </div>
		    <div class="modal_footer">
		    	<button id="ok" class="btn_confirm" type="button">提交</button>
		    	<button id="cancel" class="btn_default" type="button">取消</button>
		    </div>
		</div>
		<!--意见反馈结束-->
<script src="<%=basePath%>/routeOrderWrite/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
<script type="text/javascript">
	//图片懒加载
	$(function() {
	      $("img").lazyload({ effect: "fadeIn"});
	});
	//登录
    $(function(){
		var pathname = window.location.pathname;
	    var query = window.location.search;
	    var returnUrl = encodeURIComponent('/');
	    var flag = false;
	    if (query.length > 0) {
	        query = query.substring(1, query.length);
	    }
	    var attr = query.split('&');
	    for (var i = 0; i < attr.length; i++) {
	        if (attr[i].indexOf('returnUrl=') === 0) {
	            returnUrl = attr[i].split('=')[1];
	        }
	    }
	
	    $('.user').each(function () {
	        if (pathname === $(this).attr('href')) {
	            flag = true;
	            return false;
	        }
	    });
	    $('.user').each(function () {
	        if (flag) {
	            $(this).attr('href', $(this).attr('href') + '?returnUrl=' + returnUrl);
	        } else {
	            $(this).attr('href', $(this).attr('href') + '?returnUrl=' + encodeURIComponent(window.location.href));
	        }
	    });
	});
	//退出
	function logout(){
		if(confirm("你确定退出吗?")){
			window.location.href="/member/logout.html";
		}
	}
	//意见反馈开始
		    var count=0;
			layer.config({tipsMore: true});
			$("#yijian_1").click(function(){
				
				var html = $("#feedback").html();
				layer.open({
					title: "遇到了什么问题？",
				    type: 0,
				    area: ['652px'],
				    btn:false,
				    content: html,
				    success: function(layero, index){
				    
				    	$(layero).find("#cancel").click(function(){
							layer.closeAll();
						});
				    	$(layero).find("#ok").click(function(){
				    		if(count==3){
								layer.closeAll();
			 				}
						 	sendEmail(this);
						});
				    	$(layero).find("#qq").blur(function(){
						 	checkQq(this);
						});
				    	$(layero).find("#email").blur(function(){
						 	checkEmail(this);
						});
				    	$(layero).find("#yijian").change(function(){
						 	checkYijian(this);
						});
			   		}
				});
			});
			function sendEmail(obj){
				var check1 = checkQq($(obj).parent().parent().find("#qq"));
				var check2 = checkEmail($(obj).parent().parent().find("#email"));
				var check3 = checkYijian($(obj).parent().parent().find("#yijian"));
		 		if(check1 && check2 && check3) {
			 		count=count+1;
					var qq = $(obj).parent().parent().find("#qq").val();
					var email = $(obj).parent().parent().find("#email").val();
					var yijian = $(obj).parent().parent().find("#yijian").val();
					var url = "/index/yijian_email.html";
					var params ={"qq" : qq, "email" : email, "yijian" : yijian};
					$.post(url,params,function(data){ 
						alert(data.message);
						layer.closeAll();
					});
		 		}
			}
			function checkQq(obj){
				var text = $(obj).val();
		        if (text == "") {  
		            layer.tips('qq号不能为空!', obj);
		            return false;
		        }  
		        if (!text.match(/^\d+$/g)) {
		        	layer.tips('请输入正确的qq号码!', obj);
		            return false;
		        }
		        return true;
			}
			function checkEmail(obj){
				var text = $(obj).val();
		        if (text == "") {  
		            layer.tips('email不能为空!', obj);
		            return false;
		        }  
		        var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		        if(!text.match(myreg)) {  
		           layer.tips('请输入正确格式的email!', obj);
		            return false;  
		        }  
		        return true;
			}
			function checkYijian(obj){
				var text = $(obj).val();
		        if (text == "") { 
		            layer.tips('意见不能为空!', obj);
		            return false;
		        }  
		        if(text.length < 15) {  
		           layer.tips('意见字数不能小于15!', obj);
		            return false;  
		        }  
		        return true;
			}
			//意见反馈结束
	//2017-1-18 头部新版
	//导航条波动
    $(".nav-hov").hover(function(){
        $(this).find("a").animate({"bottom":"5px"},300)
    },function(){
        $(this).find("a").animate({"bottom":"0"},300)
    })
    
     // 下拉框 效果
     $(function(){
        $(".nav-sub").hover(function(){
            $(".drop-down").show()
        },function(){
            $(".drop-down").hide()
        })
     })
     
    //够主题下面的类型
    $.get('/types.json', function (data) {
	 	var typelist = $('#typelist');
        var html = '';
        for (var i = 0; i < data.length; i++) {
        	html +='<div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="' + data[i].colorUrl + '"/>'+
                   '<span class="module-title-name fl" onclick="window.location.href=\'/themeTrip/themeList.html?typeId=' + data[i].id + '\'">' + data[i].name + '</span>'+
                   '<span class="module-title-more fr" onclick="window.location.href=\'/themeTrip/themeList.html?typeId=' + data[i].id + '\'">更多</span></p>'+
                   '<ul class="drop-module-inner clearfix">';
            var terminiList = data[i].terminiList;
            if(terminiList!=null && terminiList.length>0){
            	for (var j = 0; j < terminiList.length; j++) {
	            	html +='<li class="module-inner-nation fl" onclick="window.location.href=\'/themeTrip/themeList.html?typeId='+ data[i].id +'&terminiId='+terminiList[j].id+'\'">'+terminiList[j].name+'</li>';
	            }
            }
            html +='</ul></div>';
        }
        typelist.html(html);
        
    });
</script>
<!--头部结束-->
<c:forEach items="${detailList }" var="detail">
<div class="main">
    <div class="main_info w1200">
        <!--步骤导航-->
        <div class="nav">
            <ul>
                <li>信息填写</li>
                <li>提交订单</li>
                <li>在线支付</li>
                <li>预定成功</li>
            </ul>
        </div>
        
        <!--提交订单开始-->
        <form id="orderForm" name="orderForm" action="<%=basePath %>/order/write.do" method="post" novalidate="novalidate">
		<!-- <input id="routeId" value="2354" type="hidden">
		<input id="focusId" name="focusId" value="2354" type="hidden">
		<input id="focusName" name="focusName" value="驰骋在北欧大陆欣赏沿路的风光，驻足在欧洲世界的最北端，亲眼见证午夜太阳的奇观" type="hidden">
		<input id="priceDailyId" name="priceDailyId" value="" type="hidden">
		<input id="daysNum" value="10" type="hidden">
		<input type="hidden" id="priceTypeId" value="">
		<input id="startTime" name="startTime" value="" type="hidden">
		<input id="endTime" name="endTime" value="" type="hidden">
		<input type="hidden" value="" id="code">
		<input type="hidden" value="" id="create_time"> 
		<input type="hidden" value="" id="isLogin"> -->
        <!--订单信息开始-->
        <input type="hidden" name="token" value="${token }">
        <div class="info clearfix">
            <!--右部详情-->
            <div class="info_rig">
                <!--详情内容-->
                <div class="info_deta">
                    <!--详情标题-->
                    <div class="info_nav">
                        <h2>${detail.detail_title }</h2>
                        <input type="hidden" value="${detail.detail_title }" name="order_title"/>
                        <!-- <span>(驰骋在北欧大陆欣赏沿路的风光，驻足在欧洲世界的最北端，亲眼见证午夜太阳的奇观)</span> -->
                    </div>
                    <!--订单详情-->
                    <ul>
                        <li>
                            <i>产品价格：</i>
                            <div class="one">
                                <h2>￥${detail.detail_newprice }</h2>
                                <span>起人</span>
                                <del>￥${detail.detail_oldprice }</del>
                            </div>
                        </li>
                        <li>
                            <i>优惠方式：</i>
                            <div class="two" id="youhui">
	                            
	                            <span class="cor3">推荐</span>
	                            
	                            
	                            
	                            
                            </div>
                            <script>
                            	if(!$('#youhui').children().length){
                            		$('#youhui').html('<span class="cor8">暂无</span>');
                            	}
                            </script>
                        </li>
                        <li>
                            <i>选择套餐：</i>
                           <div style="display: inline-block;">
                            <select  class="form-control" style="width: 360px;height: 30px;line-height: 26px;padding-left: 7px;display: inline-block;border: 1px solid #ccc;font-size: 12px;">
							  ${detail.detail_taocan }

                            </select>
							</div>
                        </li>
                        <li>
                            <i>提前预定：</i>
                            <div>
                                <span>提前<span id="minDay">${detail.detail_days }</span>预订</span>
                            </div>
                        </li>
                        <li>
                            <i>出行时间：</i>
                            <div style="display: inline-block;">
                            <select name="order_time"  id="selectTuanqi"  class="form-control" style="width: 360px;height: 30px;line-height: 26px;padding-left: 7px;display: inline-block;border: 1px solid #ccc;font-size: 12px;" onchange="getSelectValue('${detail.detail_days }')">
							<option value="请选择出行时间" id="initialTime">请选择出行时间</option>
							 ${detail.detail_tuanQi }
							</select>
							</div>
                        </li>
                        <li>
                         
                         
                            <i>返回时间：</i>
                          
                            <div>
                               <input id="returnshijian" name="order_enddate" value="--年--月--日" readonly="readonly" style="border-bottom: none;"/>
                               <input id="beginshijian" name="order_begindate" value="" type="hidden"/>
                            </div>
                        </li>
                        <li>
                            <i>出游人数：</i>
                            <div class="six">
                                <p style="display: inline;">
                                成人
                                 <img  src="<%=basePath %>/image/reduce.png" style="position: relative;top: -5px;border:0px;cursor: pointer;" onclick="reduceContent(${detail.detail_newprice})">
                                  <input id="adultc" type="text" name="order_adult"  readonly="readonly" value="1" style="text-align: center;width: 20px;"/>
                                 <img  src="<%=basePath %>/image/add.png" style="position: relative;top: -5px;border:0px;cursor: pointer;" onclick="addContent(${detail.detail_newprice})">
                                </p>
                                
	                           <!--  <span class="price">
	                                (价格：￥<span id="adultPrice">--</span>)
	                            </span> -->
	                            <div class="child" id="childInfo">
	                                <p>
	                                儿童
	                             <img  src="<%=basePath %>/image/reduce.png" style="position: relative;top: -5px;border:0px;cursor: pointer;" onclick="reduceContent1(${detail.detail_newprice})">
                                  <input id="childc" type="text" name="order_child"  readonly="readonly" value="1" style="text-align: center;width: 20px;"/>
                                 <img  src="<%=basePath %>/image/add.png" style="position: relative;top: -5px;border:0px;cursor: pointer;" onclick="addContent1(${detail.detail_newprice})">
	                                </p>
		                            <!-- <span class="price">
		                                (价格：￥<span id="childPrice">--</span>)
		                            </span> -->
	                            </div>
                            </div>
                        </li>
                        <li id="roomInfo">
                            <i>房间数量：</i>
                            <div >
                                <p>
                                房间
                                    <img  src="<%=basePath %>/image/reduce.png" style="position: relative;top: -5px;border:0px;cursor: pointer;" onclick="reduceContent2(${detail.detail_newprice})">
                                  <input id="roomc" type="text" name="order_room"  readonly="readonly" value="1" style="text-align: center;width: 20px;border-bottom:none;"/>
                                 <img  src="<%=basePath %>/image/add.png" style="position: relative;top: -5px;border:0px;cursor: pointer;" onclick="addContent2(${detail.detail_newprice})">
                                </p>
                            </div>
                        </li>
                        
                         <li>
                            <i>剩余名额：</i>
                            <div>
                                <span id="limitCount"></span>
                            </div>
                        </li>
                    </ul>
                </div>
               
                <!--出发地/目的地/天数-->
                <div class="info_set">
                    <ul>
                        <li>
                            <span>出发地：</span>
                            <input value="${detail.detail_begin }" name="order_begin" readonly="readonly" class="city"/>
                        </li>
                        <li>
                            <span>目的地：</span>
                            <span class="city">${detail.detail_end } </span>
                            <input type="hidden" name="order_end" value="${detail.detail_end }"/>
                        </li>
                        <li>
                            <span>行程天数：</span>
                            <span class="city">${detail.detail_days }</span>
                            <%-- <input type="hidden" name="order_days" value="${detail.detail_days }"/> --%>
                        </li>
                    </ul>
                </div>
            </div>
            <!--左部图片-->
            <div class="img_lef">
                <div>
                	<a href="">
	                    <ul>
	                        <li class="tit">私人订制</li>
	                        <li class="line"></li>
	                        <li class="txt">不走寻常路 &nbsp;去你想去的地方</li>
	                        <li class="txt">同款产品 &nbsp;可选任意出发地</li>
	                    </ul>
                    </a>
                </div>
            </div>
        </div>

    <!--联系人信息-->
        <div class="form_content">
            <!--联系人信息标题-->
            <div class="form_title">
                <strong>联系人信息</strong>
                <span>*请填写正确个人信息&nbsp; 方便客服与您联系</span>
            </div>
            <!--联系人信息表单-->
            <ul class="form">
                <li>
                    <span>姓名：</span>
                    <input placeholder="请输入中文名字" name="contact_name" id="realName" value="" required="required" aria-required="true">
                </li>
                <li>
                    <span>手机号：</span>
                    <input placeholder="请输入手机号码" name="contact_phone" type="tel" id="tel" value="" required="required" aria-required="true">
                    <i>用于接收确认信息，订购与取票凭证</i>                 
                </li>
                
                <li>
                    <span>邮箱地址：</span>
                    <input placeholder="请输入邮箱" name="contact_mail" type="email" id="email" required="required" aria-required="true">
                    <i>此邮箱地址为接收旅游合同等重要信息，请准确填写</i>
                </li>
                <li>
                    <span class="spacial">特殊说明：</span>
                    <textarea placeholder="例如：老人、孕妇、外籍人士..." name="contact_explain"></textarea>
                </li>
            </ul>
        </div>
        
        <!--添加旅客信息开始-->
        <div class="form_visitor">
			<div class="visitor_titl">
			    <strong>填写游客信息</strong>
			    <span>*为了您的顺利出行，请准确填写以下信息</span>
			</div>
			<!--成人信息-->
			<div id="adultInfo">
				<div class="adult">
			        <div class="form_titl">
			            <span>游客</span>&nbsp;&nbsp;&nbsp;
			            <input value="游客" name="tourist_type" readonly="readonly" />
			          <!--   <span>填写说明</span> -->
			           <!--  <input type="hidden" class="listCrowdType" name="list[0].crowdType" value="1"> -->
			        </div>
			        <ul>
			            <li>
			                <span><i>必填 *</i>真实姓名：</span>
			                <input class="listName" name="tourist_name" required="required" aria-required="true">
			           </li>
			            <li>
			                <span><i>*</i>性别：</span>
			                <select class="listGender" name="tourist_sex">
			                    <option value="男">男</option>
			                    <option value="女">女</option>
			                </select>
			            </li>
			            <li>
			                <span><i>*</i>手机：</span>
			                <input class="listTel" name="tourist_tele" required="" aria-required="true">
			            </li>
			            <li>
			                <span><i>*</i>国籍：</span>
			                <input class="listNationality" name="tourist_country" required="" aria-required="true">
			            </li>
			            <li>
			                <span><i>*</i>证件类型：</span>
			                <select class="sec_1 listCertificateType" name="tourist_card" onchange="selectChange(this);">
			                	<option value="0">请选择证件类型</option>
			                    <option value="身份证">身份证</option>
			                    <option value="护照">护照</option>
			                    <option value="港澳通行证">港澳通行证</option>
			                    <option value="台湾通行证">台湾通行证</option>
			                    <option value="稍后提供">稍后提供</option>
			                </select>
			            </li>
			            <li >
			                <span><i>*</i>证件号码：</span>
			                <input class="listTel"  name="tourist_cardnum">
			            </li>
			            <!-- <li style="display: none;">
			                <span><i>*</i>证件有效期：</span>
			                <input class="listExpires laydate-icon" name="tourist_cardNum" readonly="" onclick="laydate()">
			            </li> -->
			           <!--  <li style="display: none;">
			                <span><i>*</i>证件签发地：</span>
			                <input class="listAddress" name="list[0].address">
			            </li>
			            <li style="display: none;">
			                <span><i>*</i>出生日期：</span>
			                <input class="listBirthday laydate-icon" readonly="" name="list[0].birthday" onclick="laydate()">
			            </li> -->
			        </ul>
			    </div>
				
			</div>
            <!--成人信息-->
                
        </div>
        <!--添加旅客信息结束-->
        
        <div class="form_btn fix">
            <ul>
                <li><b>￥<input readonly="readonly" style="width: 110px;vertical-align: top;" id="totalPrice" value="${detail.detail_newprice }" name="order_totalprice"></input></b></li>
                <li><i>(房间差为<span id="roomPrice">0</span>元)</i></li>
                <li> <button id="agree" type="button" onclick="btns(${token})" >同意以下条款提交预约订单</button></li>
            </ul>
        </div>
        <div class="main_ipt">
            <p>
                <input type="checkbox" id="agress" >
                <span>我已同意以下预定须知及合同条款</span>
            </p>
        </div>
     <input type="hidden" name="order_type" value="待付款"/>          
</form> 
        <!--提交订单结束-->
        
        <div class="main_alert">
            <p><strong>温馨提示</strong></p>
            <ul id="secondCheck">
                <li>该产品为二次确认产品，目前名额紧张，库存和价格须客服人员再次确认。</li>
                <li>您可先进行预订，填写联系信息，客服人员将在24小时内电话联系您，与您核实预订信息，回复库存和价格情况。</li>
            </ul>
            <ul id="noSecondCheck" style="display:none;">
                <li>在预订开始前，请仔细阅读本须知，产品页面中的产品备注也做为协议的补充内容。</li>
                <li>当您开始预订该产品时，已表明您仔细阅读并接受协议的所有条款。</li>
            </ul>
        </div>
        <div class="main_rule">
            <p><strong>预定须知以及合同条款温馨提示</strong></p>
            <ul>
            ${detail.detail_needs }
            </ul>
        </div>
    </div>
</div>
</c:forEach> 


              
	<!--侧边栏-->
<!--侧边栏-->
<aside class="asides" style="display: none;">
    <ul>
        <li class="app">
            <a href="http://www.goutrip.com/appLink/appLinkSkipping.html" target="_blank"></a>
            <!--二维码-->
            <div class="appEr"><img src="<%=basePath%>/routeOrderWrite/apper.png" alt=""></div>
        </li>
        <li class="phone">
            <a href="javascript:;"></a>
            <div class="phoneN">400-065-5161</div>
        </li>
        <li class="kefu">
            <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2845023966&amp;site=qq&amp;menu=yes" target="_blank"></a>
            <div class="QQ">
                <p class="clearfix">
                    <i></i>
                    <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2845023966&amp;site=qq&amp;menu=yes" target="_blank">够旅游小够1</a>
                </p>
                <p class="clearfix">
                    <i></i>
                    <a href="tencent://message/?Menu=yes&amp;uin=441105682&amp;Site=qq&amp;Service=300&amp;sigT=45a1e5847943b64c6ff3990f8a9e644d2b31356cb0b4ac6b24663a3c8dd0f8aa12a595b1714f9d45" target="_blank">够旅游小够2</a>
                </p>
            </div>
        </li>
        <li class="close"><a></a></li>
    </ul>
    <span class="toTop"></span>
</aside>

<script>
	

	//侧边栏
    $(".asides li").mouseover(function(){
        $(this).find("div").show();
    }).mouseout(function(){
        $(this).find("div").hide();
    })
    $(".close").click(function(){
        if($(".asides li").is(":hidden")){
            $(".asides li").slideDown();
        }else{
            $(".asides li:not(':last-child')").slideUp();
        }
    })
	//页面滚动 侧边栏显示 与 隐藏
    $(function(){
        $(".asides").hide();
        $(window).scroll(function(){
            if($(window).scrollTop()>650){
                $(".asides").show();
            }else{
                $(".asides").hide();
            }
        });
		//回到顶部
        $(".toTop").click(function(){
            $("body,html").animate({scrollTop:0},500);
            return false;
        })
    })
</script>	<!--侧边栏-->
	
	<!--页脚开始-->
<!--尾部-->
<div class="botm" data-oxlazy="<%=basePath %>/image/bgmidd_04.png">
    <div class="w1200">
        <div>
            <img class="botm-logo" src="<%=basePath %>/image/logo-3.png">
            <p class="main-btm-logo">客服电话：400-065-5161</p>
        </div>
        <div>
            <ul>
                <li>关于够旅游</li>
                <li><a href="http://www.goutrip.com/resources/guanyuwomen.html" target="_blank">关于我们</a></li>
                <li><a href="http://www.goutrip.com/resources/meitibaodao.html" target="_blank">媒体报道</a></li>
                <li><a href="http://www.goutrip.com/resources/gongzuojihui.html" target="_blank">工作机会</a></li>
                <li><a href="http://www.goutrip.com/resources/lianxiwomen.html" target="_blank">联系我们</a></li>
                <li><a href="http://www.goutrip.com/resources/yinsizhengce.html" target="_blank">隐私免责</a></li>
                <li><a href="http://www.goutrip.com/resources/fuwutiaokuan.html" target="_blank">服务条款</a></li>
            </ul>
        </div>
        <div>
            <ul>
                <li>旅行服务</li>
                <li><a href="http://www.goutrip.com/custom/mine.html" target="_blank">私人订制</a></li>
                <li><a href="http://www.goutrip.com/goods/wifi/wifiChannel.html" target="_blank">境外wifi</a></li>
                <li><a href="http://www.goutrip.com/goods/visa/channel.html" target="_blank">签证预订</a></li>
            </ul>
        </div>
        <div>
            <img src="<%=basePath%>/routeOrderWrite/bannner_34.png">
            <p>够旅游微信公众号</p>
        </div>
        
    </div>
    <div class="botm-last">
        <p>网站备案/许可证号：京ICP备14016142号-1|够旅游公安 备案编号：京公网安备11010802014913号|主办单位名称：北京汇智纵横信息技术有限公司</p>
        <p>办公地址：北京市海淀区中关村东路18号财智国际大厦A座17层|网站名称：够旅游网|网站首页网址：www.goutrip.com</p>
    </div>
   
</div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?a536681329b45ba5dd8b2451b309dfc8";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();

//底部背景图片懒加载
//lazy loading
(function(a) {
    var c = a(window);
    var b = {
        flag: "data-oxlazy",
        init: function() {
            this.items = a.makeArray(a("[" + this.flag + "]"));
            this.cnt = this.items.length;
            if (this.cnt === 0) {
                return false;
            }
            c.bind("scroll.oxlazy", function(d) {
                b.detect();
            }).bind("resize.oxlazy", function(d) {
                b.detect();
            });
        },
        detect: function() {
            var e = [];
            for (var d = 0; d < this.cnt; d++) {
                if (!b.rock(this.items[d])) {
                    e.push(this.items[d]);
                }
            }
            this.items = e;
            this.cnt = this.items.length;
        },
        isInView: function(f) {
            var e = a(f),
                h = e.offset(),
                g = h.top - c.scrollTop(),
                d = c.height(),
                i = -(e.height());
            if ((g < i) || (g >= d)) {
                return false;
            }
            return e;
        },
        rock: function(i) {
            var h = i.getAttribute(this.flag);
            if ((!h) || (h === "")) {
                return false;
            }
            var f = this.isInView(i);
            if (!f) {
                return false;
            }
            var j = i.tagName === "IMG",
                e = i.tagName === "IFRAME",
                g = i.getAttribute(this.flag + "-timestamp") === "1",
                d = g ? ("?t=" + this.getTimeStamp()) : "";
            h = h + d;
            if (j || e) {
                i.setAttribute("src", h);
            } else {
                f.css("background-image", "url(" + h + ")");
            }
            i.removeAttribute(this.flag);
            return true;
        },
        getTimeStamp: function() {
            var d = new Date();
            return (d.getFullYear() + "" + d.getMonth() + "" + d.getDate());
        }
    };
    a(function() {
        b.init();
        b.detect();
    });
})(jQuery);
</script>	<!--页脚结束-->

<script>
	var startDate = '';
	var endDate = '';
	var isClick = 1;//是否点击日历，1点击  2不点击
	
    $(function() {

        function select(i){
           $(".on_slct"+i).on("click", function (e) {
           		if(i==2){
           			var name = $(".on_slct1").find("span").text();
           			if(name.indexOf('请选择套餐')!=-1 || name.indexOf('暂无套餐')!=-1){
           				layer.tips('请选择套餐!',$(this));
           				return false;
           			}
           		}
                $(".select"+i).toggle();
                $(document).click(function () {
                    $(".select"+i).hide();//点击空白处，隐藏
                });
                $(".select"+i).children("li").click(function(){
                    var $text=$(this).text();
                    $(".on_slct"+i).find("span").text($text);
                    if(i==1){
                    	startDate = $(this).attr('startDate');
						endDate = $(this).attr('endDate');
						$('#minDay').html($(this).attr('minDay'));
						$('#priceTypeId').val($(this).attr('priceTypeId'));
						
						var routeId = $("#routeId").val();
        				var priceTypeId = $("#priceTypeId").val();
						$.get("/route/getPriceDailyListByPriceTypeId.json",{routeId: routeId,priceTypeId: priceTypeId},
			                function (o) {
			                	//选择团期下拉显示
			                	var onSalePriceDailyHtml = '';
		                        var onSalePriceDailyList = o.onSalePriceDailyList;
		                        if(null != onSalePriceDailyList && 0 < onSalePriceDailyList.length){
		                        	for(var i=0;i<onSalePriceDailyList.length;i++){
		                    			var childPriceInfo = '';
		                        		if(onSalePriceDailyList[i].childPrice>0){
		                        			childPriceInfo = onSalePriceDailyList[i].childPrice+'/儿童';
		                        		}
		                        		onSalePriceDailyHtml += '<li priceDailyId="'+onSalePriceDailyList[i].id+'" adultPrice="'+onSalePriceDailyList[i].adultPrice+'" childPrice="'+onSalePriceDailyList[i].childPrice+'" roomChaPrice="'+onSalePriceDailyList[i].roomPrice
		                        				+'" value="'+new Date(onSalePriceDailyList[i].date).pattern('yyyy-MM-dd')+'">'+new Date(onSalePriceDailyList[i].date).pattern('yyyy-MM-dd w  ')+onSalePriceDailyList[i].adultPrice+'/人'+childPriceInfo+' </li>';
		                        	}
		                        }else{
		                        	onSalePriceDailyHtml='<li value="0">暂无团期</li>';
		                        }
		                        $('.select2').html(onSalePriceDailyHtml);
			            },'json');
                    }else if(i==2){ //选择班期变动时改变
                    	startDate = $(this).attr('value');
				    	startDate = startDate.replace(/-/g,'/');//解决苹果浏览器不兼容问题
				    	var startDateStr = new Date(startDate);
						startDate = startDateStr.getFullYear()+"-"+(startDateStr.getMonth()+1)+"-"+startDateStr.getDate();
				    	$('#startDate').val(startDate);
				    	
				    	//关联日历显示
				    	$("#priceDailyTbody td").removeClass("tdSelected_new");
				    	$("#calendar_"+startDate).addClass("tdSelected_new");
				    	Calendar.getPriceDaily(startDate.split("-")[0],startDate.split("-")[1]);
                    }
                });
                e.stopPropagation();
            });
        }
        select(1);
        select(2);
        
        //日历图标点击事件,并解决点击空白处隐藏日历的功能
	    $("#onclickCalendar").click(function(e){
	    	var name = $(".on_slct1").find("span").text();
	        if(name.indexOf('请选择套餐')!=-1 || name.indexOf('暂无套餐')!=-1){
	           	layer.tips('请选择套餐!',$(this));
	           	return false;
	        }
	     	//是否显示日历
	        $(".time").show();
	        $(document).click(function(){
	            $(".time").hide();
	        });
	        $(".time p").click(function(event){
	            event.stopPropagation();
	        });
	        e.stopPropagation();
	     	
	     	if($('#priceDailyTbody').children().length){
	     		 isClick=1; 
	     		 return false;
	     	}
	     	//初始化日历列表，如果没有日历就初始化日历
	     	isClick = 2;
			var minStartDate = startDate;
			if(minStartDate==''){
				Calendar.getPriceDaily(0,0);	
			}else{
				var startDateStr = new Date(minStartDate.replace(/-/g,'/'));//兼容火狐浏览器
				startDate = startDateStr.getFullYear()+"-"+(startDateStr.getMonth()+1)+"-"+startDateStr.getDate();
				if(startDate){
					Calendar.getPriceDaily(startDate.split("-")[0],startDate.split("-")[1]);
				}else{
					Calendar.getPriceDaily(0,0);	
				}
			}
	    })
        
        $(window).scroll(function(){
            var $Con_h=$(".main_ipt").offset().top;
            var $h=$(".main_ipt").height();
            //console.log($h);
            var $scroll=$(window).height();
            console.log($scroll);
           // var $this_h=$(".form_content").height();
           // var $h=($Con_h-0)+($this_h-0);
            var $doc_h=$(this).scrollTop();//滚动条滚动的高度
            console.log($doc_h-$scroll);
            if($doc_h>=$Con_h-$scroll){
                $(".form_btn").removeClass("fix");
            }else {
                $(".form_btn").addClass("fix");
            }
        })
    })
    
        
//输入框验证    
jQuery.validator.addMethod("telphoneValid", function(value, element) { 
    var tel = /^1[3|4|5|8|7][0-9]\d{8}$/;
    return tel.test(value) || this.optional(element); 
}, "请输入正确的手机号码");
jQuery.validator.addMethod("mobileVerify", function(value, element) { 
    var yanCode = value;
    var code = $("#code").val();
    var flag = yanCode==code ? true : false;
    if(flag && $('#isLogin').val()!=1) fastLogin();//验证正确可以快捷登录(登录过了，就不用登录)
    return flag;
}, "请输入正确的手机验证码");

$(function () {
	layer.config({
		tipsMore: true,
		tips:1
	});
	$("#submitOrder").on('click',function(){
		if(!$('#startTime').val()){
			layer.closeAll();
			layer.tips('请选择团期',$('#selectTime'));
			return false;
		}
	});
	$("#orderForm").validate({
	    rules: {
	       realName: {
	       		required: true
	       },
	       tel: {
	       		required: true,
	       		telphoneValid: true
	       },
	       mobileCode: {
	       		required: true,
	       		mobileVerify: true
	       },
	       email: {
	            required: true,
	       		email:true 
	       },
	       agress: {
	          required:true
	       }
	    },
	    messages: {
	        realName: {
	        	required: '请填写真实姓名'
	        },
	        tel: {
	        	required: '手机号不能为空',
	        	telphoneValid: '请输入正确手机号'
	        },
	        mobileCode: {
	        	required: '手机验证码不能为空',
	        	mobileVerify: '请输入正确手机验证码'
	        },
	        email: {
	        	required: '邮箱地址不能为空',
	        	email: '填写正确邮箱地址'
	        },
	        agress: {
	        	required: '请您阅读合同条款'
	        }
		},
		errorPlacement: function(error, element) {
			if(error.text()){
				layer.closeAll();
				layer.tips(error.text(),element);
			}
    	},
	});
	
});
	//验证码等待时间
	var wait=60;
	function time(o) {
	    if (wait == 0) {
	        o.removeAttribute("disabled");           
	        o.value="重新发送";
	        wait = 60;
	    } else {
	        o.setAttribute("disabled", true);
	        o.value="重新发送(" + wait + ")";
	        wait--;
	        setTimeout(function() {
	            time(o)
	        },
	        1000)
	    }
	}
	//获取验证码
	$("#getCode").on('click',function(){
		layer.closeAll();
		var tel = $("#tel").val();
		var reg="^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";
		var regExp = new RegExp(reg);
		if(!regExp.test(tel)){
			layer.tips('请输入正确手机号!',$("#tel"));
			return false;
		}
		//图片验证码
		var imgCode = $('#imgCode').val();
		var changeCode = $(".code").attr("data-val");
		if(imgCode!=changeCode){
			layer.tips('请输入正确验证码!',$("#imgCode"));
			return false;
		}

		$.get("/indexNew/getCode.html", {tel:tel},function (data) {
			//显示验证码等待时间
			$(this).attr("disabled",false); 
			time(document.getElementById("getCode"));
			//记录验证码
			$("#code").val(data.code);
			var create_time = new Date();
			$("#create_time").val(create_time);
		});
	});

	//2016-12-20 证件类型后面信息显示或隐藏
	$(".sec_1").parent("li").nextAll().hide();
    function selectChange(e){
        var txt = $(e).val();
        if(txt=='身份证'){
            $(e).parent("li").nextAll().hide().end().next("li").show();
        }else if(txt=='护照' || txt=='港澳通行证' || txt=='台湾通行证'){
            $(e).parent("li").nextAll().show();
        }else if(txt=='稍后提供' || txt==0){
            $(e).parent("li").nextAll().hide();
        }
    }
    
    jQuery.extend(jQuery.validator.messages, {
	     required: "请输入正确信息"
	});
	
	$('#adultInfo div:first').find('ul li:first').append('<i class="copyName">复制姓名<span>复制联系人姓名</span></i>');
	$('#adultInfo div:first').find('ul li:eq(2)').append('<i class="copyTel">复制电话<span>复制联系人手机号</span></i>');
	$('#adultInfo').on('click','.copyName',function(){
		$(this).prev().val($('#realName').val());
	});
	$('#adultInfo').on('click','.copyTel',function(){
		$(this).prev().val($('#tel').val());
	});
	$(function(){
		$(".copyName span,.copyTel span").hide();
		$(".copyName,.copyTel").hover(function(){
			$(this).find("span").show().end().css({"backgroundColor":"#5cc0ff"});
		},function(){
			$(this).find("span").hide().end().css({"backgroundColor":"#239ce8"});
		})

		//实时获取手机号的长度
		
		$(".radio").on("click",'i',function(){
			var clkCls=$(this).attr('data-type');		
			$(this).addClass('radio_active').parents('.radio').siblings('.radio').find('i').removeClass('radio_active');
			if(clkCls=='login'){
				//$(".popUp").show();
				window.location.href=$('#toLogins').attr('href');
				$("body").css({"overflow":"hidden"});
				$(document).click(function(){
		            $(".popUp").fadeOut(400);     
		            $("body").css({"overflow":"auto"});
		        });
			}
			
		});
		$("a.blue").on("click",function(){
			//$(".popUp").show();
			window.location.href=$('#toLogins').attr('href');
		});
		//点击其他区域弹框消失
        $(".inner,.radio").click(function(event){
            event.stopPropagation();
            $(".modalClose").click(function(){
                $(".popUp").fadeOut(400); 
                $("body").css({"overflow":"auto"})        
            });
        });
        
        // 生成4位数字验证码
	    $(".code").html(null);
	    function createCode() {
	        var code = "";
	        var length = 4;
	        var i;
	        var str = "";
	        var content;
	        var codeSpan = $(".code");
	        var arrColor = ["blue", "red", "green", "brown", "gray", "pink", "red", "green", "brown", "blue"];
	        codeSpan.html(null);
	        for (i = 0; i < length; i++) {
	            index = Math.floor(Math.random() * 6);
	            code = Math.floor(Math.random() * 10);
	            str += code;
	            color = arrColor[index];
	            content = $("<i></i>").html(code);
	            content.appendTo(codeSpan);
	            $(".code i").eq(index).css({"color": color});
	        }
	        codeSpan.attr("data-val", str);
	    }
		createCode();
	    $("#change_code").click(createCode);
    
	});
	//验证码快速登录
	function fastLogin(){
		var nickname = $("#tel").val();
		var yanCode = $("#mobileVerify").val();
		var returnUrl = 'http://101.251.251.82:8086/route/orders/orderfill2.html?routeId=2354';
		var code = '';
		//计算相差分钟数
		var myDate = new Date();
		var create_time = new Date($("#create_time").val().replace(/-/g,"/"));
		var date=myDate.getTime() - create_time.getTime();  //时间差的毫秒数
		var leave1=date%(24*3600*1000);    //计算天数后剩余的毫秒数
		var leave2=leave1%(3600*1000);        //计算小时数后剩余的毫秒数
		var minutes=Math.floor(leave2/(60*1000));
		if(minutes<=15){
			code = $("#code").val();//在15分钟有效时间内填写验证码
		}
		if(nickname && yanCode){
			if(yanCode==code){
				var parm = {userName:nickname,telLogin:'telLogin',returnUrl:returnUrl};
				$.ajax({
			        type: 'post',
			        url: '/member/logined.html',
			        data: parm,
			        success: function (data, textStatus, jqXHR) {
			            //window.location.href = jqXHR.getResponseHeader('Location');
			            $('#isLogin').val(1);//设置为已登录
			        },
			        error: function (xhr) {
			            if (xhr.status === 401) {
			                //$('#errorInfor').show().html('用户名或密码错误');
			                layer.tips('手机号或验证码错误',$('#mobileVerify'));
			            }
			        }
			    });
			    return false;
			}else{
				layer.tips('手机验证码错误或失效',$("#mobileVerify"));
			}
		}else{
			layer.tips('手机号或验证码不能为空',$("#mobileVerify"));
		}
		return false;
	}
</script>

<script type="text/javascript">	
	function addContent(price){		
		var num = document.getElementById("adultc");
	    num.value = parseInt(num.value) + 1;
	    if(num.value>10){
			num.value=10;
			return false;
		    }
	    var totalprice=document.getElementById("totalPrice");
	    var total=parseInt(price);
	    totalprice.value=parseInt(totalprice.value)+price;
	    var totalmax=num.value*total;
	   /*  if(totalprice.value>totalmax){
	    	totalprice.value=totalmax;
		    } */
		};

		function reduceContent(price){
			var num = document.getElementById("adultc");
			
		    num.value = parseInt(num.value) - 1;
		    if(num.value<1){
				num.value=1;
				return false;
			    }
		    var totalprice=document.getElementById("totalPrice");
		    var total=parseInt(price);
		    totalprice.value=parseInt(totalprice.value)-price;
		    var totalmax=num.value*total;
		    /* if(totalprice.value<totalmax){
		    	totalprice.value=totalmax;
			    } */
			};

			function addContent1(price){
				var num = document.getElementById("childc");
			    num.value = parseInt(num.value) + 1;
			    if(num.value>10){
					num.value=10;
					return false;
				    }
			    if(num.value<=1){
					return false;
				   }
			    var totalprice=document.getElementById("totalPrice");
			    var total=parseInt(price);
			    totalprice.value=parseInt(totalprice.value)+price;
			    var totalmax=num.value*total;
			    /* if(totalprice.value>totalmax){
			    	totalprice.value=totalmax;
				    } */
				};

				function reduceContent1(price){
					var num = document.getElementById("childc");
				    num.value = parseInt(num.value) - 1;
				    if(num.value<1){
						num.value=0;
						return false;
					    }
				    var totalprice=document.getElementById("totalPrice");
				    var total=parseInt(price);
				    totalprice.value=parseInt(totalprice.value)-price;
				    var totalmax=num.value*total;
				    
					};

					/* function addContent2(price){
						var num = document.getElementById("roomc");
					    num.value = parseInt(num.value) + 1;
					    if(num.value>10){
							num.value=10;
							return false;
						    }
					   
					    var totalprice=document.getElementById("totalPrice");
					    var total=parseInt(price);
					    totalprice.value=parseInt(totalprice.value)+price;
					    var totalmax=num.value*total;
					  
					    
					    
						};

						function reduceContent2(price){
							var num = document.getElementById("roomc");
						    num.value = parseInt(num.value) - 1;
						    if(num.value<1){
								num.value=1;
								return false;
							    }
						    var totalprice=document.getElementById("totalPrice");
						    var total=parseInt(price);
						    totalprice.value=parseInt(totalprice.value)-price;
						    var totalmax=num.value*total;
							}; */
							
							function getSelectValue(days){
							var days=parseInt(days.substring(0, 1));							
							var text = document.getElementById("selectTuanqi").value;
							var strdate=text; //日期字符串
							var isdate = new Date(strdate.replace(/-/g,"/"));  //把日期字符串转换成日期格式
							isdate = new Date((isdate/1000+(86400*days))*1000);  //日期加1天
							var returnDate = isdate.getFullYear()+"-"+(isdate.getMonth()+1)+"-"+(isdate.getDate());   //把日期格式转换成字符串
							var returnTime =document.getElementById("returnshijian");
							returnTime.value=returnDate;
							var beginTime=document.getElementById("beginshijian");
							beginshijian.value=text;
							console.log(text);
							$.post("<%=basePath%>/order/limit.do",{order_begindate:text},
							 function (json) {   
							        $("#limitCount").html(20-json);
							     }
									);
							
								}
</script>

<script type="text/javascript">
$("#realName").click(function(){
	 var temps= $("#limitCount").html();
	 var childc = document.getElementById("childc");
	 var adultc = document.getElementById("adultc");
	 var child=parseInt(childc.value);
	 var adult=parseInt(adultc.value);
	var options=$("#selectTuanqi option:selected");
	var temp=options.val();
	
	var text="请选择出行时间";
	if(text==temp){
		console.log(1);
		layer.alert("请选择出行时间");
		return;
		}
	
	console.log(child+adult);
	if((child+adult)>temps){
		layer.alert("该团期已满，请选择其他出行时间");	
		}		
	
	}); 
	

	

	 function btns(a){
			var token=a;
			console.log(token);
			$("#orderForm").submit();
		 }

	 $("#tel").click(function(){
		 var temp= $("#limitCount").html();
		 if(temp==0){
			layer.alert("该团期已满，请选择其他团期！");
			 }
		
		 });
</script>
</body></html>