<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath=request.getContextPath(); %>
<!DOCTYPE html>
<!-- saved from url=(0081)http://www.goutrip.com/themeTrip/searchResultList.html?keyword=%E7%BE%8E%E5%9B%BD -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit">
    <title>搜索列表</title>
    <link rel="stylesheet" href="<%=basePath%>/searchIndex/public.css">
    <link rel="stylesheet" href="<%=basePath%>/searchIndex/common.css">
    <link rel="stylesheet" href="<%=basePath%>/searchIndex/searchList.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="<%=basePath%>/searchIndex/hm.js.下载"></script><script src="<%=basePath%>/searchIndex/jquery-1.11.3.js.下载"></script>
    <script src="<%=basePath%>/searchIndex/layer.js.下载"></script><link rel="stylesheet" href="<%=basePath%>/searchIndex/layer.css" id="layui_layer_skinlayercss">
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
<script src="<%=basePath%>/searchIndex/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
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
<!--主体内容-->
<div class="body">
    <div>
        <p>
        		<span>首页 </span> &nbsp;<span> &gt; </span> &nbsp;<span> 搜索列表</span>
        </p>
    </div>
    <div>
        <div>
            <a href="http://www.goutrip.com/themeTrip/searchResultList.html">全部</a>
        </div>
        <div>
            <a class="time1">天数</a>
            <p><i class="img_top1" onclick="changeSort(5)"></i><i class="img_botm1" onclick="changeSort(6)"></i></p>           
            <!--<p><img src="/images_new/index_new/list_03.png" onclick="changeSort(5);"><img src="/images_new/index_new/list_07.png" onclick="changeSort(6);"></p>-->
        </div>
        <input type="hidden" id="sortType" value="0">
    </div>
    <div class="container">
    	<!--遍历每一块内容开始-->
    		<c:forEach items="${countryList }" var="route">
    			 <div class="row">
		            <div class="left" id="left1666">
		                <a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank"><img class="bgImage" alt="【欢乐亲子】美国西海岸三城双乐园10天" src="<%=basePath %>/route/image/${route.route_img}">
		                </a>		            
			           <!--  <p><span>新品</span></p>		 -->	            			            
		            </div>
		            <div class="right">		            	
		                <p>
		                <a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">${route.route_name }</a></p>		                
		                <p><a href="<%=basePath %>/routeDetail/detail.do?route_detail=1" target="_blank">品质经典-公路驰骋，娱乐之都，游乐园区，大人和孩子都可以在这里找到属于自己的乐趣</a></p>		                
		                <p>旅行主题：
		                	<span class="typeName">			                						                					                						                						                			                			
			                			亲子系列
		                	</span>
						</p>
		                <p>出行地点：${route.route_beginning }</p>
		                <p>目的地：${country } </p>
		                <p>够旅游价格：<strong style="color:red">${route.route_price }</strong>元起/人</p>
		            </div>
		        </div>
		        <div class="line"></div>
		        </c:forEach>
    			 
    </div>
    <!--翻页开始-->
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
</div>
<div class="jian">
    <p></p>
    <img src="<%=basePath%>/searchIndex/cap_07.png">
    <span>推荐</span>
    <p></p>
</div>

<div class="midd-botm">
    <div>
	        <div>
	            <div>
	                
	                	<img class="bgImage" alt="【酷爽冲浪】马尔代夫图鲁斯杜Thulusdhoo岛冲浪3晚4天" src="<%=basePath%>/searchIndex/4fa506e7ca62405e667185caea6712.jpg">
		           
	                
			        
			        
			        
			        
	            </div>
	            <div>
	                <p> 【酷爽冲浪】马尔代夫图鲁斯杜Thulusdhoo岛冲浪3晚4天</p>
	                <p>椰林树影，水清沙幼，在人间天堂的至美景色下，与蓝色海浪一起翻滚，跳跃，捉迷藏。></p>
	            </div>
	        </div>
	        <div>
	            <div>
	               
	                	<img class="bgImage" alt="【浓情蜜月】巴厘岛海外婚礼5晚6日" src="<%=basePath%>/searchIndex/d880b066c2a9f5e6d73b34819a32ba.jpg">
		          
	                
			        
			        
			        
			        
	            </div>
	            <div>
	                <p> 【浓情蜜月】巴厘岛海外婚礼5晚6日</p>
	                <p>一句 I Do，表达心中神圣的那份爱意；一场婚礼，给最爱的Ta一份甜蜜的回忆/p>
	            </div>
	        </div>
	        <div>
	            <div>
	                
	                	<img class="bgImage" alt="【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游" src="<%=basePath%>/searchIndex/68d135543eda81402ecf52d2d871f.jpg">
		           
	                
			        
			        
			        
			        
	            </div>
	            <div>
	                <p> 【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游</p>
	                <p>驰骋在北欧大陆欣赏沿路的风光，驻足在欧洲世界的最北端，亲眼见证午夜太阳的奇观</p>
	            </div>
	        </div>
    </div>
</div>

	<!--侧边栏-->
<!--侧边栏-->
<%-- <aside class="asides" style="display: none;">
    <ul>
        <li class="app">
            <a href="http://www.goutrip.com/appLink/appLinkSkipping.html" target="_blank"></a>
            <!--二维码-->
            <div class="appEr"><img src="<%=basePath%>/searchIndex/apper.png" alt=""></div>
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
</aside> --%>

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
<div class="botm" style="background-image: url(&quot;<%=basePath%>/image/bgmidd_04.png&quot;);">
    <div class="w1200">
        <div>
            <img class="botm-logo" src="<%=basePath%>/image/logo-3.png">
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
            <img src="<%=basePath%>/searchIndex/bannner_34.png">
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

<script type="text/javascript">
	//天数升降筛选
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
	
	//天数，价格点击效果
	$(function(){
        var i=0;
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
	        });
        }
        clk("1");
        clk("2");
        
        //判断旅行主题是否为空
		$(".typeName").each(function(){
		    if(!$(this).text()){
				$(this).text('主题旅行');
			}
		});
    });
</script>
</body></html>