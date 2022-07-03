<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0041)http://www.goutrip.com/hotel/channel.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>酒店首页</title>
	<link href="hotel/public.css" rel="stylesheet">
    <link href="hotel/common.css" rel="stylesheet">
    <link href="hotel/hotelIndex.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <link href="hotel/city2.css" rel="stylesheet" type="text/css">
    
    <script src="hotel/hm.js.下载"></script><script src="hotel/jquery-1.11.3.js.下载"></script>
	<script type="text/javascript" src="hotel/laydate.js.下载"></script><link type="text/css" rel="stylesheet" href="hotel/laydate.css"><link type="text/css" rel="stylesheet" href="hotel/laydate(1).css" id="LayDateSkin">
	<script src="hotel/hotelIndex.js.下载"></script>
	<script src="hotel/layer.js.下载"></script><link rel="stylesheet" href="hotel/layer.css" id="layui_layer_skinlayercss">
	<script src="hotel/jquery.slider.js.下载"></script>
	<script language="JavaScript" type="text/javascript" src="hotel/city2.js.下载"></script>
</head>

<body>
<header>
<!--顶部导航开始-->
<div class="header">
    <div class="clearfix w1200">
        <ol class="head-nav fl">
            <li class="logo"><a href="<%=path%>/home.jsp"><img src="hotel/logo.png" style="width:62px;height:50px;"></a></li>
            <li class="nav-hov"><a href="<%=path%>/home.jsp">首页</a></li>
            <li class="nav-sub nav-hov"><a class="theme-a" href="<%=path%>/route.jsp" "="">主题旅行<i class="triangle-top"></i></a>
                <!--下拉框开始-->
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
<script src="hotel/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
<script type="text/javascript" merge="true">
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

<!--新版酒店开始-->

<div class="main">
    <!--banner图-->
    <div class="banner" style="height: 449.662px; width: 1349px;">
        <!--轮播图-->
        <div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 450px;"><ul class="slider" style="height: 449.662px; width: auto; position: relative;">
		            <li class="slide" style="float: none; list-style: none; position: absolute; width: 1349px; z-index: 0; display: none;">
		                <a href="<%=path%>/hotelInfo.do?hotel_id=2"><img class="bgImage banner" src="hotel/03823ba5e7445122d6e8ae9e0e941d.jpg" data-original="http://image.goutrip.com/63/03823ba5e7445122d6e8ae9e0e941d.jpg" alt="" style="height: 449.662px; width: 1349px; display: block;"></a>
		            </li>
		            <li class="slide" style="float: none; list-style: none; position: absolute; width: 1349px; z-index: 50;">
		                <a href="<%=path%>/hotelInfo.do?hotel_id=1"><img class="bgImage banner" src="hotel/a4556ede6fcdd1f1e97882364e31fa.jpg" data-original="http://image.goutrip.com/a2/a4556ede6fcdd1f1e97882364e31fa.jpg" alt="" style="height: 449.662px; width: 1349px; display: block;"></a>
		            </li>
        </ul></div><div class="bx-controls bx-has-pager"><div class="bx-pager bx-default-pager"><div class="bx-pager-item"><a href="<%=path%>/hotel.do" data-slide-index="0" class="bx-pager-link">1</a></div><div class="bx-pager-item"><a href="<%=path%>/hotel.do" data-slide-index="1" class="bx-pager-link active">2</a></div></div></div></div>
        <!--搜索框-->
      <form action="<%=path%>/search.do" method="post">
        <div class="search">
            <ol>
                <li class="search-hotel">
                    <i class="search-line"></i>
                    <span>酒店搜索</span>
                    <i class="search-line"></i>
                </li>
                <li class="search-li">
                    <i class="address-icon"></i><input type="text" name="city" id="city" class="search-area" placeholder="请输入目的地">
                </li>
                <li class="search-li">
                    <span class="search-txt">入住</span>
                    <input type="text" name="inTime" id="startDay" class="laydate-icon" value="" placeholder="请提前一天预定">
                </li>
                <li class="search-li">
                    <span class="search-txt">离店</span>
                    <input type="text" name="outTime" id="endDay" class="laydate-icon" value="" placeholder="退房时间">
                </li>
                <li class="search-btn">
                    <input type="submit" class="searcher" value="搜索">
                </li>
            </ol>
           
            <script type="text/javascript">
			    new Vcity.CitySelector({input:'city',type:'3'});
			    /* function search() {
			        var keyword = $("#keyword").val();
            		if('(选填)酒店名称/地标/商圈' == keyword) keyword = '';
            		var cityId = $("#city").attr("cityid");
            		if(typeof(cityId) == "undefined"){cityId ="";}
            		/* location.href='/hotel/hotelListNew.html?cityId=' + cityId + '&startDay=' + $("#startDay").val() + "&endDay=" + $("#endDay").val() + '&keyword=' + keyword; */
            		location.href='/hotel/search.do?city=;
			    } */
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
					         end.start = datas //将结束日的初始值设定为开始日
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
        </div>
     </form>
    </div>
    <!--产品清单-->
    <div class="product clearfix">
        <div class="w1200">
            <ul class="pro-content fl">
                <li class="">
                    <div class="pro-title">
                        <span class="yellow-diamon">HOTEL</span>
                        <span class="sub-title">文化精品  The high-quality goods culture hotel</span>
                        <span class="line"></span>
                    </div>
                    <div class="pro-txt">
                        <p class="pro-txt-inner">
                            <span>以“retro”的情愫，送给您最别致的穿越感受。</span>
                            <span>将一座城市的文化历史，浓缩成一间房屋，令旅途时刻都充斥着带入感，使您轻而易举的了解到另一个国度的文化。</span>
                            <span>我们的服务将令人排斥的老旧酒店套路屏蔽，以革新精神为您挑选出最具目的地文化特点的房间，送您最地道的出行感受。</span>
                        </p>
                        <p class="pro-txt-sub">
                            *请于预订前与我们核实，预订是否成功以酒店为准
                        </p>
                    </div>
                </li>
                <li class="hide">
					<div class="pro-title">
                        <span class="yellow-diamon">HOTEL</span>
                        <span class="sub-title">海岛风情  Island amorous feelings of the hotel</span>
                        <span class="line"></span>
                    </div>
                    <div class="pro-txt">
                        <p class="pro-txt-inner">
                            <span>还有什么比海景房来的更舒心，还有什么比沙屋水屋来的更自在。</span>
                            <span>我们邀您尽快了体验一款淋漓尽致的人生，旅行的意义不仅仅在于风景，更重要的是一家酒店充满怎样的情怀。</span>
                            <span>拥抱下热带，体验下现代化服务设施，每天出门都可以感受得到尊贵而自在的人生，是如此痛快。</span>                           
                        </p>
                        <p class="pro-txt-sub">
                            *请于预订前与我们核实，预订是否成功以酒店为准
                        </p>
                    </div>
                </li>
                <li class="hide">
                    <div class="pro-title">
                        <span class="yellow-diamon">HOTEL</span>
                        <span class="sub-title">健康养生  Healthy hotel</span>
                        <span class="line"></span>
                    </div>
                    <div class="pro-txt">
                        <p class="pro-txt-inner">
                            <span>“至善感受，源自天性”，我们时刻关注一家酒店是否具备关爱心，在您出行的时候，能够时刻将最完美的服务陪伴左右。</span>
                            <span>以东方最讲究的待客之道，融合周边原汁原味的自然风情，并送上最有诚意的健康养生服务，请在上帝的眷顾下，开启一场善待自己的旅途吧。</span>
                        </p>
                        <p class="pro-txt-sub">
                            *请于预订前与我们核实，预订是否成功以酒店为准
                        </p>
                    </div>
                </li>
                <li class="hide">
                <div class="pro-title">
                        <span class="yellow-diamon">HOTEL</span>
                        <span class="sub-title">名山胜景  Famous mountains scenic landscape hotel</span>
                        <span class="line"></span>
                    </div>
                    <div class="pro-txt">
                        <p class="pro-txt-inner">
                            <span>生活在万山丛中，或者另辟蹊径的湖边，究竟是怎样的感受。</span>
                            <span>我们秉承“自然而然”的观念，精选全球最贴近自然风情的酒店坐标，让充满花香美景的空间与入住的房间融为一体，庭院的漫步恍然犹如林间的游历一般，光线充沛的餐厅，木质的走廊，开阔的视窗，以及设施的多样，面面俱到。</span>
                        </p>
                        <p class="pro-txt-sub">
                            *请于预订前与我们核实，预订是否成功以酒店为准
                        </p>
                    </div>
                </li>
                <li class="hide">
                    <div class="pro-title">
                        <span class="yellow-diamon">HOTEL</span>
                        <span class="sub-title">亲子悦动  Parent-child yue hotel</span>
                        <span class="line"></span>
                    </div>
                    <div class="pro-txt">
                        <p class="pro-txt-inner">
                            <span>生活在别处，让孩子成为一个“四海有家”的人。</span>
                            <span>为孩子及家人开启一段充满奇幻有趣的路途，必先拥有一间满是“人情味”的房间，让城市不再陌生，让欢乐随处可见。</span>
                            <span>我们将各种美妙的场景切换，实现家与旅途的零距离，预定我们的服务，用不同的视界感受世界，用一顿温情的午餐，唤起孩子们最童真的梦。</span>
                        </p>
                        <p class="pro-txt-sub">
                            *请于预订前与我们核实，预订是否成功以酒店为准
                        </p>
                    </div>
                </li>
                <li class="hide">
                	<div class="pro-title">
                        <span class="yellow-diamon">HOTEL</span>
                        <span class="sub-title">别墅庄园  Villa manor hotel</span>
                        <span class="line"></span>
                    </div>
                    <div class="pro-txt">
                        <p class="pro-txt-inner">
                            <span>在工作中，你或许扮演了诸多角色，而做自己反而是一件十分奢侈的事情。</span>
                            <span>此时此刻，你可能最需要一个像样的别墅来度假。在庄园的陪伴下，卸掉一切面具和压力，轻松回归自我。</span>
                            <span>预定我们的服务，我们将为您搜索全球最值得体验的庄园酒店，极赋特色的顶级设施与服务，最具创造力的高品位等您光临。</span>
                        </p>
                        <p class="pro-txt-sub">
                            *请于预订前与我们核实，预订是否成功以酒店为准
                        </p>
                    </div>
                </li>
                
                <li class="hide">
                	<div class="pro-title">
                        <span class="yellow-diamon">HOTEL</span>
                        <span class="sub-title">市郊游乐  On the outskirts of amusement hotel</span>
                        <span class="line"></span>
                    </div>
                    <div class="pro-txt">
                        <p class="pro-txt-inner">
                            <span>对于追求快乐的旅人来说，什么才算绝好的落脚栖所？</span>
                            <span>让你与游玩有绝对近距离，让你时刻可以感受摩登或古典的沉迷，让你有最便捷舒适的体验，这些都是你拿得出手来炫耀的名片。</span>
                            <span>预定我们的服务，这些统统属于你。</span>
                        </p>
                        <p class="pro-txt-sub">
                            *请于预订前与我们核实，预订是否成功以酒店为准
                        </p>
                    </div>
                </li>
                <li class="hide">
                    <div class="pro-title">
                        <span class="yellow-diamon">HOTEL</span>
                        <span class="sub-title">商务酒店  Business Hotel </span>
                        <span class="line"></span>
                    </div>
                    <div class="pro-txt">
                        <p class="pro-txt-inner">
                            <span>应对快速轮转的生活，你需要一个安心、舒适、便捷的多功能性住所。</span>
                            <span>无论身在哪座城市，预定我们的服务，你都可以找到最匹配个人需求的商务房间。</span>
                            <span>优越的地理位置，安全管家式服务，以及最具关怀的多功能设备服务，这些都是你需要住在这里的理由。</span>
                        </p>
                        <p class="pro-txt-sub">
                            *请于预订前与我们核实，预订是否成功以酒店为准
                        </p>
                    </div>
                </li>
                <li class="hide">
                	<div class="pro-title">
                        <span class="yellow-diamon">HOTEL</span>
                        <span class="sub-title">联合酒店  Hotel Union</span>
                        <span class="line"></span>
                    </div>
                    <div class="pro-txt">
                        <p class="pro-txt-inner">
                            <span>我们拥有覆盖到全球100多个国家的资源，让旅途变得更省心。</span>
                            <span>无论从地理位置还是到优质服务，我们都一一匹配到您的选择里，用便捷、健康、快乐的元素打败那些毫无生机的老旅馆，在旅途中更有时间和心情，规划自己想走的路。</span>
                        </p>
                        <p class="pro-txt-sub">
                            *请于预订前与我们核实，预订是否成功以酒店为准
                        </p>
                    </div>
                </li>
                <li class="hide">
                    <div class="pro-title">
                        <span class="yellow-diamon">HOTEL</span>
                        <span class="sub-title">公寓浪潮  Apartment</span>
                        <span class="line"></span>
                    </div>
                    <div class="pro-txt">
                        <p class="pro-txt-inner">
                            <span>旅行中一定要有相当珍贵的附加值，走的要有深度，住的要有高度。</span>
                            <span>我们不知道最好的公寓是什么样子，但我们一直都在为您寻找最适合的那款。</span>
                            <span>让您能够身在其中，无限亲近生活、自然之美，让您与这座陌生的城市变得没有丝毫距离。</span>
                        </p>
                        <p class="pro-txt-sub">
                            *请于预订前与我们核实，预订是否成功以酒店为准
                        </p>
                    </div>
                </li>
                
            </ul>
            <ol class="pro-list fr">
                <li onclick="window.location.href=&#39;hoteltype.do?hotel_type=0&type=culture&#39;">
                    <p>
                        <i>文化精品</i>
                        <span>The high-quality goods culture hotel</span>
                    </p>
                </li>
                <li onclick="window.location.href=&#39;hoteltype.do?hotel_type=1&type=island&#39;">
                    <p>
                        <i>海岛风情</i>
                        <span>Island amorous feelings of the hotel</span>
                    </p>
                </li>
                <li onclick="window.location.href=&#39;hoteltype.do?hotel_type=2&type=healthy&#39;">
                    <p>
                        <i>健康养生</i>
                        <span>Healthy hotel</span>
                    </p>
                </li>
                <li onclick="window.location.href=&#39;hoteltype.do?hotel_type=3&type=mountains&#39;">
                    <p>
                        <i>名山胜景</i>
                        <span>Famous mountains scenic landscape hotel</span>
                    </p>
                </li>
                <li onclick="window.location.href=&#39;hoteltype.do?hotel_type=4&type=parentChild&#39;">
                    <p>
                        <i>亲子悦动</i>
                        <span>Parent-child yue hotel</span>
                    </p>
                </li>
                <li onclick="window.location.href=&#39;hoteltype.do?hotel_type=5&type=Villa&#39;">
                    <p>
                        <i>别墅庄园</i>
                        <span>Villa manor hotel</span>
                    </p>
                </li>
                <li onclick="window.location.href=&#39;hoteltype.do?hotel_type=6&type=outskirts&#39;">
                    <p>
                        <i>市郊游乐</i>
                        <span>On the outskirts of amusement hotel</span>
                    </p>
                </li>
                <li onclick="window.location.href=&#39;hoteltype.do?hotel_type=7&type=business&#39;">
                    <p>
                        <i>商务酒店</i>
                        <span>Business Hotel </span>
                    </p>
				</li>
                <li onclick="window.location.href=&#39;hoteltype.do?hotel_type=8&type=coBranded&#39;">
                    <p>  
                        <i>联合酒店</i>
                        <span>Hotel Union</span>
                    </p>
                </li>
                <li onclick="window.location.href=&#39;hoteltype.do?hotel_type=9&type=apartment&#39;">
                    <p>
                        <i>公寓浪潮</i>
                        <span>Apartment</span>
                    </p>
                </li>
            </ol>
        </div>

    </div>
    <!--主题推荐-->
    <div class="theme w1200">
        <div class="theme-title">
            <p class="title-inner">
                <i class="title-line"></i>
                <span class="title-txt">主题推荐</span>
                <i class="title-line"></i>
            </p>
        </div>
        <div class="theme-toggle">
            <ul class="theme-toggle-icon clearfix">
                <li label="culture">
                    <i id="icon-culture" class="icon-culture-hover"></i>
                    <span class="icon-txt">文化精品</span>
                </li>
                <li label="island">
                    <i id="icon-island"></i>
                    <span class="icon-txt">海岛风情</span>
                </li>
                <li label="healthy">
                    <i id="icon-health"></i>
                    <span class="icon-txt">健康养生</span>
                </li>
                <li label="mountains">
                    <i id="icon-hill"></i>
                    <span class="icon-txt">名山盛景</span>
                </li>
                <li label="parentChild">
                    <i id="icon-parent"></i>
                    <span class="icon-txt">悦动亲子</span>
                </li>
            </ul>
            
            <ol class="theme-toggle-img clearfix">
            	<c:forEach items="${hotelList}" var="hotel">
            			<li>
		                    <img class="bgImage" data-original="http://image.goutrip.com/cc/82c8d6745a4085a1494871e746faa1.jpg" src="http://www.goutrip.com/hotel/channel.html" alt="" onclick="window.location.href=&#39;<%=path%>/hotelInfo.do?hotel_id=${hotel.hotel_id}&#39;">
		                    <span class="img-txt clearfix">
		                        <i class="toggle-img-title fl" title="${hotel.hotel_name}">${hotel.hotel_name}</i>
		                        <span class="toggle-img-parice fr"><i>￥${hotel.hotel_price}</i> 起</span>
		                    </span>
		                </li>
            	</c:forEach>		
            </ol>
            
        </div>
		<p class="theme-more" onclick="window.location.href=&#39;list.do&#39;">查看更多</p>
    </div>
    
    <div class="hotel">
        <div class="w1200">
            <div class="hotel-title">
                <p class="title-inner">
                    <i class="title-line"></i>
                    <span class="title-txt">特色酒店</span>
                    <i class="title-line"></i>
                </p>
            </div>
	        <div class="hotel-toggle clearfix">
	            <ul class="hotel-toggle-list fl">
	                	<li class="hotel-toggle-hover">上海特色酒店</li>
	                	<li>杭州特色酒店</li>
	                	<li>三亚特色酒店</li>
	                	<li>厦门特色酒店</li>
	                	<li>苏州特色酒店</li>
	            </ul>
	            <ol class="hotel-toggle-inner fl">
	                	<li class="clearfix ">
			                    	<div class="hotel-inner-title">
			                    		<span class="address">上海</span>
			                        	<span class="address-cover">
			                        		迪士尼2016年6月16日盛大开幕，游乐园的夜晚，帮助孩子们填满心中最美的梦。
			                        	</span>
			                    	</div> 
			               <c:forEach items="${SHhotelByLike}" var="SHlike">
		                        <div class="hotel-inner-img">
				                    <img class="bgImage" data-original="http://image.goutrip.com/cc/82c8d6745a4085a1494871e746faa1.jpg" src="http://www.goutrip.com/hotel/channel.html" alt="" onclick="window.location.href=&#39;<%=path%>/hotelInfo.do?hotel_id=${SHlike.hotel_id}&#39;">
				                    <span class="img-txt">
				                        <i class="toggle-img-title">${SHlike.hotel_name}</i>
				                        <span class="toggle-img-parice"><i>￥${SHlike.hotel_price}</i> 起</span>
				                    </span>
				                </div>
		                	</c:forEach>  
	                	</li>
	                	<li class="clearfix hide">
			                    	<div class="hotel-inner-title">
			                    		<span class="address">杭州</span>
			                        	<span class="address-cover">
			                        		爱上这儿的天青色，也许不必等烟雨，所有最美的相遇，都不及鲥鱼&amp;花雕的1%。
			                        	</span>
			                    	</div> 
			               <c:forEach items="${HZhotelByLike}" var="HZlike">
		                        <div class="hotel-inner-img">
				                    <img class="bgImage" data-original="http://image.goutrip.com/ab/8e98d2ca07c75e36d3a2d8a6b7579d.jpg" src="http://www.goutrip.com/hotel/channel.html" alt="" onclick="window.location.href=&#39;<%=path%>/hotelInfo.do?hotel_id=${HZlike.hotel_id}&#39;">
				                    <span class="img-txt">
				                        <i class="toggle-img-title">${HZlike.hotel_name}</i>
				                        <span class="toggle-img-parice"><i>￥${HZlike.hotel_price}</i> 起</span>
				                    </span>
				                </div>
		                   </c:forEach>    
	                	</li>
	                	<li class="clearfix hide">
			                    	<div class="hotel-inner-title">
			                    		<span class="address">三亚</span>
			                        	<span class="address-cover">
			                        		挥别单人房，爱上双人床。与“失散”很久的人，一起用海鲜疗伤，一起荡气回肠。
			                        	</span>
			                    	</div>
			               <c:forEach items="${SYhotelByLike}" var="SYlike">
		                        <div class="hotel-inner-img">
				                    <img class="bgImage" data-original="http://image.goutrip.com/50/cf8a4398a71bf2d7f132e89c04af1b.jpg" src="http://www.goutrip.com/hotel/channel.html" alt="" onclick="window.location.href=&#39;<%=path%>/hotelInfo.do?hotel_id=${SYlike.hotel_id}&#39;">
				                    <span class="img-txt">
				                        <i class="toggle-img-title">${SYlike.hotel_name}</i>
				                        <span class="toggle-img-parice"><i>￥${SYlike.hotel_price}</i> 起</span>
				                    </span>
				                </div>
		                   </c:forEach>      
	                	</li>
	                	<li class="clearfix hide">
			                    	<div class="hotel-inner-title">
			                    		<span class="address">厦门</span>
			                        	<span class="address-cover">
			                        		与历史兜圈，和小吃缠绵，住在鼓浪屿，不再新鲜却有说不完的“黑鳳梨”。
			                        	</span>
			                    	</div> 
			               <c:forEach items="${XMhotelByLike}" var="XMlike">
		                        <div class="hotel-inner-img">
				                    <img class="bgImage" data-original="http://image.goutrip.com/de/1d108d452e9cb9408db6c21bdb9e35.jpg" src="http://www.goutrip.com/hotel/channel.html" alt="" onclick="window.location.href=&#39;<%=path%>/hotelInfo.do?hotel_id=${XMlike.hotel_id}&#39;">
				                    <span class="img-txt">
				                        <i class="toggle-img-title">${XMlike.hotel_name}</i>
				                        <span class="toggle-img-parice"><i>￥${XMlike.hotel_price}</i> 起</span>
				                    </span>
				                </div>
		                   </c:forEach>     
	                	</li>
	                	<li class="clearfix hide">
			                    	<div class="hotel-inner-title">
			                    		<span class="address">苏州</span>
			                        	<span class="address-cover">
			                        		逃出儿时的必修课，在小城故事与未来城市间任意穿梭，1.8公里的苏州湾，生态美的没话说。
			                        	</span>
			                    	</div> 
			               <c:forEach items="${SZhotelByLike}" var="SZlike">
		                        <div class="hotel-inner-img">
				                    <img class="bgImage" data-original="http://image.goutrip.com/42/2d9f95eda068985f55cb7a47d2dbe8.jpg" src="http://www.goutrip.com/hotel/channel.html" alt="" onclick="window.location.href=&#39;<%=path%>/hotelInfo.do?hotel_id=${SZlike.hotel_id}&#39;">
				                    <span class="img-txt">
				                        <i class="toggle-img-title">${SZlike.hotel_name}</i>
				                        <span class="toggle-img-parice"><i>￥${SZlike.hotel_price}</i> 起</span>
				                    </span>
				                </div>
		                   </c:forEach>     
	                	</li>
	            </ol>
	        </div>
        </div>
    </div>
</div>

<!--新版酒店结束-->

<!--侧边栏-->
<!--侧边栏-->
<aside class="asides" style="display: none;">
    <ul>
        <li class="app">
            <a href="http://www.goutrip.com/appLink/appLinkSkipping.html" target="_blank"></a>
            <!--二维码-->
            <div class="appEr"><img src="hotel/apper.png" alt=""></div>
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
            <img src="hotel/bannner_34.png">
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

<div class="citySelector" style="position: absolute; left: 197.5px; top: 247px; z-index: 999999;"><div class="cityBox hide" id="cityBox"><p class="tip">(支持汉字/拼音)</p><ul><li class="on">热门城市</li><li>A-E</li><li>F-J</li><li>K-O</li><li>P-T</li><li>U-Z</li></ul><div class="hotCity"><div class="hot cityTab"><dl><dt>&nbsp;</dt><dd><a cityid="911" href="javascript:void(0);">合肥市</a><a cityid="900" href="javascript:void(0);">厦门</a><a cityid="920" href="javascript:void(0);">黄山</a><a cityid="892" href="javascript:void(0);">广州</a><a cityid="831" href="javascript:void(0);">北京</a><a cityid="893" href="javascript:void(0);">成都</a><a cityid="919" href="javascript:void(0);">昆明</a><a cityid="923" href="javascript:void(0);">大理</a><a cityid="927" href="javascript:void(0);">哈尔滨</a><a cityid="926" href="javascript:void(0);">峨眉山</a><a cityid="925" href="javascript:void(0);">丽江</a><a cityid="895" href="javascript:void(0);">长沙</a><a cityid="928" href="javascript:void(0);">张家界</a><a cityid="890" href="javascript:void(0);">南京</a><a cityid="946" href="javascript:void(0);">苏州</a><a cityid="941" href="javascript:void(0);">桂林</a></dd></dl></div><div class="A_E cityTab hide"><dl><dt>A</dt><dd><a cityid="933" href="javascript:void(0);">阿克苏</a></dd></dl><dl><dt>B</dt><dd><a cityid="831" href="javascript:void(0);">北京</a><a cityid="993" href="javascript:void(0);">芭提雅</a><a cityid="1006" href="javascript:void(0);">北海</a></dd></dl><dl><dt>C</dt><dd><a cityid="893" href="javascript:void(0);">成都</a><a cityid="895" href="javascript:void(0);">长沙</a><a cityid="956" href="javascript:void(0);">长春</a><a cityid="860" href="javascript:void(0);">重庆</a><a cityid="971" href="javascript:void(0);">崇礼县</a></dd></dl><dl><dt>D</dt><dd><a cityid="923" href="javascript:void(0);">大理</a><a cityid="963" href="javascript:void(0);">大连</a></dd></dl><dl><dt>E</dt><dd><a cityid="926" href="javascript:void(0);">峨眉山</a></dd></dl></div><div class="F_J cityTab hide"><dl><dt>F</dt><dd><a cityid="967" href="javascript:void(0);">佛山</a><a cityid="989" href="javascript:void(0);">釜山</a></dd></dl><dl><dt>G</dt><dd><a cityid="892" href="javascript:void(0);">广州</a><a cityid="941" href="javascript:void(0);">桂林</a></dd></dl><dl><dt>H</dt><dd><a cityid="911" href="javascript:void(0);">合肥市</a><a cityid="920" href="javascript:void(0);">黄山</a><a cityid="927" href="javascript:void(0);">哈尔滨</a><a cityid="932" href="javascript:void(0);">和田</a><a cityid="934" href="javascript:void(0);">和静县</a><a cityid="924" href="javascript:void(0);">杭州</a><a cityid="932" href="javascript:void(0);">和田</a><a cityid="977" href="javascript:void(0);">惠州</a><a cityid="995" href="javascript:void(0);">海口</a></dd></dl><dl><dt>J</dt><dd><a cityid="948" href="javascript:void(0);">济南</a><a cityid="950" href="javascript:void(0);">佳木斯</a><a cityid="976" href="javascript:void(0);">吉林市</a><a cityid="978" href="javascript:void(0);">晋中</a><a cityid="979" href="javascript:void(0);">晋城</a><a cityid="987" href="javascript:void(0);">济州岛</a></dd></dl></div><div class="K_O cityTab hide"><dl><dt>K</dt><dd><a cityid="919" href="javascript:void(0);">昆明</a><a cityid="930" href="javascript:void(0);">库尔勒</a><a cityid="938" href="javascript:void(0);">喀什</a><a cityid="996" href="javascript:void(0);">昆山</a></dd></dl><dl><dt>L</dt><dd><a cityid="925" href="javascript:void(0);">丽江</a><a cityid="953" href="javascript:void(0);">溧阳</a></dd></dl><dl><dt>M</dt><dd><a cityid="994" href="javascript:void(0);">曼谷</a></dd></dl><dl><dt>N</dt><dd><a cityid="890" href="javascript:void(0);">南京</a><a cityid="912" href="javascript:void(0);">南宁</a></dd></dl></div><div class="P_T cityTab hide"><dl><dt>P</dt><dd><a cityid="990" href="javascript:void(0);">普吉岛</a></dd></dl><dl><dt>Q</dt><dd><a cityid="951" href="javascript:void(0);">青岛</a><a cityid="952" href="javascript:void(0);">曲阜</a><a cityid="992" href="javascript:void(0);">清迈</a></dd></dl><dl><dt>S</dt><dd><a cityid="946" href="javascript:void(0);">苏州</a><a cityid="875" href="javascript:void(0);">三亚市</a><a cityid="875" href="javascript:void(0);">三亚</a><a cityid="896" href="javascript:void(0);">深圳</a><a cityid="832" href="javascript:void(0);">上海</a><a cityid="961" href="javascript:void(0);">沈阳</a><a cityid="875" href="javascript:void(0);">三亚</a><a cityid="988" href="javascript:void(0);">首尔</a><a cityid="991" href="javascript:void(0);">苏梅岛</a><a cityid="1005" href="javascript:void(0);">绍兴</a><a cityid="1005" href="javascript:void(0);">绍兴</a></dd></dl><dl><dt>T</dt><dd><a cityid="889" href="javascript:void(0);">天津</a><a cityid="955" href="javascript:void(0);">泰州</a><a cityid="947" href="javascript:void(0);">太原</a><a cityid="969" href="javascript:void(0);">吐鲁番</a></dd></dl></div><div class="U_Z cityTab hide"><dl><dt>W</dt><dd><a cityid="931" href="javascript:void(0);">乌鲁木齐</a><a cityid="954" href="javascript:void(0);">无锡</a><a cityid="894" href="javascript:void(0);">武汉</a><a cityid="1004" href="javascript:void(0);">威海</a><a cityid="1004" href="javascript:void(0);">威海</a></dd></dl><dl><dt>X</dt><dd><a cityid="900" href="javascript:void(0);">厦门</a><a cityid="945" href="javascript:void(0);">西安</a><a cityid="945" href="javascript:void(0);">西安</a><a cityid="968" href="javascript:void(0);">西宁</a></dd></dl><dl><dt>Y</dt><dd><a cityid="942" href="javascript:void(0);">阳朔</a><a cityid="937" href="javascript:void(0);">伊宁</a><a cityid="936" href="javascript:void(0);">伊犁</a><a cityid="997" href="javascript:void(0);">烟台</a></dd></dl><dl><dt>Z</dt><dd><a cityid="928" href="javascript:void(0);">张家界</a><a cityid="966" href="javascript:void(0);">中山</a><a cityid="970" href="javascript:void(0);">珠海</a></dd></dl></div></div></div></div>

</body></html>