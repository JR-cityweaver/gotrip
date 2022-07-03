<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0069)http://www.goutrip.com/order/toPay.html?ordernum=20170626120840349938 -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>酒店支付</title>
    <link href="../hotelPay_files/public.css" rel="stylesheet">
    <link href="../hotelPay_files/common.css" rel="stylesheet">
    <link href="../hotelPay_files/pay.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="../hotelPay_files/hm.js.下载"></script><script src="../hotelPay_files/jquery-1.11.3.js.下载"></script>
	<script src="../hotelPay_files/pay.js.下载"></script>
	<script src="../hotelPay_files/layer.js.下载"></script><link rel="stylesheet" href="../hotelPay_files/layer.css" id="layui_layer_skinlayercss">
</head>
<body>
<!--头部开始-->
<!--顶部导航开始-->
<div class="header">
    <div class="clearfix w1200">
        <ol class="head-nav fl">
            <li class="logo"><a href="http://www.goutrip.com/index.html"><img src="./hotelPay_files/logo.png" style="width:62px;height:50px;"></a></li>
            <li class="nav-hov"><a href="http://www.goutrip.com/index.html">首页</a></li>
            <li class="nav-sub nav-hov"><a class="theme-a" href="http://www.goutrip.com/themeTrip/themeList.html" "="">主题旅行<i class="triangle-top"></i></a>
                <!--下拉框开始-->
                <div class="drop-down">
                    <p class="triangle-up"></p>
                    <div class="w1200 clearfix" id="typelist"><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="./hotelPay_files/dc815273c7147c1d0d53d2c9b9099e.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&#39;">亲子系列</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1908&#39;">比利时</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1885&#39;">阿联酋</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1710&#39;">南非</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1484&#39;">瑞士</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1483&#39;">意大利</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1482&#39;">德国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=438&#39;">埃及</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=118&#39;">泰国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1&#39;">国内目的地</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=474&#39;">美国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=282&#39;">日本</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=146&#39;">法国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=122&#39;">柬埔寨</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="./hotelPay_files/ac59d234aa38587cc7374e42a14010.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&#39;">蜜月假期</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=1887&#39;">以色列</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=1710&#39;">南非</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=449&#39;">澳大利亚</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=1820&#39;">巴厘岛</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=475&#39;">墨西哥</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=303&#39;">斯里兰卡</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=1825&#39;">马尔代夫</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="./hotelPay_files/c12992f19f5b193e0e80454d88998f.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&#39;">摄影</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=1904&#39;">捷克</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=1710&#39;">南非</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=449&#39;">澳大利亚</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=301&#39;">尼泊尔</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=1&#39;">国内目的地</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=450&#39;">新西兰</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=303&#39;">斯里兰卡</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=146&#39;">法国</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="./hotelPay_files/dd29b1f20fafd78bb2760c802da279.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&#39;">潜水</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&amp;terminiId=1893&#39;">马来西亚</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&amp;terminiId=1890&#39;">菲律宾</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&amp;terminiId=118&#39;">泰国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&amp;terminiId=1819&#39;">普吉岛</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&amp;terminiId=1820&#39;">巴厘岛</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="./hotelPay_files/5d184b416dfe0a83ad848416ed9a9e.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&#39;">越野自驾</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&amp;terminiId=1484&#39;">瑞士</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&amp;terminiId=1482&#39;">德国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&amp;terminiId=449&#39;">澳大利亚</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&amp;terminiId=118&#39;">泰国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&amp;terminiId=1&#39;">国内目的地</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="./hotelPay_files/512bf36e1728ae78748e4ee3735eda.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&#39;">滑雪</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&amp;terminiId=1906&#39;">奥地利</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&amp;terminiId=1484&#39;">瑞士</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&amp;terminiId=473&#39;">加拿大</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&amp;terminiId=146&#39;">法国</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="./hotelPay_files/42de82a57e4643bc751af900f0c2f0.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=257&#39;">特色旅行</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=257&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=257&amp;terminiId=1820&#39;">巴厘岛</li></ul></div></div>
                </div>
                <!--下拉框结束-->
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
<script src="./hotelPay_files/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
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
    <div class="progress w1200">
        <i class="prog-1"></i>
        <span class="prog-fill">填写订单</span>
        <i class="prog-2"></i>
        <span class="prog-pay">支付订单</span>
        <i class="prog-3"></i>
        <span class="prog-succ">支付完成</span>
    </div>
    <div class="detail w1200">
        <div class="order-detail ">
            <div class="pay-btn clearfix">
                <p class="pay-money fl">
                    <i>应付金额</i>
                    <span><b>￥</b>${param.price}</span>
                </p>
                <button class="detial-btn fr">订单详情</button>
            </div>
            <ul class="detail-inner clearfix">
                <li>
                    <i>订单号：</i>
                    <span class="order-num">${param.number}</span>
                </li>
                <li>
                    <i>产品名称：</i>
                    <span class="hotel-name">${param.name}</span>
                </li>
                <li>
                    <i>入住时间：</i>
                    <span class="occu-time">${param.intime}至${param.outtime}</span>
                </li>
            </ul>
            <p class="over-time">
                <i>剩余支付时间：</i>
                <span class="occu-time" id="timer"><b>0</b>天<b>0</b>时<b>59</b>分<b>51</b>秒</span>
            </p>

        </div>
<form name="myForm" id="myForm" target="_blank" action="" method="post">
    	<input name="orderNum" type="hidden" id="orderNum" value="20170626120840349938">
    	<input type="hidden" id="remainTime" value="3600">
        <div class="pay-toggle main_tab">
            <ol class="clearfix">
                <li class="bord_btm remcon">微信支付</li>
                <li>支付宝</li>
                <li>网银支付</li>
            </ol>
            <div class="tab_1 tab clearfix">
                <div class="pay-choose fl">
                    <p class="pay-type">微信支付</p>
                    <button class="pay-go pay-go-y" onclick="subForm(1)">去支付</button>
                </div>
                <div class="pay-tip fr">
                    <p>点击“去支付”</p>
                    <p>   打开微信“扫一扫”</p>
                    <p>   扫描二维码进行支付</p>
                </div>
            </div>
            <div class="tab_2 tab clearfix" style="display: none;">
                <div class="pay-choose fl">
                    <p class="pay-type">支付宝支付</p>
                    <button class="pay-go pay-go-y" onclick="subForm(2)">去支付</button>
                </div>
            </div>
            <div class="tab_3 tab clearfix" style="display: none;">
                <div class="pay-choose fl">
                    <p class="pay-type">网银支付</p>
                    <button class="pay-go pay-go-y" onclick="subForm(3)">去支付</button>
                </div>
            </div>
        </div>
</form>
    </div>
    <div class="over-time-alert hideDiv">
        <p class="warm-tip clearfix">
            <span class="fl">温馨提示</span>
            <i class="fr alert-close"></i>
        </p>
        <p class="tip-txt">该笔订单支付超时，请重新下单！</p>
        <button class="alert-btn">确定</button>
    </div>
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
</script><!--尾部结束-->

<script>
    //支付跳转
    function subForm(i){
    	if($(".pay-go").hasClass('pay-go-c')) return false;
    	$(".pay-go").removeClass("pay-go-y").addClass("pay-go-c").attr("disabled","true");
		if(i==1){
			myForm.action="<%=path%>/hotelalipay.jsp?num=${param.number}&name=${param.name}&price=${param.price}";
			myForm.submit();
			//myForm为form的id
		}else if(i==3){
			myForm.action="<%=path%>/hotelalipay.jsp?num=${param.number}&name=${param.name}&price=${param.price}";//银联接口
			myForm.submit();
			//myForm为form的id
		}else{
			myForm.action="<%=path%>/hotelalipay.jsp?num=${param.number}&name=${param.name}&price=${param.price}";//支付宝接口
			myForm.submit();
			//myForm为form的id
		}
	}
	
 	
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
		}else{  
			clearInterval(timer);
			$('#main_tab div').find('span').attr('onclick','');
			$('#main_tab div').find('span').addClass('ccc');  
			//alert("时间到，结束!");  
		}  
	} 
</script>

</body></html>