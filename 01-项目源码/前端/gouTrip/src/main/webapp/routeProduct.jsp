<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath=request.getContextPath(); %>
<!DOCTYPE html>
<!-- saved from url=(0048)http://www.goutrip.com/themeTrip/themeRoute.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit">
    <title>主题产品列表</title>
    <link rel="stylesheet" href="routeProduct/public.css">
    <link rel="stylesheet" href="routeProduct/common.css">
    <link rel="stylesheet" href="routeProduct/themeRoute.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="routeProduct/hm.js.下载"></script><script src="routeProduct/jquery-1.11.3.js.下载"></script>
    <script src="routeProduct/layer.js.下载"></script><link rel="stylesheet" href="routeProduct/layer.css" id="layui_layer_skinlayercss">
    <script type="text/javascript" src="routeProduct/ojbUrl.js.下载"></script>
    <script type="text/javascript" src="routeProduct/cookie.js.下载"></script>
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
<script src="routeProduct/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
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
                <span>首页</span> &gt;
                <span>精品路线</span>
                <input type="hidden" id="sortType" value="0">
            </p>
            <div id="themeSelected">
                <div>
                    <img src="routeProduct/Act_list_03.png">
                    <strong>主题选择</strong>
                    <span class="blue" type="typeId" dataid="0">不限</span>
	                	<span type="typeId" dataid="257">特色旅行</span>
	                	<span type="typeId" dataid="259">滑雪</span>
	                	<span type="typeId" dataid="10">越野自驾</span>
	                	<span type="typeId" dataid="258">潜水</span>
	                	<span type="typeId" dataid="1">摄影</span>
	                	<span type="typeId" dataid="13">蜜月假期</span>
	                	<span type="typeId" dataid="223">亲子系列</span>
                </div>
                <div>
                    <img src="routeProduct/Act_list_06.png">
                    <strong>活动类型</strong>
                    <span class="blue" type="queryType" dataid="0">不限</span>
                    <span type="queryType" dataid="5">推荐</span>
                    <span type="queryType" dataid="4">特价</span>
                    <span type="queryType" dataid="3">热卖</span>
                    <span type="queryType" dataid="2">新品</span>
                    <span type="queryType" dataid="1">团购</span>
                    <span type="queryType" dataid="6">返现</span>
                </div>
            </div>
        </div>

        <!--主题顶部结束-->
        <!--主题左部开始-->
        <div class="Ma_left">
            <!--下拉选项-->
            <div>
            	<div class="sec1">旅行方式&nbsp;<i class="sec-arrow-1" id="sec-arr"></i>
                    <div>
                        <a href="javascript:;" type="groupType" dataid="1">独立团</a>
                        <a href="javascript:;" type="groupType" dataid="2">自由行</a>
                        <a href="javascript:;" type="groupType" dataid="3">半自由</a>
                        <a href="javascript:;" type="groupType" dataid="4">私家团</a>
                        <!--<a href="javascript:;" type="groupType" dataid="5">自驾游</a>-->
                    </div>
                </div>
                 <!--<div class="sec1">旅行方式&nbsp<img src="/images_new/index_new/themeList/tip3_04.png"><img class="sec1_img" src="/images_new/index_new/themeList/tip.png">
                    <div>
                        <a href="javascript:;" type="groupType" dataid="1">跟团游</a>
                        <a href="javascript:;" type="groupType" dataid="2">自由行</a>
                        <a href="javascript:;" type="groupType" dataid="3">半自由</a>
                        <a href="javascript:;" type="groupType" dataid="4">私家团</a>
                        <a href="javascript:;" type="groupType" dataid="5">自驾游</a>
                    </div>
                </div>-->
                <div>
                   <!--<span>天数</span>
                        <p><img src="/images_new/index_new/themeList/Pro_List_02.png" onclick="changeSort(5);"><img src="/images_new/index_new/themeList/Pro_List_04.png" onclick="changeSort(6);"></p>
                    <span>价格</span>
                        <p><img src="/images_new/index_new/themeList/Pro_List_02.png" onclick="changeSort(3);"><img src="/images_new/index_new/themeList/Pro_List_04.png" onclick="changeSort(4);"></p>-->
                        <span class="time1">天数</span>
                    	<p><i class="img_top1" onclick="changeSort(5)"></i><i class="img_botm1" onclick="changeSort(6)"></i></p>
                    	<span class="time2">价格</span>
                    	<p><i class="img_top2" onclick="changeSort(3)"></i><i class="img_botm2" onclick="changeSort(4)"></i></p>
                   </div> 	
            </div>
            <!--主题产品列表-->
            <div class="Ma_right">            
            	<iframe name="content" id="content" style="width: 960px; height: 1200px; border:0px;" scrolling="no" src="<%=basePath%>/route/getAllProduct.do?pageno=1"></iframe>
        	</div>
            <!--翻页开始-->
<!--翻页开始-->
<div class="cont_botm_nav clearfix">
	<div>
		<p>
		            <a href="javascript:;"><span class="bgc">1</span></a>
		            <a href="javascript:changePage(2)"><span>2</span></a>
		            <a href="javascript:changePage(3)"><span>3</span></a>
		            <a href="javascript:changePage(4)"><span>4</span></a>
		            <a href="javascript:changePage(5)"><span>5</span></a>
		            <a href="javascript:changePage(6)"><span>6</span></a>
		            <a href="javascript:changePage(7)"><span>7</span></a>
		            <a href="javascript:changePage(8)"><span>8</span></a>
		            <a href="javascript:changePage(9)"><span>9</span></a>
		        <a href="javascript:changePage(2)"><span>下一页</span></a>
	    </p>
	    <p>
	    	<span>到</span><input type="text" class="stage_page_in"><span>页</span>
	    		<input type="submit" onclick="turnPage()" class="stage_page_su" value="确定">
	    </p>
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
</script>			<!--翻页结束-->
    	</div>
        <!--主题右部开始-->
        <div class="Ma_right">
            <div>
            	<a href="http://www.goutrip.com/custom/mine.html"><img src="routeProduct/Act_list_09.jpg"></a>
            </div>
            <div class="hsty">
                <p>历史记录</p>
                <div id="newOnline"><div><a href="http://www.goutrip.com/route/2354.html" target="_blank"><img src="routeProduct/68d135543eda81402ecf52d2d871f.jpg" alt="【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游【价格 预订 行程 推荐】_够旅游"></a><div><p><a href="http://www.goutrip.com/route/2354.html" target="_blank">【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游【价格 预订 行程 推荐】_够旅游</a></p><p><a href="http://www.goutrip.com/route/2354.html" target="_blank">驰骋在北欧大陆欣赏沿路的风光，驻足在欧洲世界的最北端，亲眼见证午夜太阳的奇观</a></p><p><strong>10200元</strong>&nbsp;起/人</p></div></div><div><a href="http://www.goutrip.com/route/2179.html" target="_blank"><img src="routeProduct/34581d1d56fecc117ea57a227ff9a8.jpg" alt="【潜水考证】北京普吉岛5晚7天奇幻潜水OW课程之旅【价格 预订 行程 推荐】_够旅游"></a><div><p><a href="http://www.goutrip.com/route/2179.html" target="_blank">【潜水考证】北京普吉岛5晚7天奇幻潜水OW课程之旅【价格 预订 行程 推荐】_够旅游</a></p><p><a href="http://www.goutrip.com/route/2179.html" target="_blank">超级潜水家的日常 —— 水肺深体验+PADI执照，教你如何搭讪这片海。</a></p><p><strong>6999元</strong>&nbsp;起/人</p></div></div><div><a href="http://www.goutrip.com/route/2180.html" target="_blank"><img src="routeProduct/7aa4d93a1617aebf14ffcdd4165c88.png" alt="【潜水考证】北京普吉岛AOW课程5晚7天之旅【价格 预订 行程 推荐】_够旅游"></a><div><p><a href="http://www.goutrip.com/route/2180.html" target="_blank">【潜水考证】北京普吉岛AOW课程5晚7天之旅【价格 预订 行程 推荐】_够旅游</a></p><p><a href="http://www.goutrip.com/route/2180.html" target="_blank">变身超级潜水家 —— 开启专业AOW课程，获取一张全球通用的水肺潜水员资格证书。</a></p><p><strong>6999元</strong>&nbsp;起/人</p></div></div></div>
                <script type="text/javascript">  
						//设置浏览记录[配置参数]  
						oCookieRecord.set({  
						        sTitleFilter:"- 够旅游 - 每天都有新看点WWW.GOUTRIP.COM", // title内容后缀筛选  
						        sRecordListId:"newOnline", //浏览记录id  
						        sRecordListTagName:"h2", //浏览记录标签名  
						        nRecordListLength:3, //浏览记录限制条数  
						        nExpires:1 //cookie保留天数  
						});  
				</script>
            </div>
        </div>
        <!--主题右部结束-->
    </div>
</div>
<!--主题部分结束-->

	<!--侧边栏-->
<!--侧边栏-->
<aside class="asides" style="display: none;">
    <ul>
        <li class="app">
            <a href="http://www.goutrip.com/appLink/appLinkSkipping.html" target="_blank"></a>
            <!--二维码-->
            <div class="appEr"><img src="routeProduct/apper.png" alt=""></div>
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
            <img src="routeProduct/bannner_34.png">
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
	$("#themeSelected span,.sec1 a").on('click', function () {
		var myurl=new objURL();//Javascript操作URL 函数（新增，修改，删除 URL参数）
		var newUrl = myurl.url();
		var param = $(this).attr("type");//参数
		if($(this).text()=='不限'){
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
        
    });
</script>
</body></html>