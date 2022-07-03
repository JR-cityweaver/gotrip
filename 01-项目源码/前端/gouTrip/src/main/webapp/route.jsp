<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0047)http://www.goutrip.com/themeTrip/themeList.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>旅游线路|报价|推荐_够旅游：主题游就上够旅游
    </title>
    <meta name="description" content="主题旅游线路、报价、推荐，更可以量身定制旅游线路，享受专属你的主题游、定制游。">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="旅游线路报价，景点推荐攻略，主题旅游，够旅游">
    <link rel="stylesheet" href="<%=basePath %>/route/public.css">
    <link rel="stylesheet" href="<%=basePath %>/route/common.css">
    <link rel="stylesheet" href="<%=basePath %>/route/themeList.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="<%=basePath %>/route/hm.js"></script><script src="<%=basePath %>/route/jquery-1.11.3.js"></script>
    <script src="<%=basePath %>/route/layer.js"></script><link rel="stylesheet" href="<%=basePath %>/route/layer.css" id="layui_layer_skinlayercss">
    <script type="text/javascript" src="<%=basePath %>/route/ojbUrl.js"></script>
    <style type="text/css">
    	a:link {color:#666695;}
    	a:visited {color:#666695;}
    </style>
</head>
<body>
<!--头部开始-->
<!--顶部导航开始-->
<div class="header">
   <div class="clearfix w1200">

        <ol class="head-nav fl">
            <li class="logo"><a href="<%=basePath%>/home.jsp"><img src="<%=basePath%>/route/logo.png" style="width:62px;height:50px;"></a></li>
            <li class="nav-hov"><a href="<%=basePath %>/home.jsp">首页</a></li>
            <li class="nav-sub nav-hov"><a class="theme-a" href="<%=basePath%>/route.jsp"  style="bottom: 0px;">主题旅行<i class="triangle-top"></i></a>
                <!--下拉框开始-->
              <div class="drop-down" style="display: none;">
                    <p class="triangle-up"></p>
     			<div class="w1200 clearfix" id="typelist"><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="<%=basePath %>/route/dc815273c7147c1d0d53d2c9b9099e.png"><a class="module-title-name fl" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=0" target="content">亲子系列</a><a class="module-title-more fr" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=0" target="content">更多</a></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=比利时" target="content">比利时</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=阿联酋" target="content">阿联酋</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=南非" target="content">南非</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=瑞士" target="content">瑞士</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=意大利" target="content">意大利</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=德国" target="content">德国</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=埃及" target="content">埃及</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=泰国" target="content">泰国</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=国内目的地" target="content">国内目的地</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=美国" target="content">美国</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=日本" target="content">日本</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=法国" target="content">法国</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=柬埔寨" target="content">柬埔寨</a></li></ul></div>  			
     			<div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="<%=basePath %>/route/ac59d234aa38587cc7374e42a14010.png"><a class="module-title-name fl" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=1" target="content">蜜月假期</a><a class="module-title-more fr" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=1" target="content">更多</a></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=以色列" target="content">以色列</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=南非" target="content">南非</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=澳大利亚" target="content">澳大利亚</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=巴厘岛" target="content">巴厘岛</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=墨西哥" target="content">墨西哥</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=斯里兰卡" target="content">斯里兰卡</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=马尔代夫" target="content">马尔代夫</a></li></ul></div>
     			<div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="<%=basePath %>/route/c12992f19f5b193e0e80454d88998f.png"><a class="module-title-name fl" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=2" target="content">摄影</a><a class="module-title-more fr" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=2" target="content">更多</a></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=捷克" target="content">捷克</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=南非" target="content">南非</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=澳大利亚" target="content">澳大利亚</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=尼泊尔" target="content">尼泊尔</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=国内目的地" target="content">国内目的地</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=新西兰" target="content">新西兰</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=斯里兰卡" target="content">斯里兰卡</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=法国" target="content">法国</a></li></ul></div>
     			<div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="<%=basePath %>/route/dd29b1f20fafd78bb2760c802da279.png"><a class="module-title-name fl" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=3" target="content">潜水</a><a class="module-title-more fr" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=3" target="content">更多</a></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=马来西亚" target="content">马来西亚</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=菲律宾" target="content">菲律宾</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=泰国" target="content">泰国</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=普吉岛" target="content">普吉岛</a></li><li class="module-inner-nation fl"><a href="<%=basePath%>/route/getRouteByCountry.do?country=巴厘岛" target="content">巴厘岛</a></li></ul></div>
     			<div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="<%=basePath %>/route/5d184b416dfe0a83ad848416ed9a9e.png"><a class="module-title-name fl" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=4" target="content">越野自驾</a><a class="module-title-more fr" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=4" target="content">更多</a></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=瑞士" target="content">瑞士</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=德国" target="content">德国</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=澳大利亚" target="content">澳大利亚</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=泰国" target="content">泰国</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=国内目的地" target="content">国内目的地</a></li></ul></div>
     			<div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="<%=basePath %>/route/512bf36e1728ae78748e4ee3735eda.png"><a class="module-title-name fl" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=5" target="content">滑雪</a><a class="module-title-more fr" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=5" target="content">更多</a></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=奥地利" target="content">奥地利</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=瑞士" target="content">瑞士</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=加拿大" target="content">加拿大</a></li><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=法国" target="content">法国</a></li></ul></div>
     			<div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="<%=basePath %>/route/42de82a57e4643bc751af900f0c2f0.png"><a class="module-title-name fl" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=6" target="content">特色旅行</a><a class="module-title-more fr" href="<%=basePath%>/route/getRouteByTheme.do?route_themetype=6" target="content">更多</a></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" ><a href="<%=basePath%>/route/getRouteByCountry.do?country=巴厘岛" target="content">巴厘岛</a></li></ul></div></div>
              </div>
                <!--下拉框结束-->
            </li>
            <li class="nav-hov"><a class="hotel-a" href="<%=basePath%>/hotel.do">主题酒店</a></li>
            <li class="nav-hov"><a class="person-a" href="<%=basePath%>/personal.jsp">私人定制</a></li>
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
<script src="<%=basePath %>/route/jquery.lazyload.min.js"></script><!--懒加载图片-->
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

<!--主题部分开始-->
<div class="main">
    <div>
        <!--主题顶部开始-->
        <div class="Ma_top">
            <p>
                <span>主题旅行</span> 
                
                
                
                <input type="hidden" id="sortType" value="0">
            </p>
        </div>
        <!--主题顶部结束-->


        <!--主题左部开始-->
        <div class="Ma_left">
            <!--全部主题
-->
            <!--出行日期
            <div>
                <p>出行日期</p>
                <div class="date">
                    <p>
                        <span class="blue" type="startDay" dataid="0">不限</span>
                        <span  type="startDay" dataid="1">1月</span>
                        <span  type="startDay" dataid="2">2月</span>
                    </p>
                    <p>
                        <span  type="startDay" dataid="3">3月</span>
                        <span  type="startDay" dataid="4">4月</span>
                        <span  type="startDay" dataid="5">5月</span>
                    </p>
                    <p>
                        <span  type="startDay" dataid="6">6月</span>
                        <span  type="startDay" dataid="7">7月</span>
                        <span  type="startDay" dataid="8">8月</span>
                    </p>
                    <p>
                        <span  type="startDay" dataid="9">9月</span>
                        <span  type="startDay" dataid="10">10月</span>
                        <span  type="startDay" dataid="11">11月</span>
                    </p>
                    <p>
                        <span  type="startDay" dataid="12">12月</span>
                    </p>
                </div>
            </div>-->
            <!--搜索其他目的地-->
            <div>
                <p>搜索其他目的地</p>
                <form action="<%=basePath %>/route/search.do" method="post">
	                <div class="search">
	                    <input placeholder="请输入目的地" name="country" id="country"><button id="submit1" class="searchIcon"></button>
	                    
	                </div>
				</form>
            </div>
            <!--相关路线推荐-->
            <div>
                <p>相关路线推荐</p>
                <div class="recom">
	                    <div>
	                    	<a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">
	                        	<img class="bgImage" src="<%=basePath %>/route/7235c9c9e95c7d9fffdcaa1f3cb0b6.png" data-original="http://image.goutrip.com/e6/7235c9c9e95c7d9fffdcaa1f3cb0b6.png" style="display: block;">
	                        </a>
	                        <p><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">【欢乐亲子】河内芽庄6晚7天豪华之旅</a></p>
	                        <p><span>7,780元&nbsp;</span>起/人</p>
	                    </div>
	                    <div>
	                    	<a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">
	                        	<img class="bgImage" src="<%=basePath %>/route/df3e50a57aafd9460e72030c468efd.jpg" data-original="http://image.goutrip.com/3d/df3e50a57aafd9460e72030c468efd.jpg" style="display: block;">
	                        </a>
	                        <p><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">【活力长跑】2017神户马拉松2晚3天-11月19日</a></p>
	                        <p><span>2,799元&nbsp;</span>起/人</p>
	                    </div>
	                    
	                    <div>
	                    	<a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">
	                        	<img class="bgImage" src="<%=basePath %>/routeDetail/detail.do?route_detail=1" data-original="http://image.goutrip.com/1d/7b21d4c80027b63c32f439f718c24a.jpg">
	                        </a>
	                        <p><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">【定格美好】新西兰南北岛7晚9天之旅</a></p>
	                        <p><span>21,800元&nbsp;</span>起/人</p>
	                    </div>
                    <!-- <p><a href="http://www.goutrip.com/themeTrip/themeRoute.html">更多</a></p> -->
                </div>

            </div>
        </div>
        <!--主题左部结束-->


        <!--主题右部开始-->
        <div class="Ma_right">
            <!--下拉选项-->
            
           <iframe name="content" id="content" style="width: 100%; height: 1200px; border:0px;" src="<%=basePath%>/route/getAllRoute.do?pageno=1" scrolling="no"></iframe>
        </div>
		   



	<!--侧边栏-->
<!--侧边栏-->
<aside class="asides" style="display: none;">
    <ul>
        <li class="app">
            <a href="http://www.goutrip.com/appLink/appLinkSkipping.html" target="_blank"></a>
            <!--二维码-->
            <div class="appEr"><img src="<%=basePath %>/route/apper.png" alt=""></div>
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
    <!--底部-->
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
                <li><a href="" target="_blank">关于我们</a></li>
                <li><a href="" target="_blank">媒体报道</a></li>
                <li><a href="" target="_blank">工作机会</a></li>
                <li><a href="" target="_blank">联系我们</a></li>
                <li><a href="" target="_blank">隐私免责</a></li>
                <li><a href="" target="_blank">服务条款</a></li>
            </ul>
        </div>
        <div>
            <ul>
                <li>旅行服务</li>
                <li><a href="" target="_blank">私人订制</a></li>
                <li><a href="" target="_blank">境外wifi</a></li>
                <li><a href="" target="_blank">签证预订</a></li>
            </ul>
        </div>
        <div>
            <img src="<%=basePath %>/route/bannner_34.png">
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
</script>	<!--底部-->

<script>
	//检测全部主题栏    奇数个时左对齐
	$(function(){
		var len=$(".theme").children("span").length;
		if(len%2>0){
			$(".theme").children("span:last-child").css({"margin-right":"142px"})
		}
	})
	$(function(){
	    //头部悬停下拉列表
	    $(".sec1_img,.sec2_img").hide();
	    $(".sec1,.sec2").hover(function(){
	        $(this).find("div").css({"display":"block"})
	        $(this).find("i").removeClass("sec-arrow-1").addClass("sec-arrow-2");
	    },function(){
	        $(this).find("div").css({"display":"none"})
	        $(this).find("i").removeClass("sec-arrow-2").addClass("sec-arrow-1");
	    })
	   
	})
	
	//升降筛选
	function changeSort(sort){
	    var search = location.search;
	    if (search.indexOf("sort=") != -1) {
	        location.href=location.pathname + search.replace(/sort=\d+/g,'sort=' + sort);
	    } else {
	        if (search.indexOf("?") != -1) {
	            location.href = location.pathname + search + "&sort=" + sort;
	        } else {
	            location.href = location.pathname + search + "?sort=" + sort;
	        }
	    }
	}
	
	//添加刷选条件
	$(".theme span,.date span,.sec1 a,#selectParm a").on('click', function () {
		var myurl=new objURL();//Javascript操作URL 函数（新增，修改，删除 URL参数）
		var newUrl = myurl.url();
		var param = $(this).attr("type");//参数
		if($(this).text()=='不限' || $(this).text()=='全部'){
			myurl.remove(param);
			newUrl = myurl.url();
		}else{
			var newParValue = $(this).attr("dataid");//参数值
			myurl.set(param,newParValue);//新增与修改参数
			newUrl = myurl.url();
		}
		location.href = newUrl;
	});
	//天数，价格点击效果
	$(function(){
        function clk(a){
            $(".time"+a).hover(function(){
                $(".img_top"+a).addClass("top_b");
                $(".img_botm"+a).addClass("botm_b");
            },function(){
                $(".img_top"+a).removeClass("top_b");
                $(".img_botm"+a).removeClass("botm_b");
            })
            $(".time"+a).click(function(){
            	var sortType = $('#sortType').val();
            	if (a==1 && sortType==5) {
            		$(".img_top"+a).addClass("top_c").removeClass("top_b");
	                $(".img_botm"+a).addClass("botm_b").removeClass("botm_c");
	                changeSort(6);//天数降序
            	}else if(a==1 && sortType==6){
            		$(".img_top"+a).removeClass("top_c").addClass("top_b");
	                $(".img_botm"+a).removeClass("botm_b").addClass("botm_c");
	                changeSort(5);//天数升序
            	}else if(a==2 && sortType==3) {
            		$(".img_top"+a).addClass("top_c").removeClass("top_b");
	                $(".img_botm"+a).addClass("botm_b").removeClass("botm_c");
	                changeSort(4);//价格降序
            	}else if(a==2 && sortType==4){
            		$(".img_top"+a).removeClass("top_c").addClass("top_b");
	                $(".img_botm"+a).removeClass("botm_b").addClass("botm_c");
	                changeSort(3);//价格升序
            	}else{
            		//初始点击都是升序
            		$(".img_top"+a).removeClass("top_c").addClass("top_b");
	                $(".img_botm"+a).removeClass("botm_b").addClass("botm_c");
	                if(a==1){
	                	changeSort(5);
	                }else{
	                	changeSort(3);
	                }
            	}
        	})
        }
        clk("1");
        clk("2");
        
    });
		
</script>

<script type="text/javascript">
	$("#submit1").click(function(){
			var country=$("#country").val();
			var flag=0;
		if(country==""){
			flag=1;
			layer.tips('目的地为空', $("#country"),{tips: 1});
			}
		if(flag>0){
			return false;
			}

		});
</script>
</body></html>