<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0113)http://www.goutrip.com/hotel/orders/orderfill.html?hotelid=1248&roomid=10046&inTime=2017-06-27&outTime=2017-06-28 -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>酒店订单填写</title>    
    <link href="./hotelOrder_files/public.css" rel="stylesheet">
    <link href="./hotelOrder_files/common.css" rel="stylesheet">
    <link href="./hotelOrder_files/fillOrder.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="./hotelOrder_files/hm.js.下载"></script><script src="./hotelOrder_files/jquery-1.11.3.js.下载"></script>
	<script type="text/javascript" src="./hotelOrder_files/laydate.js.下载"></script><link type="text/css" rel="stylesheet" href="./hotelOrder_files/laydate.css"><link type="text/css" rel="stylesheet" href="./hotelOrder_files/laydate(1).css" id="LayDateSkin">
	
	<script src="./hotelOrder_files/fillOrder.js.下载"></script>
	<script src="./hotelOrder_files/layer.js.下载"></script><link rel="stylesheet" href="./hotelOrder_files/layer.css" id="layui_layer_skinlayercss">
	<script src="./hotelOrder_files/DateFormat.js.下载"></script>
	

	<style type="text/css">
		.disable{
	      border: none;
	      background-color: #ccc;
	      color: #fff;
	    }
	    .submit{
	      border: none;
	      background-color: #FFD700;
	      color: #fff;
	    }
		
	</style>
</head>

<body>
<header>
<!--顶部导航开始-->
<div class="header">
    <div class="clearfix w1200">
        <ol class="head-nav fl">
            <li class="logo"><a href="<%=path%>/home.jsp"><img src="./hotelOrder_files/logo.png" style="width:62px;height:50px;"></a></li>
            <li class="nav-hov"><a href="<%=path%>/home.jsp">首页</a></li>
            <li class="nav-sub nav-hov"><a class="theme-a" href="<%=path%>/route.jsp" "="">主题旅行<i class="triangle-top"></i></a>
            </li>
            <li class="nav-hov"><a class="hotel-a" href="<%=path%>/hotel.do" style="bottom: 0px;">主题酒店</a></li>
            <li class="nav-hov"><a class="person-a" href="<%=path%>/personal.jsp">私人定制</a></li>
            <li class="nav-hov"><a href="<%=path %>/inspiration.jsp">灵感触发</a></li>
        </ol>
        <!--未登录-->
        <c:if test="${userSession.user_phone == null}">
	        <div class="signOut">
	            <img src="customizeParis/personal.png">
	            <span>
	                <a class="user" href="<%=path%>/register.jsp">注册 /</a>
	                <a class="user" href="<%=path%>/loginRegister.jsp">登录</a>
	            </span>
	        </div>
       	</c:if>
        <!-- 已登录之后 -->
        <c:if test="${userSession.user_phone != null}">
	        <div class="signIn-sec fr">
	            <img class="signIn-img userInfo_headImg" src="<%=path%>/hotel/1c1073e4f135e0818ceb616b5b2d71.jpg" alt="头像">
	            <span>账号</span>
	            <ul>
	                <li><a href="<%=path%>/myself.jsp">我的订单</a></li>
	                <li><a href="<%=path%>/myself.jsp">我的收藏</a></li>
	                <li><a href="<%=path%>/myself.jsp">个人中心</a></li>
	                <li><a href="javascript:;" id="yijian_1">遇到问题</a></li>
	                <li><a id="logout" href="<%=path%>/user/singout.do">退出</a></li>
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
		            <dd><input id="qq" name="qq" type="text" placeholder="请输入QQ号码">
		            </dd>
		        </dl>
		    	<dl>
		        	<dt>邮箱</dt>
		            <dd><input id="email" name="email" type="text" placeholder="请输入常用邮箱">
		            </dd>
		        </dl>
		    	<dl>
		        	<dt>问题说明</dt>
		            <dd> 
		            	<textarea id="yijian" name="yijian" placeholder="产品Bug、建议意见、使用帮助、吐（biao）槽（yang）等"></textarea>
		            </dd>
		        </dl>
		    </div>
		    <div class="modal_footer">
		    	<button id="ok" class="btn_confirm" type="button">提交</button>
		    	<button id="cancel" class="btn_default" type="button">取消</button>
		    </div>
		</div>
		<!--意见反馈结束-->
<script src="./hotelOrder_files/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
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
</header>
<div class="main">
    <div class="progress w1200">
        <i class="prog-1"></i>
        <span class="prog-fill">填写订单</span>
        <i class="prog-2"></i>
        <span class="prog-pay">支付订单</span>
        <i class="prog-3"></i>
        <span class="prog-succ">支付完成</span>
    </div>
<form id="orderForm" name="orderForm" action="<%=path%>/insertorder.do" method="post">
	<input type="hidden" name="tokenjsp" value="${tokenOne}">
    <input id="focusId" name="focusId" value="1248" type="hidden">
  	<input id="focusName" name="focusName" value="${room.room_name}" type="hidden">
  	<input id="roomId" name="roomId" value="${room.room_id}" type="hidden">
  	<input id="lastTime" name="lastTime" value="" type="hidden">
  	<input type="hidden" value="2" id="isLogin">
    <div class="w1200 clearfix">
        <div class="infor fl">
            <div class="advance">
                <p class="adva-title title">预定信息</p>
                <ul>
                    <li>
                        <i>房间类型：</i>
                        <span class="room-type"><input type="hidden" name="hotelorder_name" value="${room.room_name}">${room.room_name}</span>
                    </li>
                    <li>
                        <i>入住日期：</i>
                        <p class="adva-date">
                            <input type="hidden" name="hotelorder_intime"/><span class="date-on">${param.room_intime}</span>
                            <span>至</span>
                            <input type="hidden" name="hotelorder_outtime"/><span class="date-off">${param.room_outtime}</span>
                            <span class="date-numb"><input type="hidden" name="days" value="${param.room_days}"/>${param.room_days}</span>晚
                            <span class="date-update">修改日期</span>
                        </p>
                        <p class="adva-choose hide">
                            <input type="text" class="laydate-icon" id="startDay" name="hotelorder_intime" value="${param.room_intime}">
                            <span>至</span>
                            <input type="text" class="laydate-icon" id="endDay" name="hotelorder_outtime" value="${param.room_outtime}">
                            <input type="hidden" class="laydate-icon" id="days" name="days" value="${param.room_days}"/>
                            <input type="button" class="btn-yes" value="确定">
                            <input type="button" class="btn-no" value="取消">
                            <script type="text/javascript">
							    //显示入住时间和退房时间的日历
								var start = {
									    elem: '#startDay',
									    format:"YYYY-MM-DD",
										istime:false,
										isclear:true,
										istoday:true,
										issure:true,
									    min: laydate.now(1), //设定最小日期为提前1天
									    max: '2099-06-16 23:59:59', //最大日期
									    choose: function(datas){
									         end.min = datas; //开始日选好后，重置结束日的最小日期
									         end.start = datas; //将结束日的初始值设定为开始日
									         var tomorrow = getNewDay(datas,1);//日期加上天数得到新的日期  
									         $('#endDay').val(tomorrow);
									    }
								};
								var end = {
									    elem: '#endDay',
									    format:"YYYY-MM-DD",
										istime:false,
										isclear:true,
										istoday:true,
										issure:true,
									    min: laydate.now(2), //设定最小日期为提前2天
									    max: '2099-06-16 23:59:59', //最大日期
									    choose: function(datas){
									        start.max = datas; //结束日选好后，重置开始日的最大日期
									    }
								};
								laydate(start);
								laydate(end);
							</script>
                        </p>
                    </li>
                    <li>
                        <i>房间数量：</i>
                        <p class="adva-numb">
                            <button type="button" class="redu">-</button>
                            <input value="1" name="hotelorder_count" id="amount" readonly="">
                            <button type="button" class="add">+</button>
                        </p>
                    </li>
                    <li>
                        <i>房间总费：</i>
                        	<input type="hidden" id="priceInput" name="hotelorder_price" value="${room.room_price}"/>
                        	￥<span class="allmoney"><em class="totalPrice"><input style="background-color: #fff" type="button" class="totalPriceId" name="hotelorder_price" value="${param.hotelPrice}"></em></span>
                    </li>
                </ul>
            </div>
            <div class="occupancy">
                <p class="occu-title title">入住信息
                <span class="title-tip">温馨提示：请入住客人携带好相关身份证件</span>
                </p>
                <ol class="form">
                    <li>
                        <span><i>*</i>入住姓名：</span>
                        <input placeholder="请输入中文名字" id="friend_name" name="hotelorder_manname" value="">
                        <i>请填写实际入住人姓名，每个房间只需填1位。</i>
                    </li>
                    <li>
                        <span><i>*</i>手机号码：</span>
                        <input placeholder="请输入手机号码" name="hotelorder_phone" id="friend_phone" value="" maxlength="11" onclick="checkSubmitMobil()">
                        <i>用于接收确认信息，订购与取票凭证</i>
                        <!-- <div class="ph_action js_u_v_w" style="">
						<p>您需要：</p>
					    <div class="radio">
					        <i class="login" data-type="login"></i>
					        <a class="blue user" id="toLogins" href="http://www.goutrip.com/member/login.html?returnUrl=http%3A%2F%2Fwww.goutrip.com%2Fhotel%2Forders%2Forderfill.html%3Fhotelid%3D1248%26roomid%3D10046%26inTime%3D2017-06-27%26outTime%3D2017-06-28" item="signin">登录</a>购买
					    </div>
					    <div class="radio">
					        <i class="radio_active" data-type="mobile"></i>
					        	通过短信息验证快速购买
					        <span class="gray">（提交订单后为您注册一个账号，下次可直接用该手机登录）</span>
					    </div>
					    <p class="msgCode">
					        <span class="text">输入验证码</span>
	                        <input id="imgCode">
	                        <span class="code" data-val="0473"><i>0</i><i>4</i><i style="color: green;">7</i><i>3</i></span>
	                        <i id="change_code">看不清，换一张</i>
					    </p>
					    <p class="idcode cf">
					    	<span class="text">短信验证码</span> 
					    	<span class="inputgroup">
								<input type="" class="input" id="mobileVerify" item="cinput" name="mobileCode" data-jvalidator-pattern="vcode" maxlength="6">
							</span>
					    	<input type="button" value="获取验证码" id="getCode">
					        <i>有效时间15分钟，超出时间请重新获取</i>
					    	</p>
							<p></p>
					    	<div class="caret_tl"><i class="caret_out"></i><i class="caret_in"></i></div>
						</div>
                    </li> -->
                    
                    <input type="hidden" value="" id="code">
					<input type="hidden" value="" id="create_time"> 
                    <li class="choose-time">
                        <span>最晚到店时间：</span><input id="inhotel" style="width: 120px;display: inline-block;" type="text" name="hotelorder_inhotel" placeholder="请输入入店时间" value=""/>
                        <!-- <span class="occu-choss"></span>
                        <ul>
                            <li value="14:00">14:00</li>
                            <li value="14:30">14:30</li>
                            <li value="15:00">15:00</li>
                            <li value="15:30">15:30</li>
                            <li value="16:00">16:00</li>
                            <li value="16:30">16:30</li>
                            <li value="17:00">17:00</li>
                        </ul> -->
                        <i class="">通常酒店14:00开始办理入住，请输入14:00或者14:30等格式</i>
                    </li>
                    <li>
                        <span class="spacial">特殊说明：</span>
                        <textarea placeholder="例如：老人、孕妇、外籍人士..." name="hotelorder_remarks"></textarea>
                    </li>
                </ol>
                <p class="occu-bill"><i>*</i>如需发票，请从酒店前台索取</p>
                
            </div>
	            <div class="submit">           
	            	<input type="submit" class="form-btn" value="提交订单" disabled="disabled" onclick="submitForm(${tokenOne})">
	            </div>
        </div>
        <div class="hotel fr">
            <div class="pad">
                <div class="img-txt clearfix">
                    <img class="hotel-img fl" src="./hotelOrder_files/eac806708ae5cf55a35940ba8e2f5f.jpg" alt="">
                    <div class="hotel-txt fl">
                        <p class="hotel-title">${param.name}</p>
                        <%-- <p class="hotel-address"><i>位置：</i>${param.addr} </p> --%>
                    </div>
                </div>
                <p class="hotel-room">${room.room_name}</p>
                <ol class="clearfix">
                    <li>床型：${room.room_bed}</li>
                    <li>餐食：${room.room_breakfast}</li>
                    <li>宽带：${room.room_wifi}</li>
                    <li>面积：${room.room_area}</li>
                    <li style="width: 100%;">楼层：${room.room_floor}</li>
                </ol>
            </div>
            <p class="hotel-parice clearfix">
                <i class="fl">房间价格：</i>
                <span class="fr">￥<em class="totalPrice" id="price">${room.room_price}</em></span>
            </p>
        </div>
    </div>
</form>

</div>

<!--侧边栏-->
<!--侧边栏-->
<aside class="asides" style="display: none;">
    <ul>
        <li class="app">
            <a href="http://www.goutrip.com/appLink/appLinkSkipping.html" target="_blank"></a>
            <!--二维码-->
            <div class="appEr"><img src="./hotelOrder_files/apper.png" alt=""></div>
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
</script><!--页脚开始-->
<!--尾部-->
<div class="botm" data-oxlazy="image/bgmidd_04.png">
    <div class="w1200">
        <div>
            <img class="botm-logo" src="image/logo-3.png">
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
            <img src="./hotelOrder_files/bannner_34.png">
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
</script><!--页脚结束-->

<script type="text/javascript">
$(function(){
    $(".date-update").click(function(){
        $(".adva-choose").removeClass("hide");
        $(".adva-date").hide();

        $(".btn-yes").click(function(){
            var $date1=$("#startDay").val();
            var $date2=$("#endDay").val();
            $(".date-on").text($date1);
            $(".date-off").text($date2);
            $(".adva-choose").addClass("hide");
            $(".adva-date").show();
            getTimeCha();//时间差
            changeTotalPrice();//改变总价
        })
        $(".btn-no").click(function(){
            $(".adva-choose").addClass("hide");
            $(".adva-date").show();
        })
    });
    var i=  $(".adva-numb").find("input").val();
    $(".add").click(function(){
        i++;
        if(i==5){
        	$(this).attr("disabled",true);
        }
        $(this).parent(".adva-numb").find("input").val(i);
	    $(".redu").attr("disabled",false);
        changeTotalPrice();//改变总价
    })
    $(".redu").click(function(){
        i--;
        if(i==1){
            $(this).attr("disabled",true);
        }
        $(this).parent(".adva-numb").find("input").val(i);
        $(".add").attr("disabled",false);
        changeTotalPrice();//改变总价
    })
    $(".occu-choss").on("click",function(){
        $(".choose-time ul").show();

    })
    $(".choose-time li").on("click",function(){
        var txt=$(this).text();
        $(".occu-choss").text(txt);
        $(".choose-time ul").hide();
    })
    //选择时间时效果
    $(".hotel-room+ol li").each(function(){
    	var $len=$(this).text().length;
        console.log($len)
        if($len>10){
        	$(this).css({"width":"100%"})
        }
    })
    
})
//获得日期差
function getTimeCha(){
	var inTime = $('.date-on').html();
	var outTime = $('.date-off').html();
	var dateDiff = GetDateDiff(inTime,  outTime);//日期差
    $('.date-numb').html(dateDiff);
}
//获得总价
	function changeTotalPrice(){
		var days = $('.date-numb').html();
		//console.log(days);
		var roomCount = $('#amount').val();
		//console.log(roomCount); 
		var singlePrice = $('#price').html();
		//console.log(singlePrice);
	    var totalPrice = days*roomCount*singlePrice;
	    //console.log(typeof totalPrice);
	    //console.log(totalPrice);
	    $('.totalPrice').parent(".allmoney").find("input").val(totalPrice);
	    var priceInput1 = document.getElementById("priceInput");
	    priceInput1.value = totalPrice;
	    console.log(priceInput1.value);
	}
</script>

<script>
$(function(){
	//实时获取手机号的长度
	$(".radio").on("click",'i',function(){
		var clkCls=$(this).attr('data-type');		
		$(this).addClass('radio_active').parents('.radio').siblings('.radio').find('i').removeClass('radio_active');
		if(clkCls=='login'){
			//$(".popUp").show();
			window.location.href=$('#toLogins').attr('href');
			$("body").css({"overflow":"hidden"})
			$(document).click(function(){
            	$(".popUp").fadeOut(400);  
            	$("body").css({"overflow":"auto"})       
        	});
		}
		
	});
	$("a.blue").on("click",function(){
		$(".login").addClass('radio_active').parents('.radio').siblings('.radio').find('i').removeClass('radio_active');
		//$(".popUp").show();
		window.location.href=$('#toLogins').attr('href');
	})
	//点击其他区域弹框消失
    $(".inner,.radio").click(function(event){
		event.stopPropagation();
		$(".modalClose").click(function(){
		    $(".popUp").fadeOut(400); 
		    $("body").css({"overflow":"auto"})        
		});
    })
})
</script>

<script type="text/javascript">
	
	//jquery验证手机号码 
	function checkSubmitMobil() { 
		if ($("#friend_phone").val() == "") { 
			alert("手机号码不能为空！"); 
			//$("#moileMsg").html("<font color='red'>手机号码不能为空！</font>"); 
			$("#friend_phone").focus(); 
			return false; 
		} 
		
		if (!$("#friend_phone").val().match(/^(((13[0-9]{1})|159|153)+\d{8})$/)) { 
			alert("手机号码格式不正确！"); 
			//$("#moileMsg").html("<font color='red'>手机号码格式不正确！请重新输入！</font>"); 
			$("#friend_phone").focus(); 
			return false; 
		} 
		return true; 
	}

	$(function () {
	      var $phone = $('#friend_phone');
	      var $inhotel = $('#inhotel');
	      var $name = $('#friend_name');
	      var $submit = $('.form-btn');
	      $phone.on('input propertychange', function () {
	        var phone = this.value;
	        if (/^((13[0-9]|15[0-9]|17[0-9]|18[0-9])+\d{8})$/.test(phone)) {
	          $submit.removeClass('disable').addClass('submit').removeAttr('disabled');
	        } else {
	          $submit.removeClass('submit').addClass('disable').attr('disabled', 'disabled');
	        }
	      });
	      $inhotel.on('input propertychange', function (){
			var inhotel = this.value;
			if(/^(0\d{1}|1\d{1}|2[0-3]):([0-5]\d{1})$/.test(inhotel)){
				$submit.removeClass('disable').addClass('submit').removeAttr('disabled');
			}else{
				$submit.removeClass('submit').addClass('disable').attr('disabled', 'disabled');
			}
		  });
		  //    /^([\\u4E00-\\u9FA5\\uF900-\\uFA2D\\w]{2,10})$/
		  $name.on('input propertychange', function (){
			var name = this.value;
			if(/^([\u4e00-\u9fa5]){2,7}$/.test(name)){
				$submit.removeClass('disable').addClass('submit').removeAttr('disabled');
			}else{
				$submit.removeClass('submit').addClass('disable').attr('disabled', 'disabled');
			}
		  });
	    });
</script>



</body></html>