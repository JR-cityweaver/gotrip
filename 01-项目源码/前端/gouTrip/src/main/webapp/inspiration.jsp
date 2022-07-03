<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%String basePath=request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0036)http://www.goutrip.com/actTheme.html -->
<html lang="en" id="html" style="font-size: 439.128%;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>灵感触发</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <link rel="stylesheet" href="inspiration/pubLic.css">
    <link rel="stylesheet" href="inspiration/common.css">
    <link rel="stylesheet" href="inspiration/index.css">
    
    <link rel="stylesheet" href="inspiration/index(1).css">
    <link rel="stylesheet" href="inspiration/reset.css">
    
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="inspiration/hm.js.下载"></script><script src="inspiration/jquery-1.11.3.js.下载"></script>
    <script src="inspiration/layer.js.下载"></script><link rel="stylesheet" href="inspiration/layer.css" id="layui_layer_skinlayercss">
    <script src="inspiration/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
</head>
<body>
    <div class="title" style="height: 613px;">
        <img class="img" src="inspiration/index_top.jpg" alt="">
    </div>
    <!--顶部导航开始-->
    <div class="index-nav clearfix">
        <div class="header">
            <div class="clearfix w1200">
                <ol class="head-nav fl">
                    <li class="logo"><a href="<%=basePath %>/home.jsp"><img src="inspiration/logo.png"></a></li>
                    <li class="nav-hov"><a href="<%=basePath %>/home.jsp">首页</a></li>
                    <li class="nav-sub nav-hov"><a href="<%=basePath %>/route.jsp" "="">主题旅行<i class="triangle-top"></i></a>
                        <!--下拉框开始-->
                       <!--  <div class="drop-down">
                            <p class="triangle-up"></p>
                            <div class="w1200 clearfix" id="typelist"><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="inspiration/dc815273c7147c1d0d53d2c9b9099e.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&#39;">亲子系列</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1908&#39;">比利时</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1885&#39;">阿联酋</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1710&#39;">南非</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1484&#39;">瑞士</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1483&#39;">意大利</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1482&#39;">德国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=438&#39;">埃及</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=118&#39;">泰国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=1&#39;">国内目的地</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=474&#39;">美国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=282&#39;">日本</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=146&#39;">法国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=223&amp;terminiId=122&#39;">柬埔寨</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="inspiration/ac59d234aa38587cc7374e42a14010.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&#39;">蜜月假期</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=1887&#39;">以色列</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=1710&#39;">南非</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=449&#39;">澳大利亚</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=1820&#39;">巴厘岛</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=475&#39;">墨西哥</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=303&#39;">斯里兰卡</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=13&amp;terminiId=1825&#39;">马尔代夫</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="inspiration/c12992f19f5b193e0e80454d88998f.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&#39;">摄影</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=1904&#39;">捷克</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=1710&#39;">南非</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=449&#39;">澳大利亚</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=301&#39;">尼泊尔</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=1&#39;">国内目的地</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=450&#39;">新西兰</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=303&#39;">斯里兰卡</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=1&amp;terminiId=146&#39;">法国</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="inspiration/dd29b1f20fafd78bb2760c802da279.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&#39;">潜水</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&amp;terminiId=1893&#39;">马来西亚</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&amp;terminiId=1890&#39;">菲律宾</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&amp;terminiId=118&#39;">泰国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&amp;terminiId=1819&#39;">普吉岛</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=258&amp;terminiId=1820&#39;">巴厘岛</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="inspiration/5d184b416dfe0a83ad848416ed9a9e.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&#39;">越野自驾</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&amp;terminiId=1484&#39;">瑞士</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&amp;terminiId=1482&#39;">德国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&amp;terminiId=449&#39;">澳大利亚</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&amp;terminiId=118&#39;">泰国</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=10&amp;terminiId=1&#39;">国内目的地</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="inspiration/512bf36e1728ae78748e4ee3735eda.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&#39;">滑雪</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&amp;terminiId=1906&#39;">奥地利</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&amp;terminiId=1484&#39;">瑞士</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&amp;terminiId=473&#39;">加拿大</li><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=259&amp;terminiId=146&#39;">法国</li></ul></div><div class="drop-module clearfix fl"><p class="drop-module-title clearfix"><img class="type-img" src="inspiration/42de82a57e4643bc751af900f0c2f0.png"><span class="module-title-name fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=257&#39;">特色旅行</span><span class="module-title-more fr" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=257&#39;">更多</span></p><ul class="drop-module-inner clearfix"><li class="module-inner-nation fl" onclick="window.location.href=&#39;/themeTrip/themeList.html?typeId=257&amp;terminiId=1820&#39;">巴厘岛</li></ul></div></div>
                        </div> -->
                        <!--下拉框结束-->
                    </li>
                    <li class="nav-hov"><a href="<%=basePath %>/hotel.do">主题酒店</a></li>
                    <li class="nav-hov"><a href="<%=basePath %>/personal.jsp">私人定制</a></li>
                    <li class="nav-hov"><a clas="index-a" href="<%=basePath %>/inspiration.jsp" style="color: rgb(242, 175, 51); bottom: 0px;">灵感触发</a></li>
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
	
    <div class="two_img">
        <img class="img" src="inspiration/title_b.png" alt="">
    </div>
    <div class="t_two" style="height: 312.63px;">
        <img class="img" src="inspiration/t_two.jpg" alt="">
    </div>
    <div class="sg_img clearfix">
        <img class="img3_top" src="inspiration/sg_img.png" alt="">
        <img class="img3_one1 fl" src="inspiration/3img_one1.jpg" alt="" >
        <img class="img3_onetext fl" src="inspiration/3img_onetext.jpg" alt="">
        <img class="img3_one2 fl" src="inspiration/3img_one2.jpg" alt="" >
        <img class="img3_one3 fl" src="inspiration/3img_one3.jpg" alt="" >
    </div>
    <div class="sg_img clearfix">
        <img class="img3_top" src="inspiration/jh_img.png" alt="">
        <img class="img3_one1 fl" src="inspiration/3img_two1.jpg" alt="" >
        <img class="img3_onetext fl" src="inspiration/3img_twotext.jpg" alt="">
        <img class="img3_one2 fl" src="inspiration/3img_two2.jpg" alt="" >
        <img class="img3_one3 fl" src="inspiration/3img_two3.jpg" alt="" >
    </div>
    <div class="sg_img clearfix">
        <img class="img3_top" src="inspiration/nz_img.png" alt="">
        <img class="img3_one1 fl" src="inspiration/3img_thr1.jpg" alt="" >
        <img class="img3_onetext fl" src="inspiration/3img_thrtext.jpg" alt="">
        <img class="img3_one2 fl" src="inspiration/3img_thr2.jpg" alt="" >
        <img class="img3_one3 fl" src="inspiration/3img_thr3.jpg" alt="" >
    </div>
    <div class="sg_img clearfix">
        <img class="img3_top" src="inspiration/sj_img.png" alt="">
        <img class="img3_one1 fl" src="inspiration/3img_for1.jpg" alt="" >
        <img class="img3_onetext fl" src="inspiration/3img_fortext.jpg" alt="">
        <img class="img3_one2 fl" src="inspiration/3img_for2.jpg" alt="" >
        <img class="img3_one3 fl" src="inspiration/3img_for3.jpg" alt="" >
    </div>
    <div class="last_text">
        <img class="img" src="inspiration/last_text.png" alt="">
    </div>
    <!--最后面的三张大图-->
    <div class="foot_iomg1" style="height: 521.05px;">
        <img class="img" src="inspiration/foot_img1.jpg" alt="">
        <img class="foot_iomg1_mb" src="inspiration/foot_iomg1_mb.png" alt="">
    </div>
    <div class="foot_iomg1 foot_iomg2">
        <img class="img" src="inspiration/foot_img2.jpg" alt="">
        <img class="foot_iomg1_mb" src="inspiration/foot_iomg2_mb.png" alt="">
    </div>
    <div class="foot_iomg1">
        <img class="img" src="inspiration/foot_img3.jpg" alt="">
        <img class="foot_iomg3_mb" src="inspiration/foot_iomg3_mb.png" alt="">
    </div>
    <!--尾部的文字-->
    <div class="foot_text">
        <img class="img" src="inspiration/foot_text.png" alt="">
    </div>
        <!--最后面新加的目的地内容-->
    <div class="foot_last">
        <div class="foot_last_con">
            <div class="foot_last_top clearfix">
                <div class="foot_last_name fl">
                    <input class="fl" type="text" name="" id="name" placeholder="姓名">
                </div>
                <div class="foot_last_region fl">
                    <input class="fl" type="text" name="" id="termini" placeholder="海外目的地">
                </div>
                <div class="foot_last_day fl">
                    <input class="fl" type="text" name="" id="days" placeholder="天数">
                </div>
            </div>
            <div class="foot_last_in clearfix">
                <div class="foot_last_phone fl">
                    <input class="fl" type="text" name="" id="phone" placeholder="手机">
                </div>
            </div>
            <div class="foot_last_bottom clearfix">
                <div class="foot_last_bei fl">
                    <textarea class="fl " name="" id="remark" placeholder="备注内容"></textarea>
                </div>
            </div>
            <div class="foot_last_but" id="submit1">提交</div>
        </div>
    </div>
    
    <!--侧边栏-->
	<aside class="asides" style="display: none;">
	    <ul>
	        <li class="app">
	            <a href="http://www.goutrip.com/appLink/appLinkSkipping.html" target="_blank"></a>
	            <!--二维码-->
	            <div class="appEr"><img src="inspiration/apper.png" alt=""></div>
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
            <img src="inspiration/bannner_34.png">
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
	function byclass(as) {//全局获取类名
	    var tags=document.getElementsByTagName('*');
	    var arr=[];
	    for (var i = 0; i < tags.length; i++) {
	        if (tags[i].className==as) {
	            arr.push(tags[i]);
	        };
	    };
	    return arr;
	}; 
	console.log(document.documentElement.clientHeight)
	function windowResize () {
	    var height=document.documentElement.clientHeight;
    	var width=document.documentElement.clientWidth;
    	var html_fosi=document.getElementById('html');
	    var title=byclass("title")[0].style.height=height+'px';
	    var foot_iomg1=byclass("foot_iomg1")[0].style.height=height*0.85+'px';
	    var t_two=byclass("t_two")[0].style.height=height*0.51+'px';
    	html_fosi.style.fontSize=(width/1920)*625+'%';
	}
	windowResize()
	window.onresize=function () {
	    windowResize()
	}
	//2017-3-17 提交需求
	$("#submit1").click(function(){
		<c:if test="${userSession.user_phone == null}">
		layer.alert('请登录后再进行此操作')
		return false;
    	</c:if>
		
		var name = $("#name").val();
	    var phone = $("#phone").val();
	    var termini = $("#termini").val();
		var days = $("#days").val();
		var remark = $("#remark").val();
		var flag = 0;
		if(name==""){
			flag = 1;
			layer.tips('请填写真实姓名', $("#name"),{tips: 1});
		}
		if(phone==""){
			flag = 1;
			layer.tips('手机号不能为空', $("#phone"),{tips: 1});
		}
		var tel = /^1[3|4|5|8|7][0-9]\d{8}$/;
	    if(phone!=""){
    		if(!tel.test(phone)){
				flag = 1;
				layer.tips('手机号不合法', $("#phone"),{tips: 1});
			}
	    }
	    if(flag>0){
			return false;
		}
		$.post("<%=basePath%>/ins/insert.do",
	            {ins_whither: $("#termini").val(), ins_days: $("#days").val(),
				 ins_name: name,ins_phone: phone,ins_remarks:remark}          	            
	    );
		//信息填写成功
		 layer.alert("恭喜您提交成功，我们将尽快与您联系。");
	});
	
$(function(){
    // 下拉框 效果
     $(function(){
        $(".nav-sub").hover(function(){
            $(".drop-down").show();
        },function(){
            $(".drop-down").hide();
        });
     });
    //够主题 效果
    $(".Items .pop").hover(function(){
        $(this).find(".themes-name").animate({"top": "43%"},200,function(){
            $(this).addClass("themes-name-hover");
        });
        $(this).find(".themes-des,.h3-line").fadeIn(900);
    },function(){
        $(this).find(".themes-name").animate({"top": "50%"},1000,function(){
            $(this).removeClass("themes-name-hover");
        });
        $(this).find(".themes-des,.h3-line").fadeOut(100);
    });
    //定制-弹层移动

    function show(i){
        $(".anime"+i).mouseenter(function(){
            //触发两个方法控制a 的显示隐藏   是为了兼容ie9
        	bb();
        	$(this).find("a").fadeIn(700);
            $(this).find(".sub-list").fadeOut(2000);
        });
        $(".anime"+i).mouseleave(function(){
            cc();
           
        	$(this).find("a").fadeOut(700);
            $(this).find(".sub-list").fadeIn(500);
        });
        function bb(){
            $(".anime"+i).find("a").animate({left:0,opacity:1},700);
        }
        function cc(){
            $(".anime"+i).find("a").animate({left:'376px',opacity:0},500);
        }
    }
    show("1");
    show("2");
    show("3");
	//侧边栏
	$(".asides li").mouseover(function(){
	    $(this).find("div").show();
	}).mouseout(function(){
	    $(this).find("div").hide();
	});
	$(".close").click(function(){
	    if($(".asides li").is(":hidden")){
	        $(".asides li").slideDown();
	    }else{
	        $(".asides li:not(':last-child')").slideUp();
	    }
	});
     
	 //页面滚动 侧边栏显示 与 隐藏
     $(".asides").hide();
     $(window).scroll(function(){
         var $scrollH=$(window).scrollTop();
         if(850<$scrollH){
             $(".asides").show();
             if($scrollH>4285){
                 //$(".asides").hide();
             }
         }else{
             $(".asides").hide();
         }

     });
     //回到顶部
     $(".toTop").click(function(){
         $("body,html").animate({scrollTop:0},500);
         return false;
     });
     //导航条波动
     $(".nav-hov").hover(function(){
         $(this).find("a").animate({"bottom":"5px"},300);
     },function(){
         $(this).find("a").animate({"bottom":"0"},300);
     });

	  //图片懒加载
      $("img").lazyload({ effect: "fadeIn"});
      
      //够主题下面的类型
      $.get('/types.json', function (data) {
  	 	var typelist = $('#typelist');
          var html = '';
          for (var i = 0; i < data.length; i++) {
        	  //if(i==3) break;
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
      
});
</script>
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
</body></html>