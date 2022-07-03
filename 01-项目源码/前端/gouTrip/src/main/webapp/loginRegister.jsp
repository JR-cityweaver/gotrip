<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0097)http://www.goutrip.com/member/login.html?returnUrl=http://www.goutrip.com/hotel/hotelListNew.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    
    <title>登录注册</title>
    <link rel="stylesheet" href="loginRegister/public.css">
    <link rel="stylesheet" href="loginRegister/login.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="loginRegister/push.js.下载"></script><script src="loginRegister/hm.js.下载"></script><script src="loginRegister/jquery-1.11.3.js.下载"></script>
    <script src="loginRegister/layer.js.下载"></script><link rel="stylesheet" href="loginRegister/layer.css" id="layui_layer_skinlayercss">
    <script type="text/javascript" src="loginRegister/jquery.validate.js.下载"></script>
</head>
<body>
<!-- <div class="logo-1" id="logo" onclick="window.location.href=&#39;/&#39;"></div> -->
<script>
/* $(function(){
	$("#logo").hover(function(){
		$(this).removeClass("logo-1").addClass("logo-2")
	},function(){
		$(this).removeClass("logo-2").addClass("logo-1")
	})
}) */
</script>
<div class="main clearfix">
    <div class="w1200 clearfix">
    	
        <div class="inner">
        	<p class="title">会员登录</p>
            <div class="toggle">
                <p class="p_border">手机动态密码登录</p><p>普通登录</p>

            </div>
            <div class="common tab">
<form id="memberFormMobile" action="" method="post">
            		<input type="hidden" name="returnUrl" value="http://www.goutrip.com/hotel/hotelListNew.html" id="returnUrl">
		      		<input type="hidden" value="" id="code">
					<input type="hidden" value="" id="create_time">  
					<input type="hidden" name="telLogin" value="telLogin">
	                <ol>
	                    <li class="linkman" id="errorInfoTel">
	                        <input type="text" placeholder="手机号" name="userName" id="nickname">
	                        <i></i>
	                    </li>
	                    <li class="input_2 key">
	                        <input type="text" placeholder="请输入动态密码" name="mobileVerify" id="mobileVerify">&nbsp;
	                        <input type="button" value="获取动态密码" id="getCode">
	                    </li>
	                    <li class="input_3">
	                        <input type="checkbox" checked="true" name="agree" id="agreement">
	                    <span>
	                        我已阅读并接受<a href="http://www.goutrip.com/item.html" target="_blank">《够旅游用户协议》</a>
	                    </span>
	                    </li>
	                    <li>
	                        <a href="javascript:;">
	                            <input type="submit" value="登录" onclick="wait()")>
	                        </a>
	                    </li>
	                    
	                    <li class="enroll">
	                        <span>快捷注册：可使用手机快捷登录功能，通过动态密码完成快捷注册并登录。</span>
	                    </li>
	                    <li class="entry">
	                        <span>合作网站账号登录</span>
	                        <i></i>
	                    </li>
	                    <li>
	                        <a href="http://www.goutrip.com/openid/before-bind/qq.html" target="_blank"><img src="loginRegister/detail_33.png" alt=""></a>
	                        <a href="http://www.goutrip.com/openid/before-bind/weibo.html" target="_blank"><img src="loginRegister/detail_46.png" alt=""></a>
	                    </li>
	                </ol>
</form>
            </div>
            <div class="password tab hide">
<form action="<%=basePath %>/user/login.do" id="btns"  method="post">
		      	
		      	
	                <ul>
	                    <li class="linkman" id="errorInfo">
	                        <input type="text" placeholder="请输入手机号" id="username" name="user_phone">
	                        <i></i>
	                    </li>
	                    <li class="key">
	                        <input type="password" placeholder="请输入密码" id="password" name="user_password">
	                        <i></i>
	                    </li>
	                    <li>
	                        <input type="checkbox" name="autoLogin" value="1"> <span>记住密码30天</span>
	                        <!-- <i class="fr" onclick="window.open(&#39;/member/getPassword.html?returnUrl=http://www.goutrip.com/hotel/hotelListNew.html&#39;,&#39;_blank&#39;);">忘记密码？</i> -->
	                    </li>
	                    <li>
	                            <input type="button" value="登录" onclick="logindo()" style="width: 100%;height: 40px;cursor: pointer;" >
	                            <!-- <input type="button" value="登录" onclick="login()"> -->
	                    </li>
	                    <li class="enroll">
	                        <span onclick="window.open(&#39;<%=path%>/register.jsp?returnUrl=<%=path%>/list.do&#39;,&#39;_blank&#39;);">免费注册</span>
	                    </li>
	                    
	                </ul>
</form>
            </div>

        </div>
    </div>


</div>
<div class="bottom w1200">
	<p>网站备案/许可证号：京ICP备14016142号-1 | 够旅游公安 备案编号：京公网安备11010802014913号 | 主办单位名称：北京汇智纵横信息技术有限公司</p>
    <p>   办公地址：北京市海淀区中关村东路18号财智国际大厦A座17层 | 网站名称：够旅游网 | 网站首页网址：www.goutrip.com</p>
</div>

<div class="alert">
    <div class="txt clearfix">
        <p class="first">
            <span>验证码：</span>
            <input type="text" id="veryCode" name="veryCode" placeholder="请输入以下弹框中的内容">
        </p>
        <p class="second">
        	<img id="imgObj" alt="" src="loginRegister/verifyCode.html">
        	<a href="javascript:;" onclick="changeImg()">看不清？换一张 </a>
        </p>
        <div class="btn">
            <span onclick="isRightCode()">提交</span>
        </div>
    </div>
</div>
<div class="popUp"></div>


<script>
	//手机动态码与普通登录的切换
    $(function(){
        $(".toggle").children("p").click(function(){
            $(this).addClass("p_border").siblings("p").removeClass("p_border");
            var i=$(this).index();
            $(".tab").eq(i).show().siblings(".tab").hide();
        })
    })
    
    layer.config({
		tipsMore: true,
		tips:1
	});
	
    $("#memberForm").validate({
    	rules: {
	       nickname: {
	       		required: true,
	       		minlength: 4,
	       		maxlength: 30
	       },
	       passwd: {
	       		required: true,
	       		minlength: 6,
	       		maxlength: 20
	       }
	    },
        messages: {
            nickname: {
                required: '帐号不能为空',
                minlength: '帐号最小长度为4',
                maxlength: '帐号最大长度为30'
            },
            passwd: {
                required: '密码不能为空',
                minlength: '密码最小长度为6',
                maxlength: '密码最大长度为20'
            }
        },
        errorPlacement: function(error, element) {
			if(error.text()){
				layer.closeAll();
				layer.tips(error.text(),element);
				$('#infoValue').val(false);
			}
    	},
    	success: function(label) {
            $('#infoValue').val(true);
        }
    });
    
    $('#memberForm').submit(function () {
    	if($('#infoValue').val()=='false') return false;
	    $.ajax({
	        type: 'post',
	        url: $(this).attr('action'),
	        data: $("#memberForm").serialize(),
	        success: function (data, textStatus, jqXHR) {
	           
	        },
	        error: function (xhr) {
	            if (xhr.status === 401) {
	                //$('#errorInfor').show().html('用户名或密码错误');
	                layer.tips('用户名或密码错误',$('#errorInfo'));
	            }
	        }
	    });
	    return false;
	});
	//手机验证码登录
	//验证码等待时间
	var wait=60;
	function time(o) {
	    if (wait == 0) {
	    	//$('#getCode').removeClass("jiH");
	        o.removeAttribute("disabled");           
	        o.value="重新发送";
	        wait = 60;
	    } else {
	    	$('#getCode').addClass("jiH");
	        o.setAttribute("disabled", true);
	        o.value="重新发送(" + wait + ")";
	        wait--;
	        setTimeout(function() {
	            time(o)
	        },
	        1000)
	    }
	}
	//获取验证码
	$("#getCode").on('click',function(){
		var userName = $("#nickname").val();
		var reg="^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";
		var regExp = new RegExp(reg);
		if(!regExp.test(userName)){
			layer.tips('请输入正确手机号!',$("#nickname"));
			return false;
		}
		$(".popUp,.alert").show();//2016-11-10 添加图片验证码
	});
	$("#memberFormMobile").submit(function () {
			var nickname = $("#nickname").val();
			var returnUrl = $('#returnUrl').val();
			var yanCode = $("#mobileVerify").val();
			var code = '';
			//计算相差分钟数
			var myDate = new Date();
			var create_time = new Date($("#create_time").val().replace(/-/g,"/"));
			var date=myDate.getTime() - create_time.getTime();  //时间差的毫秒数
			var leave1=date%(24*3600*1000);    //计算天数后剩余的毫秒数
			var leave2=leave1%(3600*1000);        //计算小时数后剩余的毫秒数
			var minutes=Math.floor(leave2/(60*1000));
			if(minutes<=15){
				code = $("#code").val();//在15分钟有效时间内填写验证码
			}
			if(nickname && yanCode){
				if(!$('#agreement').is(':checked')){
					layer.tips('请接受够旅游用户协议',$("#agreement"));
					return false;
				}
				if(yanCode==code){
					$.ajax({
				        type: 'post',
				        //url: $(this).attr('action'),
				        url: '/member/logined.html',
				        data: $("#memberFormMobile").serialize(),
				        success: function (data, textStatus, jqXHR) {
				            window.location.href = jqXHR.getResponseHeader('Location');
				        },
				        error: function (xhr) {
				            if (xhr.status === 401) {
				                //$('#errorInfor').show().html('用户名或密码错误');
				                layer.tips('手机号或验证码错误',$('#errorInfoTel'));
				            }
				        }
				    });
				    return false;
				}else{
					layer.tips('手机验证码错误或失效',$("#mobileVerify"));
				}
			}else{
				layer.msg('信息未填写完整');
			}
			return false;
	});
    
    //百度统计
    var _hmt = _hmt || [];
	(function() {
	  var hm = document.createElement("script");
	  hm.src = "//hm.baidu.com/hm.js?a536681329b45ba5dd8b2451b309dfc8";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
	})();
	
	//数据埋点需求，事件跟踪
	/* (function(){
		var bp = document.createElement('script');
		var curProtocol = window.location.protocol.split(':')[0];
		if (curProtocol == 'https') {
		bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';        
		    }
		else {
		bp.src = 'http://push.zhanzhang.baidu.com/push.js';
		    }
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(bp, s);
	})();
	document.getElementById("denglu").addEventListener("click", function() {
	  _hmt.push(['_trackEvent', 'button', 'click', 'denglu']);
	  
	}); */
	
//2016-11-10 图片验证码的换一换	
function changeImg(){     
    var imgSrc = $("#imgObj");     
    var src = imgSrc.attr("src");  
    imgSrc.attr("src",chgUrl(src));     
}     
//时间戳     
//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳     
function chgUrl(url){     
    var timestamp = (new Date()).valueOf();     
    urlurl = url.substring(0,17);     
    if((url.indexOf("&")>=0)){     
        urlurl = url + "×tamp=" + timestamp;     
    }else{     
        urlurl = url + "?timestamp=" + timestamp;     
    }     
    return urlurl;     
}     
function isRightCode(){     
    var code = $("#veryCode").val();     
    var parm = {nickname: $("#nickname").val(),verifyWay: 'telLogin',code:code};     
    $.ajax({     
        type:"POST",     
        url:"/member/isExistedAndGetCode.html",     
        data:parm,     
        success:callback     
    });     
}     
function callback(data){
	var resultInfo = data.resultInfo;     
    if(resultInfo=="验证码正确"){
    	if(data.limitSms && data.limitSms=="limitSms"){
			layer.tips('今天发送验证码次数过多！',$("#getCode"));
			return false;
		}
		//显示验证码等待时间
		$("#getCode").attr("disabled",false); 
		time(document.getElementById("getCode"));
		//记录验证码
		$("#code").val(data.code);
		var create_time = new Date();
		$("#create_time").val(create_time);
		$(".popUp,.alert").hide();
    }else{
    	layer.tips(resultInfo,$("#veryCode"));
    }     
} 

function logindo(){
	layer.load(0, {shade: false}); 
	var name=$("#username").val();
	var password=$("#password").val();
	console.log(name+"--"+password);
	$.post("<%=basePath %>/user/check.do",{user_phone:name,user_password:password},
				function(data,status){
					if("empty"==data){
							layer.alert("用户名或密码错误");
						}
					if("exist"==data){
							$("#btns").submit();
							}
		}
			);
	
}



</script>
</body></html>