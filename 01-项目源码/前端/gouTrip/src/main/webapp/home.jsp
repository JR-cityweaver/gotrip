<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%String basePath=request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0023)http://www.goutrip.com/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>够旅游| 主题游，就上够旅游！-[官网]</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
	<meta name="keywords" content="中国旅游服务平台，深度游，纯玩团，高端旅游，定制旅游，定制旅行，旅行策划，旅游线路推荐，特色旅游，五一旅游，跟团旅游，自驾游，欧洲旅游">
	<meta name="description" content="主题游，就上够旅游，够旅游网为你提供深度有品质的主题旅游、主题酒店、精品酒店、私人订制旅行咨询预订、价格查询服务，让你享受有主题的旅行。">
    <link rel="stylesheet" href="<%=basePath%>/home/pubLic.css">
    <link rel="stylesheet" href="<%=basePath%>/home/common.css">
    <link rel="stylesheet" href="<%=basePath%>/home/index.css">
    
    <link rel="shortcut icon" type="<%=basePath%>/image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="<%=basePath%>/home/hm.js.下载"></script><script src="<%=basePath%>/home/jquery-1.11.3.js.下载"></script>
    <script src="<%=basePath%>/home/layer.js.下载"></script><link rel="stylesheet" href="<%=basePath%>/home/layer.css" id="layui_layer_skinlayercss">
	<script src="<%=basePath%>/home/jquery.slider.js.下载"></script>   <!--轮播插件-->
	<script src="<%=basePath%>/home/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
	<script src="<%=basePath%>/home/index2.js.下载"></script>
	
	<!--百度Site App的uaredirect.js实现手机访问，自动跳转网站手机版-->
	<script src="<%=basePath%>/home/uaredirect.js.下载" type="text/javascript"></script>
	<script type="text/javascript">uaredirect("http://m.goutrip.com");</script>

</head>
<body>

<!--头部-->
<!--主体内容-->
<!--banner图-->
<div class="main-top">
    <!--轮播图-->
    <div class="bx-wrapper">
        <div class="bx-viewport">
            <div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 492px;"><ul class="slider" id="index_banner" style="height: 491.71px; width: 1349px; position: relative;">
            	            			<li class="slide" style="float: none; list-style: none; position: absolute; width: 1349px; z-index: 0; display: none;">
		                    <a href="graduation.jsp" target="_blank"><img class="banner bgImage" src="<%=basePath%>/home/54b6088338828371198da5400f36c0.jpg" data-original="<%=basePath%>/home/54b6088338828371198da5400f36c0.jpg" alt="" style="height: 491.71px; width: 1349px; display: block;"></a>
		                </li>
            			<li class="slide" style="float: none; list-style: none; position: absolute; width: 1349px; z-index: 0; display: none;">
		                    <a href="carnival.jsp" target="_blank"><img class="banner bgImage" src="<%=basePath%>/home/97b6e2f73dfe9a2aae3b9b5ff74b0.jpg" data-original="<%=basePath%>/home/97b6e2f73dfe9a2aae3b9b5ff74b0.jpg" alt="" style="height: 491.71px; width: 1349px; display: block;"></a>
		                </li>
            			<li class="slide" style="float: none; list-style: none; position: absolute; width: 1349px; z-index: 0; display: none;">
		                    <a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank"><img class="banner bgImage" src="<%=basePath%>/home/546ce4522db1faf0251977672ff141.jpg" data-original="http://image.goutrip.com/cb/546ce4522db1faf0251977672ff141.jpg" alt="" style="height: 491.71px; width: 1349px; display: block;"></a>
		                </li>
            			<li class="slide" style="float: none; list-style: none; position: absolute; width: 1349px; z-index: 50;">
		                    <a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank"><img class="banner bgImage" src="<%=basePath%>/home/da800398de74fbfcf75976579cc1fe.jpg" data-original="http://image.goutrip.com/1f/da800398de74fbfcf75976579cc1fe.jpg" alt="" style="height: 491.71px; width: 1349px; display: block;"></a>
		                </li>
            			<li class="slide" style="float: none; list-style: none; position: absolute; width: 1349px; z-index: 0; display: none;">
		                    <a href="recruit.jsp" target="_blank"><img class="banner bgImage" src="<%=basePath%>/home/3cb8483c84914e1df0ed8249ec3814.png" data-original="<%=basePath%>/home/3cb8483c84914e1df0ed8249ec3814.png" alt="" style="height: 491.71px; width: 1349px; display: block;"></a>
		                </li>
            </ul></div>
        </div>
    </div>
    <!--顶部导航-->
    <div class="index-nav clearfix">
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
        
        
    </div>
</div>
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
		<script type="text/javascript">
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
		</script>
<!--专注于全球主题旅游-->
<div class="focus">
    <div class="w1200">
        <!--每部分大标题-->
        <div class="titles">
            <h1>专注于全球主题旅行</h1>
            <p class="sub-title">
                <i class="sub-line"></i>
                <span class="heat-y">有趣的灵魂终会相聚</span>
                <i class="sub-line"></i>
            </p>
        </div>
        <!--搜索框-->
        <form class="searchBox" action="<%=basePath %>/route/search.do" method="post">
            <input type="text" placeholder="输入您想去的目的地/主题游" name="country" class="searchInput" autocomplete="off">
            <input type="submit" value="" class="searchIcon">
            <!--搜索下拉列表-->
            <div class="searchList clearfix" style="display: none;">
	            
	            <p class="search-title">热门目的地</p>
	            <ul class="hot-list-inner clearfix"><li><a href="<%=basePath %>/route/search.do?country=欧洲">欧洲</a></li><li><a href="<%=basePath %>/route/search.do?country=巴厘岛">巴厘岛</a></li><li><a href="<%=basePath %>/route/search.do?country=美国">美国</a></li></ul>
            </div>
            
        </form>
    </div>
</div>
<!--全方位主题旅游-->
<div class="goutrip">
    <div class="w1200">
        <!--每部分大标题-->
        <div class="titles">
            <h1><span class="gou">够</span>&nbsp;<i class="heat-b"></i>&nbsp;<span class="zhuti">主题</span></h1>
            <p class="sub-title">
                <i class="sub-line"></i>
                <span class="heat-f">赴一场专属旅行时光</span>
                <i class="sub-line"></i>
            </p>
        </div>
        <!--图文列表-->
        <ul class="list-s clearfix" id="themesType">
	                <li class="list Items">
	                    <a href="route.jsp"><img src="<%=basePath%>/image/pic1.png" alt="" data-original="<%=basePath%>/image/pic1.png" class="showPic bgImage"></a>
	                    <div class="pop popC">
	                     <a href="route.jsp">
	                        <h3 class="themes-name">亲子人文</h3>
	                        <p class="h3-line"></p>
	                        <p class="themes-des">
	                            <span>聚焦亲情</span>
	                            <span>大手牵小手游遍全世界</span>
	                        </p>
	                     </a>   
	                    </div>
	                </li>
	                <li class="list Items">
	                    <a href="route.jsp"><img src="<%=basePath%>/image/pic2.png" alt="" data-original="<%=basePath%>/image/pic2.png" class="showPic bgImage"></a>
	                    <div class="pop popC">
	                    <a href="route.jsp">
	                        <h3 class="themes-name">蜜月假期</h3>
	                        <p class="h3-line"></p>
	                        <p class="themes-des">
	                            <span>甜腻时光</span>
	                            <span>全世界都在唱情歌</span>
	                        </p>
	                    </a>    
	                    </div>
	                </li>
	                <li class="list Items">
	                    <a href="route.jsp"><img src="<%=basePath%>/image/pic3.png" alt="" data-original="<%=basePath%>/image/pic3.png" class="showPic bgImage"></a>
	                    <div class="pop popC">
	                    <a href="route.jsp">
	                        <h3 class="themes-name">深度摄影</h3>
	                        <p class="h3-line"></p>
	                        <p class="themes-des">
	                            <span>摁下快门</span>
	                            <span>大好河山尽收眼底	</span>
	                        </p>
	                    </a>    
	                    </div>
	                </li>
        </ul>
        <p class="themes-more" onclick="window.location.href='route.jsp'">更多主题</p>
    </div>
</div>
<!--精品主题路线-->
<div class="Boutique">
    <div class="w1200">
        <!--每部分大标题-->
        <div class="titles">
            <h1><span class="gou">够</span>&nbsp;<i class="heat-b"></i>&nbsp;<span class="zhuti">产品</span></h1>
            <p class="sub-title">
                <i class="sub-line"></i>
                <span class="heat-f">精雕细琢尚品本色</span>
                <i class="sub-line"></i>
            </p>
            <!--更多主题-->
            <!--列表-->
            <ul class=" clearfix">
		                <li class="list list2">
		                    <a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">
		                    	<img src="<%=basePath %>/routeDetail/detail.do?route_detail=1" alt="" data-original="http://image.goutrip.com/e6/7235c9c9e95c7d9fffdcaa1f3cb0b6.png" class="showPic bgImage">
		                    </a>
		                    <div class="pop pop2">
		                        <p><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">【欢乐亲子】河内芽庄6晚7天豪华之旅</a></p>
		                        <h5><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank"><span>7,780</span>起/人<del>9,725</del><span>元<span></span></span></a></h5>
		                    </div>
		                </li>
		                <li class="list list2">
		                    <a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">
		                    	<img src="<%=basePath %>/routeDetail/detail.do?route_detail=1" alt="" data-original="http://image.goutrip.com/3d/df3e50a57aafd9460e72030c468efd.jpg" class="showPic bgImage">
		                    </a>
		                    <div class="pop pop2">
		                        <p><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">【活力长跑】2017神户马拉松2晚3天-11月19日</a></p>
		                        <h5><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank"><span>2,799</span>起/人<del>3,699</del><span>元<span></span></span></a></h5>
		                    </div>
		                </li>
		                <li class="list list2">
		                    <a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">
		                    	<img src="<%=basePath %>/routeDetail/detail.do?route_detail=1" alt="" data-original="http://image.goutrip.com/54/a748db78119827684363c87e365406.jpg" class="showPic bgImage">
		                    </a>
		                    <div class="pop pop2">
		                        <p><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">【活力长跑】2018京都马拉松3天2晚-2月18日</a></p>
		                        <h5><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank"><span>3,399</span>起/人<del>3,699</del><span>元<span></span></span></a></h5>
		                    </div>
		                </li>
		                <li class="list list2">
		                    <a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">
		                    	<img src="<%=basePath %>/routeDetail/detail.do?route_detail=1" alt="" data-original="http://image.goutrip.com/1d/7b21d4c80027b63c32f439f718c24a.jpg" class="showPic bgImage">
		                    </a>
		                    <div class="pop pop2">
		                        <p><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">【定格美好】新西兰南北岛7晚9天之旅</a></p>
		                        <h5><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank"><span>21,800</span>起/人<del>22,800</del><span>元<span></span></span></a></h5>
		                    </div>
		                </li>
		                <%-- <li class="list list2">
		                    <a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">
		                    	<img src="<%=basePath %>/routeDetail/detail.do?route_detail=1" alt="" data-original="http://image.goutrip.com/61/6c3cf86d3241d0d1e88ceae45808c2.jpg" class="showPic bgImage">
		                    </a>
		                    <div class="pop pop2">
		                        <p><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">【亲子研学】徽州人文地理七日亲子营</a></p>
		                        <h5><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank"><span>3,550</span>起/人<del>3,880</del><span>元<span></span></span></a></h5>
		                    </div>
		                </li> --%>
            </ul>
            <p class="themes-more" onclick="window.location.href='route.jsp'">更多路线</p>
        </div>
    </div>
</div>
<!--主题游团队贴心服务-->
<div class="intimateServ clearfix">
    <div class="w1200 clearfix">
        <div class="titles">
            <h1><span class="gou">够</span>&nbsp;<i class="heat-b"></i>&nbsp;<span class="zhuti">服务</span></h1>
            <p class="sub-title">
                <i class="sub-line"></i>
                <span class="heat-f">定格美好出行记忆</span>
                <i class="sub-line"></i>
            </p>
        </div>
        <ul class="serviceList clearfix">
            <li>
                <span class="circle">个性行程</span>
                <div class="paragraph">
                    <p>享定制行程，游全球胜地，</p>
                    <p>个性玩法，大咖线路，</p>
                    <p>奢华体验，只为您选。</p>
                </div>
            </li>
            <li>
                <span class="circle">轻奢私享</span>
                <div class="paragraph">
                    <p>尽优选航班，揽精品酒店，</p>
                    <p>私家导游，豪车专车，</p>
                    <p>细微服务，倾情奉上。</p>
                </div>
            </li>
            <li>
                <span class="circle">深度体验</span>
                <div class="paragraph">
                    <p>不止于观光，多样化尝试，</p>
                    <p>私享臻食，顶级赛事，</p>
                    <p>独家珍藏，任您体验。</p>
                </div>
            </li>
        </ul>
        <h4 class="lets">让每一次旅程都与众不同</h4>
    </div>
</div>
<!--私人订制优秀方案-->
<div class="private">
    <div class="w1200">
        <!--每部分大标题-->
        <div class="titles">
            <h1><span class="gou">够</span>&nbsp;<i class="heat-b"></i>&nbsp;<span class="zhuti">定制</span></h1>
            <p class="sub-title">
                <i class="sub-line"></i>
                <span class="heat-f">让旅行更有温度</span>
                <i class="sub-line"></i>
            </p>
        </div>
        <!--优秀案例列表-->
        <ul class="excellent clearfix">
            <li class="list anime1">
                <img src="<%=basePath%>/image/custom_putuoshan.jpg" alt="" data-original="<%=basePath%>/image/custom_putuoshan.jpg" class="showPic bgImage">
                <a class="clearfix" href="customizePutuoshan.jsp" target="_blank">
                    <div class="pop privatePop">
                        <span class="placeName">普陀山</span>
                        <p class="travel">行程天数：<span>7</span>天</p>
                        <h3 class="budget">预算：<span>3888</span>元/人</h3>
                        <div class="culture">
                            <p>静心修身，感悟真谛</p>
                            <p style="padding-left: 4px;">心领文化礼遇慢生活！</p>
                        </div>
                    </div>
                </a>
                <div class="sub-list">
                    <p class="list-title">云游养生普陀山天台山禅修朝圣之旅</p>
                    <p class="list-other">
                        <span class="sub-day">行程天数：<i class="other-day">7天</i></span>
                        <span class="sub-parice">预算：<i class="other-parice">3888</i>元／人</span>
                    </p>
                </div>
            </li>
            <li class="list anime2">
                <img src="<%=basePath%>/image/custom_qingmai.jpg" alt="" data-original="<%=basePath%>/image/custom_qingmai.jpg" class="showPic bgImage">
                <a class="clearfix" href="customizeQingmai.jsp" target="_blank">
                    <div class="pop privatePop">
                        <span class="placeName">泰国清迈</span>
                        <p class="travel">行程天数：<span>7</span>天</p>
                        <h3 class="budget">预算：<span>7500</span>元/人</h3>
                        <div class="culture">
                            <p>清来清往，席地而坐</p>
                            <p style="padding-left: 4px;">仰俯之间素晨曦尽览！</p>
                        </div>
                    </div>
                </a>
                <div class="sub-list">
                    <p class="list-title">印象清迈泰北清修7天之旅</p>
                    <p class="list-other">
                        <span class="sub-day">行程天数：<i class="other-day">7天</i></span>
                        <span class="sub-parice">预算：<i class="other-parice">7500</i>元／人</span>
                    </p>
                </div>
            </li>
            <li class="list anime3">
                <img src="<%=basePath%>/image/custom_paris.jpg" alt="" data-original="<%=basePath%>/image/custom_paris.jpg" class="showPic bgImage">
                <a class="clearfix" href="customizeParis.jsp" target="_blank">
                    <div class="pop privatePop">
                        <span class="placeName">法国</span>
                        <p class="travel">行程天数：<span>5</span>天</p>
                        <h3 class="budget">预算：<span>9500</span>元/人</h3>
                        <div class="culture">
                            <p>情定巴黎，神秘瑰宝</p>
                            <p style="padding-left: 4px;">聆听故事拟唤醒情怀 ！</p>
                        </div>
                    </div>
                </a>
                <div class="sub-list">
                    <p class="list-title">浪漫之都－小清新之旅</p>
                    <p class="list-other">
                        <span class="sub-day">行程天数：<i class="other-day">5天</i></span>
                        <span class="sub-parice">预算：<i class="other-parice">9500</i>元／人</span>
                    </p>
                </div>
            </li>
        </ul>
    </div>
</div>
<!--一次完整舒适的旅行-->
<div class="confort">
    <div class="w1200">
        <!--每部分大标题-->
        <div class="titles">
            <h1><span class="gou">够</span>&nbsp;<i class="heat-b"></i>&nbsp;<span class="zhuti">超值</span></h1>
            <p class="sub-title">
                <i class="sub-line"></i>
                <span class="heat-f">让每一次旅行都物超所值</span>
                <i class="sub-line"></i>
            </p>
        </div>
    </div>
    <ul class="comfTravel clearfix w1200">
        <li>
            <img src="<%=basePath%>/home/price.png" alt="">
            <h3>价格透明</h3>
            <div class="textPar">
                <p>分项报价</p>
                <p>精打细算的自由选择</p>
                <p>高性价比的超凡体验</p>
            </div>
        </li>
        <li>
            <img src="<%=basePath%>/home/service.png" alt="">
            <h3>省心服务</h3>
            <div class="textPar">
                <p>带上定制出行手册</p>
                <p>环球WIFI任性出游</p>
                <p>7/24小时管家随时为您安排一切</p>
            </div>
        </li>
        <li>
            <img src="<%=basePath%>/home/baozhang.png" alt="">
            <h3>合同保障</h3>
            <div class="textPar">
                <p>签订国家旅游局颁发的正规</p>
                <p>《出境旅游合同》</p>
                <p>安心与品质一手在握</p>
            </div>
        </li>
    </ul>
    <h4 class="last_lets lets">一切的细节和繁琐都交给我们</h4>
</div>
<!--侧边栏-->
<aside class="asides" style="display: none;">
    <ul>
        <li class="app">
            <a href="http://www.goutrip.com/appLink/appLinkSkipping.html" target="_blank"></a>
            <!--二维码-->
            <div class="appEr"><img src="<%=basePath%>/home/apper.png" alt=""></div>
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

<!--底部-->
<!--尾部-->
<div class="botm" data-oxlazy="<%=basePath%>/image/bgmidd_04.png">
    <div class="w1200">
        <div>
            <img class="botm-logo" src="<%=basePath%>/image/logo-3.png">
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
            <img src="<%=basePath %>/hotel/bannner_34.png">
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


</body></html>