<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0061)http://www.goutrip.com/route/orders/20170624163700512197.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>提交订单</title>
    <link rel="stylesheet" href="<%=basePath%>/routeOrderSubmit/public.css">
    <link rel="stylesheet" href="<%=basePath%>/routeOrderSubmit/common.css">
    <link rel="stylesheet" href="<%=basePath%>/routeOrderSubmit/routeOrderInfo.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="<%=basePath%>/routeOrderSubmit/hm.js.下载"></script><script src="<%=basePath%>/routeOrderSubmit/jquery-1.11.3.js.下载"></script>
    <script src="<%=basePath%>/routeOrderSubmit/layer.js.下载"></script><link rel="stylesheet" href="<%=basePath%>/routeOrderSubmit/layer.css" id="layui_layer_skinlayercss">
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
			                <a class="user" href="<%=basePath%>/register.jsp">注册 /</a>
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
<script src="<%=basePath%>/routeOrderSubmit/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
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
    <div class="main">
		 	
        <div class="main_nav w1200">
            <!--步骤导航-->
            <div class="nav">
                <ul>
                    <li>信息填写</li>
                    <li>提交订单</li>
                    <li>在线支付</li>
                    <li>预定成功</li>
                </ul>
            </div>
        </div>
        <div class="main_info w1200">
        	<div class="title">
                <p class="over-time">
                	剩余支付时间：<span class="occu-time" id="timer"><b>0</b>天<b>0</b>时<b>59</b>分<b>51</b>秒</span>
            	</p>
            	<input type="hidden" id="remainTime" value="3600">
            </div>
            <div class="title">
                <span>订单信息</span>
                <i></i>
            </div>
            <div class="infor">
                <ul>
                    <li>
                        <i>订单编号:</i>
                        <span>${routeOrder.order_num}</span>
                    </li>
                    <li>
                        <i>订单状态:</i>
                        <span>${routeOrder.order_type}</span>
                    </li>
                    <!--<li>
                        <i>优惠方式:</i>
                        <span>暂无</span>
                    </li>-->
                </ul>
            </div>
            <div class="inner">
                <p class="tlt">路线信息</p>
                <div class="container">
                    <div class="row">
                       <p>路线编号</p>
                       <p>路线名称</p>
                       <p>出发城市</p>
                       <p>出游时间</p>
                       <p>返回时间</p>
                       <p>出游人数</p>
                       <p>房间数</p>
                        <p>小计</p>
                    </div>
                    <div class="col">
                        <p>2354</p>
                        <p>${routeOrder.order_title}</p>
                        <p>${routeOrder.order_begin}</p>
                        <p>${routeOrder.order_begindate}</p>
                        <p>${routeOrder.order_enddate}</p>
                        <p>${routeOrder.order_adult+routeOrder.order_child}人</p>
                        <p>${routeOrder.order_room}间</p>
                        <p>￥${routeOrder.order_totalprice}</p>
                    </div>
                </div>
            </div>
            		<div class="inner_1">
		                <p class="tlt">游客1信息</p>
		                <div class="container">
		                    <div class="row">
		                        <p>游客类型</p>
		                        <p>中文名字</p>
		                        <p>证件类型</p>
		                        <p>证件号码</p>
		                        <p>证件有效期</p>
		                        <p>签发地</p>
		                        <p>国籍</p>
		                        <p>性别</p>
		                        <p>出生年月日</p>
		                        <p>手机号</p>
		                    </div>
		                    <div class="col">
		                        <p>成人</p>
		                        <p>${routeOrder.tourist_name}</p>
		                        <p>${routeOrder.tourist_card}</p>
		                        <p>${routeOrder.tourist_cardnum}</p>
		                        <p></p>
		                        <p></p>
		                        <p>${routeOrder.tourist_country}</p>
		                        <p>${routeOrder.tourist_sex}</p>
		                        <p></p>
		                        <p>${routeOrder.tourist_tele}</p>
		                    </div>
		                </div>
		            </div>
            
            <div class="inner_2">
                <p class="tlt">联系人信息</p>
                <div class="container">
                    <div class="row">
                        <p>联系人姓名</p>
                        <p>手机号码</p>
                        <p>电子邮箱</p>
                        <p>备注信息</p>
                    </div>
                    <div class="col">
                        <p>${routeOrder.contact_name}</p>
                        <p>${routeOrder.contact_phone}</p>
                        <p>${routeOrder.contact_mail}</p>
                        <p></p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="info_btm w1200">
            <ul>
                <li><b>￥${routeOrder.order_totalprice}</b></li>
                <!-- <li><i>(房间差为0元)</i></li> -->
              
                	<li> <div style="background-color: #239ce8;width: 150px;height: 100px;display: inline-block;text-align: center;vertical-align: middle;line-height: 100px;font-size: x-large;color: black;"><a href="<%=basePath %>/routeJSP/alipay.jsp?order_num=${routeOrder.order_num}&order_title=${routeOrder.order_title}&order_totalprice=${routeOrder.order_totalprice}">去支付</a></div></li>
            </ul>
        </div>
         
     
        <!--尾部开始-->
<!--尾部-->
<div class="main_btm w1200">
    <p>网站备案/许可证号：京ICP备14016142号-1|够旅游公安 备案编号：京公网安备11010802014913号 | 主办单位名称：北京汇智纵横信息技术有限公司</p>
    <p>办公地址：北京市海淀区中关村东路18号财智国际大厦A座17层 | 网站名称：够旅游网 | 网站首页网址：www.goutrip.com</p>
</div>
  
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?a536681329b45ba5dd8b2451b309dfc8";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>		<!--尾部结束-->
    </div>
	<div class="letter" style="display: none;">
        <div class="letter_inner">
            <p>这是一封给您的信</p>
            <p>       首先非常感谢您对够旅游的信任，能够把您的旅行时光交给我们。由于此商品为二次确认
                商品需人工确认库存。客服将于3小时内与您取得联系，确认订单行程。
            </p>
            <p>*  如需支付，请登陆账户，点击我的订单，再次回到此页面。</p>
            <div class="letter_btm">
                <p>（客服工作时间为早9:00-晚7:00）</p>
                <p>  如有疑问请拨打<a href="http://www.goutrip.com/route/orders/20170624163700512197.html">400-065-5161</a></p>
            </div>
        </div>
        <div class="close">
            <img src="<%=basePath%>/routeOrderSubmit/letter_03.png">
        </div>
    </div>
    <div class="poUp" style="display: none;"></div>

<script>
    $(function(){
        $(".close").click(function(){
            $(".letter,.poUp").hide();
        })
    })
    
    //倒计时
	var maxtime = $('#remainTime').val();//定义剩余时间, 必须用时间戳.单位为秒,一个小时之后的剩余时间
	promote();
	var timer = setInterval(promote,1000);//每秒执行一次下面的函数
	function promote() {
		if(maxtime>=0){
			var day = Math.floor((maxtime / 3600) / 24);
			var hour = Math.floor((maxtime - day * 24 * 3600) / 3600);
			var minute = Math.floor((maxtime - day * 24 * 3600 - hour * 3600) / 60);
			var second  = (maxtime - hour * 3600) % 60;
			var html =  "<b>" + day + "</b>天<b>" + hour + "</b>时<b>" + minute + "</b>分<b>" + second  + "</b>秒";
			document.getElementById("timer").innerHTML = html;//这个id是你想要显示的span的id
			if(maxtime == 59*60){
				//alert('注意，还有59分钟!');
			}
			maxtime--;
			
			
			document.cookie="orderTime="+maxtime;
			var orderCookie=document.cookie;
			var arrCookie=orderCookie.split(";"); 
			for(var i=0;i<arrCookie.length;i++){ 
				var arr=arrCookie[i].split("="); 
				if("arr[0]==orderTime"){
					orderTime=arr[1];	
					break;
				  } 
				} 
			
			
		}else{  
			clearInterval(timer);
			$('#main_tab div').find('span').attr('onclick','');
			$('#main_tab div').find('span').addClass('ccc');  
			//alert("时间到，结束!");  
		}  
	} 
</script>

</body></html>