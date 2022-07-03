<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String basePath=request.getContextPath(); %>
<%String user_phone=(String)session.getAttribute("user_phone"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0046)http://www.goutrip.com/memberNew/my_index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <title>个人中心首页</title>
    <link rel="stylesheet" href="./myself_files/public.css">
    <link rel="stylesheet" href="./myself_files/common.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <link rel="stylesheet" href="./myself_files/myIndex2.css">
    <script src="./myself_files/hm.js.下载"></script><script src="./myself_files/jquery-1.11.3.js.下载"></script>
    <script src="./myself_files/layer.js.下载"></script><link rel="stylesheet" href="./myself_files/layer.css" id="layui_layer_skinlayercss">
    <script src="./myself_files/myIndex.js.下载"></script>
    <script src="./myself_files/three_Calendar.js.下载"></script>
    <script type="text/javascript" src="./myself_files/DateFormat.js.下载"></script>
    <script type="text/javascript" src="./myself_files/jquery-1.8.0.min.js.下载"></script>
    <link rel="stylesheet" href="./myself_files/style.css" type="text/css"><!--头像上传-->
	<script type="text/javascript" src="./myself_files/cropbox.js.下载"></script><!--头像上传-->
</head>
<body onload="checkSession()">
<script type="text/javascript">
  function checkSession(){
	 	console.log(1);
		if("${user_collect}"==null){
			console.log(2);
				window.location.href="<%=basePath%>/loginRegister.jsp";
			}	
	  }
</script>
<!--头部开始-->
<!--顶部导航开始-->
<div class="header">
    <div class="clearfix w1200">
        <ol class="head-nav fl">
            <li class="logo"><a href="<%=basePath%>/home.jsp"><img src="./myself_files/logo.png" style="width:62px;height:50px;"></a></li>
            <li class="nav-hov"><a href="<%=basePath%>/home.jsp">首页</a></li>
            <li class="nav-sub nav-hov"><a class="theme-a" href="<%=basePath%>/route.jsp"  style="bottom: 0px;">主题旅行</a>
                
            </li>
            <li class="nav-hov"><a class="hotel-a" href="<%=basePath%>/hotel.do" style="bottom: 0px;">主题酒店</a></li>
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
<script src="./myself_files/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
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
<div class="clearfix">
    <div class="w1200">
        <div class="clearfix main">
            <!--左侧导航栏开始-->
            <div class="side_nav">
                <ul class="center_bg personalCenter">
                    <li url="/memberNew/myIndex.json" class="a_cl">
                        <div class="used_img" id="updateHeaderImg">
                        	<img class="toggle1 userInfo_headImg" src="<%=basePath %>/myself_files/1c1073e4f135e0818ceb616b5b2d71.jpg" alt="头像">   
	                    	<img class="toggle2" src="./myself_files/cancon.png" alt="头像" style="display: none;">
	                        
	                    </div>
                        <div>
                            <p>
                                <span class="coupon">优惠券：</span>
                                <i class="coupon_num">0 张</i>
                            </p>
                            <p>
                                <span class="over">账户余额：</span>		
                                <i class="over_num">0 元</i>
                            </p>
                            <p>
                               <!--  <span class="tel">已绑定手机号：</span>
                                <i class="tel_num mobileNumber_update">186****3601</i> -->
                                	<!-- <i class="tel_update fr">修改</i> -->
                            </p>
                        </div>
                    </li>
                </ul>
                <!--订单中心-->
                <div>
                    <div class="qu_sidebar">
                        <a class="off" href="javascript:;">订单中心</a>
                    </div>
                    <ul class="sidebar_ul">
                        <li  id="myOrder"><span><a href="<%=basePath%>/order/getAllOrder.do?pageno=1" target="content" onclick="cookies()">主题订单</a></span></li>
                        <li><span><a href="<%=basePath%>/hotelOrderIframe.jsp" target="content">酒店订单</a></span></li>
                    </ul>
                </div>
                <!--我的优惠券-->
                <div>
                    <div class="qu_sidebar">
                        <a href="javascript:;" class="off">我的资产</a>
                    </div>
                    <ul class="sidebar_ul">
                        <li url="/member/couponsList.json?status=1"><span><a href="<%=basePath %>/personal_center/coupon.jsp" target="content">优惠券</a></span></li>
                        <li id="my-mon"><span><a href="<%=basePath %>/personal_center/wallet.jsp" target="content">我的账户</a></span></li>
                    </ul>
                </div>
                <!--常用信息-->
                <div>
                    <div class="qu_sidebar">
                        <a href="javascript:;" class="off">个人中心</a>
                    </div>
                    <ul class="sidebar_ul">
                        <li id="updatePerson"><span><a href="<%=basePath %>/user/select.do" target="content">个人资料</a></span></li>
                        <li url="/bookMarkNew/my_list.json" id="onBookMark"><span><a href="<%=basePath %>/collect/all.do" target="content">我的收藏</a></span></li>
                        <li url="/member/friendList.json"><span><a href="<%=basePath %>/getTra.do?pageNo=1" target="content">常用旅客</a></span></li>
                        <li url="/member/friendAddressList.json"><span><a href="<%=basePath %>/getAddr.do?pageNo=1" target="content">常用地址</a></span></li>
                        <li id="safe_set"><span><a href="<%=basePath %>/personal_center/saveset.jsp" target="content">安全设置</a></span></li>
                        <li id="updatePwd"><span><a href="<%=basePath %>/personal_center/resetPassword.jsp" target="content">修改密码</a></span></li>
                    </ul>
                </div>
            </div>
            <div style="display: inline-block; width: 30px; height: auto;"></div>
            <iframe name="content" style="width: 860px;height: 800px;border: 0px;" scrolling="no" src="<%=basePath %>/order/getAllOrder.do?pageno=1"></iframe>
            <!--左侧导航栏结束-->
            <!--右侧主体开始-->
            <!--右侧主体结束-->
        </div>
    </div>
    <div class="upPop" style="height: 1253px;"></div>
</div>

<!--页脚开始-->
<!--尾部-->
<div class="botm" style="background-image: url(&quot;image/bgmidd_04.png&quot;);">
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
            <img src="./myself_files/bannner_34.png">
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

<script type="text/javascript" src="./myself_files/city.js.下载"></script>
<script type="text/javascript">
	//初始化数据
	$(document).ready(function() { 
		// 任何需要执行的js特效 
		var source = '';
		if(source=='bookMark'){
			$('#onBookMark').trigger("click");
		}else if(source=='myOrder'){
			$('#myOrder').trigger("click");
		}else if(source=='safe'){
			$('#safe_set').trigger("click");//安全设置
		}else{
			$('.personalCenter li').trigger("click");
			//$("#ordersListAll").load('/memberNew/myIndex.json');
		}
	}); 
	//初始化手机号，隐藏中间4位数
	//$("#mobileNum").html($("#mobileNum").substring(0,3)+"****"+$("#mobileNum").substring(8,11));  
	var mobileNum = $('#mobileNum').html();
	if(mobileNum){
		mobileNum = mobileNum.replace(/(\d{3})\d{4}(\d{4})/, '$1****$2');
		$('#mobileNum').html(mobileNum);
		$('.mobileNumber_update').html(mobileNum);
	}
	//初始化邮箱，隐藏中间4位数
	var reg = /(.{2}).+(.{2}@.+)/g;
	var mail = $('#updateMail').html();
	if(mail){
		mail = mail.replace(reg, "$1****$2");
		$('#updateMail').html(mail);
		$('.old_mail').html(mail);
	}
    
    layer.config({
		tipsMore: true,
		tips:1
	});
	
	$('.cancelOrder').on('click', function () {
	    $.ajax({
	      type : 'PUT',
	      url : $(this).attr('href'),
	      data : {'_method': 'put'},
	      success : function () {
	        alert('更新成功');
	        location.reload(true);
	      }
	
	    });
	    return false;
    });
	
	function changePage(page,e,url){
		var list_show = $(e).parents('.list_show');
		if (url.indexOf("page=") != -1) {
            url = url.replace(/page=\d+/g,'page=' + page);
        } else {
            if (url.indexOf("?") != -1) {
	            url=url + "&page=" + page;
	        } else {
	            url=url + "?page=" + page;
	        }
        }
        list_show.load(url,function(){});
    }

	   function cookies(){
				var str=${imgPath};
				console.log(str);
		   }
</script>

</body></html>