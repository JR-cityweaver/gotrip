<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	
	<title>管理员登录</title>
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/login.css" />
	<script type="text/javascript">
    function refresh(obj) {
        obj.src = "image.do?"+Math.random();
    }
    </script>
</head>
<body>
	<div class="page">
		<div class="loginwarrp">
			<div class="logo">管理员登陆</div>
        		<div class="login_form">
					<form name="form" method="post">
						<li class="login-item">
							<span>用户名：</span>
							<input id="username" type="text" name="username" class="login_input">
						</li>
						<li class="login-item">
							<span>密　码：</span>
							<input id="password" type="password" name="password" class="login_input">
						</li>
						<li class="login-item verify">
							<span>验证码：</span>
							<input id="code" type="text" name="CheckCode" class="login_input verify_input">
						</li>
						<img title="点击更换" onclick="javascript:refresh(this);" src="image.do" border="0" class="verifyimg" />
						<div class="clearfix"></div>
						<li class="login-sub">
							<input type="button" value="登录" onclick="checkCode()"/>
						</li>
					                      
		           	</form>
				</div>
			</div>
	</div>
	<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
	<script type="text/javascript">
		var code=$("#code").val();
		function checkCode(){
			var code = $("#code").val();
			//参数1：URL地址
			//参数2：请求成功和请求失败的状态
			$.get("checkCode.do?code="+code,function(data,status){
					//如果data返回success就表示成功
					if ("success" == data){
							var username = $("#username").val();
							var password = $("#password").val();
							$.post("login.do",//URL
								{ 
									username:username,
							 		password:password
								},
								function(data1,status){
									//如果data返回success就表示成功
									if ("success" == data1){
										document.form.action="index.jsp";
										document.form.submit();
									} else {
										alert("密码或用户名错误")
									}
								}
								);
					} else {
						alert("验证码错误")
					}
				});
			}
	</script>
</body>
</html>