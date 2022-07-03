<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	
	<title>注册界面</title>
	<link rel="stylesheet" href="<%=path %>/register/reset.css" />
	<link rel="stylesheet" href="<%=path %>/register/login.css" />
	<link rel="stylesheet" href="<%=path %>/register/register.css" />
	<script type="text/javascript">
    function refresh(obj) {
        obj.src = "image.do?"+Math.random();
    }
    </script>
</head>
<body>
	<div class="page">
		<div class="loginwarrp">
			<div class="logo">用户注册</div>
        		<div class="login_form">
					<form action="<%=path%>/register.do" name="form" method="post">
						<li class="login-item">
							<span>用户名：</span>
							<input id="username" type="text" name="user_phone" class="login_input">
						</li>
						<li class="login-item">
							<span>密　码：</span>
							<input id="password" type="password" name="user_password" class="login_input">
						</li>
						<!-- <li class="login-item">
							<span>手机号：</span>
							<input id="phone" type="text" name="user_phone" class="login_input">
							<a href="http://api.sms.cn/sms/?ac=send&uid=qwerty12&pwd=0bed1f0d58a6881974fd10a93e23efbd&template=100006&mobile=18871277208&content={"code":"225677"}">获取验证码</a>
						</li> -->
						<li class="login-item verify">
							<span>验证码：</span>
							<input id="code" type="text" name="CheckCode" class="login_input verify_input">
						</li>
						<img id="img" title="点击更换" onclick="javascript:refresh(this);" src="image.do" border="0" class="verifyimg" />
						<div class="clearfix"></div>
						<li class="login-sub">
							<input type="submit" value="注册" onclick="checkCode()"/>
						</li>
						<a href="<%=path%>/loginRegister.jsp">已有账户?点击登录</a>
		           	</form>
				</div>
			</div>
	</div>
	<script type="text/javascript" src="register/jquery-3.1.1.js"></script>
	<script type="text/javascript">
		var code=$("#code").val();
		function checkCode(){
			var code = $("#code").val();
			//参数1：URL地址
			//参数2：请求成功和请求失败的状态
			$.get("checkCode.do?code="+code,function(data,status){
					//如果data返回success就表示成功
					if ("success" == data){
							var user_phone = $("#username").val();
							var user_password = $("#password").val();
					} else {
						document.getElementById("img").src = "image.do?"+Math.random();
						alert("验证码错误")
					}
				});
			}

	</script>
</body>
</html>