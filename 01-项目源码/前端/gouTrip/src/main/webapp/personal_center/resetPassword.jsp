<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String basePath=request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0046)http://www.goutrip.com/memberNew/my_index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <title>个人资料iframe</title>
    <link rel="stylesheet" href="<%=basePath%>/myself_files/public.css">
    <link rel="stylesheet" href="<%=basePath%>/myself_files/common.css">
    <link rel="shortcut icon" type="image/x-icon" href="<%=basePath%>/http://www.goutrip.com/images_new/favicon.ico">
    <link rel="stylesheet" href="<%=basePath%>/myself_files/myIndex2.css">
    <script src="<%=basePath%>/myself_files/hm.js.下载"></script><script src="<%=basePath%>/myself_files/jquery-1.11.3.js.下载"></script>
    <script src="<%=basePath%>/myself_files/layer.js.下载"></script><link rel="stylesheet" href="<%=basePath%>/myself_files/layer.css" id="layui_layer_skinlayercss">
    <script src="<%=basePath%>/myself_files/myIndex.js.下载"></script>
    <script src="<%=basePath%>/myself_files/three_Calendar.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/myself_files/DateFormat.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/myself_files/jquery-1.8.0.min.js.下载"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
</head>
<body>
        		<!--修改密码 开始-->
                    <div class="changePwd">
                        <div class="title">
                            <span>修改密码</span>
                        </div>
<form action="<%=basePath%>/updatePW.do?user_id=${userSession.user_id}" method="post" id="passwdForm" name="passwdForm">
                            <input type="hidden" id="passwdValue">
                            <input type="hidden" id="userid" name="user_id" value="${userSession.user_id}">
                            <ul class="changePasswd">
                                <li class="clearfix">
                                    <p><i>*</i>原密码：</p>
                                    <input type="text" id="old_pass" name="oldPW">
                                    <input type="hidden" id="oldPWMD5" name="oldPWMD5" value="${userSession.user_password}">
                                </li>
                                <li class="clearfix">
                                    <p><i>*</i>新密码：</p>
                                    <input type="password" id="new_pass" name="user_password">
                                </li>
                                <li class="clearfix">
                                    <p><i>*</i>确认密码：</p>
                                    <input type="password" id="two_pass" name="two_passwd">
                                </li>
                                <li class="clearfix">
                                    <input class="yes saveBtns" type="submit" value="确定">
                                    <a class="removeber" href="http://www.goutrip.com/member/getPassword.html?returnUrl=/memberNew/my_index.html" target="_blank">忘记密码？</a>
                                </li>
                            </ul>
</form>
                    </div>
                    <script type="text/javascript">
				            $(document).ready(function(){
				                $("#old_pass").blur(function(){
				                	layer.closeAll();
				                	var uid = $('#userid').val();
				                    var passwd = $("#old_pass").val();
				                    var oldPWMD5 = $('#oldPWMD5').val();
				                    console.log("旧密码是="+oldPWMD5);
				                    $.post("updatePW.do",
						                   {
											uid:user_id		
							               },function(data,status){
							            	   if ("success" == data){
													document.passwdForm.action="myself.jsp";
													document.passwdForm.submit();
												} else {
													alert("密码错误")
												}
								               } );
				                    if(oldPWMD5 != passwd){
										layer.tips('与原密码不符合,请重新输入');
				                    	$('#oldPWMD5').val(false);
					                   }
				                });
				                $("#new_pass").blur(function(){
				                	layer.closeAll();
				                    var newpass=$("#new_pass").val();
				                    if(undefined != newpass && 6 <= newpass.length && 20 >= newpass.length) {
				                        $('#passwdValue').val(true);
				                    } else {
				                        layer.tips('请输入正确的新密码',$('#new_pass'));
				                        $('#passwdValue').val(false);
				                    }
				                });
				                $("#two_pass").blur(function(){
				                	layer.closeAll();
				                    var twopass=$("#two_pass").val();
				                    var newpass=$("#new_pass").val();
				                    if(undefined != twopass && 6 <= twopass.length && 20 >= twopass.length && twopass == newpass) {
				                        $('#passwdValue').val(true);
				                    } else {
				                        layer.tips('您两次输入的密码不一致',$('#two_pass'));
				                        $('#passwdValue').val(false);
				                    }
				                });
				                
				                $("#passwdForm").submit(function () {
				                	var flag = $('#passwdValue').val();
				                	if($('#passwdValue').val()=='false') return false;
				                	var passwd = $("#old_pass").val();
								    $.ajax({
								        type: 'post',
								        url: $(this).attr('action'),
								        data: $("#passwdForm").serialize(),
								        success: function (e) {
								            /* window.location.href = "/updatePwd/return.html?flag=1"; */
								          	if("success" == e){
									           alert("修改密码成功!!");
									          	}
								          	if("fail" == e){
							                       alert("原密码错误!!!");
							                       }
								        },
								        
								    });
								    return false;
				                });
				               
				            });
				        </script>
                    <!--修改密码 结束-->
</body>
</html>