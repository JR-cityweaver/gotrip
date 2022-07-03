<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0046)http://www.goutrip.com/hotel/hotelListNew.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>酒店列表</title>
    <link href="./hotelList_files/public.css" rel="stylesheet">
    <link href="./hotelList_files/common.css" rel="stylesheet">
    <link href="./hotelList_files/hotelList.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <link href="./hotelList_files/city2.css" rel="stylesheet" type="text/css">
    
    <script src="./hotelList_files/hm.js.下载"></script><script src="./hotelList_files/jquery-1.11.3.js.下载"></script>
	<script type="text/javascript" src="./hotelList_files/laydate.js.下载"></script><link type="text/css" rel="stylesheet" href="./hotelList_files/laydate.css"><link type="text/css" rel="stylesheet" href="./hotelList_files/laydate(1).css" id="LayDateSkin">
	<script src="./hotelList_files/hotelList.js.下载"></script>
	<script src="./hotelList_files/layer.js.下载"></script><link rel="stylesheet" href="./hotelList_files/layer.css" id="layui_layer_skinlayercss">
	<script src="./hotelList_files/jquery.slider.js.下载"></script>
	<script language="JavaScript" type="text/javascript" src="./hotelList_files/city2.js.下载"></script>
</head>
<body>
<header>
<!--顶部导航开始-->
<div class="header">
    <div class="clearfix w1200">
        <ol class="head-nav fl">
            <li class="logo"><a href="<%=path%>/home.jsp"><img src="./hotelList_files/logo.png" style="width:62px;height:50px;"></a></li>
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
<script src="./hotelList_files/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
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

<div class=" w1200">
    <div class="page-route">
        <span>首页 &gt;</span>
        <span>主题酒店 &gt;</span>
        <span class="font-c">精品酒店</span>
    </div>
    <!--顶部输入框-->
  <form action="<%=path%>/search.do" method="post">
    <div class="search-bar clearfix">
        <p class="search-address fl">
            <span>目的地</span>
            <input type="text" id="city" value="${param.city}" name="city" onfocus="this.style.color=&#39;#666&#39;" onkeydown="this.style.color=&#39;#666&#39;">
        </p>
        <p class="search-on fl">
            <span>入住</span>
            <input type="text" id="startDay" class="laydate-icon" value="入住时间" placeholder="请提前一天预定" readonly="">
        </p>
        <p class="search-off fl">
            <span>离店</span>
            <input type="text" id="endDay" class="laydate-icon" value="离店时间" placeholder="退房时间" readonly="">
        </p>
        <p class="search-key fl">
            <span>关键词</span>
            <input type="text" id="keyword" value="(选填)酒店名称/地标/商圈" onfocus="if(this.value!=&#39;(选填)酒店名称/地标/商圈&#39;){this.style.color=&#39;#666&#39;}else{this.value=&#39;&#39;;this.style.color=&#39;#ccc&#39;}" onblur="if (this.value==&#39;&#39;){this.value=&#39;(选填)酒店名称/地标/商圈&#39;;this.style.color=&#39;#ccc&#39;}" onkeydown="this.style.color=&#39;#666&#39;">
        </p>
        <p class="search-btn fl">
            <input type="submit" value="搜索" onclick="javascript:search();">
        </p>
        <script type="text/javascript">
		    new Vcity.CitySelector({input:'city',type:'3'});
		    function search() {
		        /* linkParm($(this));//拼接url参数 */
		        location.href='/hotel/search.do?city=;
		    }
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
    <!--酒店类型列表-->
    <div class="hotel-type clearfix">
        <p class="type-name fl">酒店类型：</p>
        <input type="hidden" id="hotel_label" value="">
        <ul class="type-list fl">
            <li label="" class="font-bg-c">全部主题</li>
            <li label="culture"><a href="<%=path %>/list.do?hotel_type=0">文化精品</a></li>
            <li label="island"><a href="<%=path %>/list.do?hotel_type=1">海岛风情</a></li>
            <li label="healthy"><a href="<%=path %>/list.do?hotel_type=2">健康养生</a></li>
            <li label="mountains"><a href="<%=path %>/list.do?hotel_type=3">名山胜景</a></li>
            <li label="parentChild"><a href="<%=path %>/list.do?hotel_type=4">亲子悦动</a></li>
            <li label="villa"><a href="<%=path %>/list.do?hotel_type=5">别墅庄园</a></li>
            <li label="outskirts"><a href="<%=path %>/list.do?hotel_type=6">市郊游乐</a></li>
            <li label="business"><a href="<%=path %>/list.do?hotel_type=7">商务酒店</a></li>
            <li label="coBranded"><a href="<%=path %>/list.do?hotel_type=8">联合酒店</a></li>
            <li label="apartment"><a href="<%=path %>/list.do?hotel_type=9">公寓浪潮</a></li>
        </ul>
        <script>
        	//初始化主题类型
			var hotel_label = $('#hotel_label').val();
			$('.type-list li').each(function(){
				  var label = $(this).attr('label');
				  if(hotel_label==label){
					  $(this).addClass('font-bg-c').siblings().removeClass('font-bg-c');
				  }
			});
        </script>
    </div>
    <!--酒店---推荐-&#45;&#45;价格-->
    <div class="main-content">
        <div class="content-tip">
            <span class="recommend ">推荐</span>
            <span class="parice-act">
                <i class="parice-name ">价格</i>
                <i class="parice-res-add">
                    <button class="parice-top " sort="3"></button>
                    <button class="parice-btm " sort="4"></button>
                </i>
            </span>
        </div>
        <c:forEach items="${hotelSearchList}" var="search">
        <!--酒店内容&#45;&#45;&#45;&#45;详情-->
		        <div class="content-inner clearfix">
		            <p class="inner-title"><i class="font-c">HOTEL</i>${search.hotel_name}</p>
		            <div class="carousel fl">
		                <ul class="bigPic clearfix">
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/66b407d35d4977b7b77f1031d84e8c.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/52ddccfa7b907023facd98dcd2670.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/a39586f24099ed76674623ddc01d11.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/bf212f00687e9080a82a3fca414482.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/431c71ae4fe1b8be32fdd89fe90b9d.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/c9f7e44b89dad3bd4f742f99d615fa.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/155215a02b428c4715f3f8592f9685.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/fdaa617f2e450c5cd1487c46244732.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/e2b7859d20bdb08fa5bfc70ef62b1.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/e734ce216b5c1f628c7ef56e689f41.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/7053460bdfff765949d30c473aa153.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/ee19ff8c7ab93aeae4d1495ec42c13.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/bb5a88cbe247733dd43059ee82edfe.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/bb0fd22a433ccd7f0a9556e9555efa.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/c67685057a6d9c56af7eb767d24ff1.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/f8e092d8b3e75206950a80129422ee.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
			                		<li>
				                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/56970b391dfd0d4dae6295d2ec99a4.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
				                    </li>
		                </ul>
		                <div class="smallPic clearfix">
		                    <button class="left"></button>
		                    <div class="veiw-ol clearfix">
		                    <ol class="clearfix">
			                				<li class="now">
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/66b407d35d4977b7b77f1031d84e8c.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/52ddccfa7b907023facd98dcd2670.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/a39586f24099ed76674623ddc01d11.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/bf212f00687e9080a82a3fca414482.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/431c71ae4fe1b8be32fdd89fe90b9d.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/c9f7e44b89dad3bd4f742f99d615fa.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/155215a02b428c4715f3f8592f9685.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/fdaa617f2e450c5cd1487c46244732.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/e2b7859d20bdb08fa5bfc70ef62b1.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/e734ce216b5c1f628c7ef56e689f41.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/7053460bdfff765949d30c473aa153.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/ee19ff8c7ab93aeae4d1495ec42c13.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/bb5a88cbe247733dd43059ee82edfe.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/bb0fd22a433ccd7f0a9556e9555efa.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/c67685057a6d9c56af7eb767d24ff1.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/f8e092d8b3e75206950a80129422ee.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
			                				<li>
						                        <a href="javascript:;"><img class="bgImage" src="./hotelList_files/56970b391dfd0d4dae6295d2ec99a4.jpg" alt="三亚银泰阳光度假酒店（原三亚湘投银泰度假酒店）"></a>
						                    </li>
		                    </ol>
		                    </div>
		                    <button class="right"></button>		                    
		                </div>
		            </div>
		            <div class="summary fr">
		                <div class="sum-title">
		                    <i class="line"></i>
		                    <span>酒店简介</span>
		                    <i class="line"></i>
		                </div>
		                <div class="summ-txt">
		                <p class="sum-inner" style="line-height: 0;"></p>${search.hotel_introduce}<p style="line-height: 0;"></p>
		                </div>
		                <div class="sum-device">
		                    <span class="hotel-device">设施：</span>
		                    <i class="hotel-wifi" title="宽带"></i>
				            <i class="hotel-pc" title="电视"></i>
				            <i class="hotel-tel" title="电话"></i>
				            <i class="hotel-coffee" title="餐厅"></i>
				            <i class="hotel-pack" title="停车场"></i>
		                </div>
		                <div class="sum-address">
		                    <span class="hotel-address">酒店位置：</span>
		                    ${search.hotel_address}
		                    <!--<i class="address-front"> ，近永定区政府</i>-->
		                    
		                </div>
		                <div class="sum-parice">
		                    <p class="parice-detail">
		                        <span class="">
		                            <i class="parice">${search.hotel_price}</i>元起/晚
		                        </span>
		                        <button class="detail" onclick="window.location.href=&#39;<%=path%>/hotelInfo.do?hotel_id=${search.hotel_id}&#39;">查看详情</button>
		                    </p>
		                    <p class="sum-tip">*此价格为年平均价格，具体价格需根据出发时间和服务内容核定</p>
		                </div>
		            </div>
		        </div>
		      </c:forEach>
		            </div>
		        </div>
    </div>
    <!--翻页开始-->
<!--翻页开始-->
<div class="cont_botm_nav clearfix">
	<div>
		<p>
			<%-- <a href="javascript:changePage(page)"><span>上一页</span></a>
			<c:forEach var="item" begin="1" end="${page}" step="1">
				<a href="javascript:changePage(${item})"><span>${item}</span></a>
			</c:forEach>
		     <a href="javascript:changePage(page)"><span>下一页</span></a> --%>
		     <%-- <ul style="display: inline-block;">
				<c:if test="${pageNo <= 1}">
					<li class="disabled"><a>上一页</a></li>
				</c:if>
				<c:if test="${pageNo >1}">
					 <li><span class="bgc"><a href="<%=path%>/search.do?pageNo=${pageNo-1}">上一页</a></span></li>
				</c:if>
				<c:forEach var="item" begin="1" end="${page}" step="1">
					 <c:choose>
						<c:when test="${item==pageNo}">
					    	<li class="active"><a>${item}</a></li>
					    </c:when>
					    <c:otherwise>
					    	<li><span class="bgc"><a href="<%=path%>/search.do?pageNo=${item}">${item}</a></span></li>
					    </c:otherwise>
					 </c:choose>
					    	
				</c:forEach>
				<c:if test="${pageNo < page}">
					<li><span class="bgc"><a href="<%=path%>/search.do?pageNo=${pageNo+1}">下一页</a></span></li>
				</c:if>
				<c:if test="${pageNo >= page}">
					 <li class="disabled"><a>下一页</a></li>
				</c:if>
			</ul> --%>
		</p>
	    <!-- <p>
	    	<span>到</span><input type="text" class="stage_page_in"><span>页</span>
	    		<input type="submit" onclick="turnPage()" class="stage_page_su" value="确定">
	    </p> -->
	</div>
</div>
<!--翻页结束-->
<script type="text/javascript">
    function changePage(page){
        var search = location.search;
        if (search.indexOf("page=") != -1) {
            location.href=location.pathname + search.replace(/page=\d+/g,'page=' + page);
        } else {
            if (search.indexOf("?") != -1) {
                location.href = location.pathname + search + "&page=" + page;
            } else {
                location.href = location.pathname + search + "?page=" + page;
            }
        }
    }
    function turnPage() {
        var page = $(".stage_page_in").val();
        if (undefined != page && 0 < page.length && /^\d+$/.test(page.trim())) {
            page = page.replace(/\D/g,'');
            changePage(page)
        } else
            alert("请输入正确的页码");
    }
</script>	<!--翻页结束-->
    <div class="hide popUp2"></div>
</div>
</div>
<!--侧边栏-->
<!--侧边栏-->
<aside class="asides" style="display: none;">
    <ul>
        <li class="app">
            <a href="http://www.goutrip.com/appLink/appLinkSkipping.html" target="_blank"></a>
            <!--二维码-->
            <div class="appEr"><img src="./hotelList_files/apper.png" alt=""></div>
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
            <img src="./hotelList_files/bannner_34.png">
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