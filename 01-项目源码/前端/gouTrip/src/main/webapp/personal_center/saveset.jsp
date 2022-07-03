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
</head>
<body>
        		<!--个人信息 开始-->
                    <div class="safe" style="">
                    	<div class="safe_inner">
                    		<div class="title">
	                            <span>安全设置</span>
	                        </div>
	                        <div class="safe_img">
	                            <div class="inner_1">
	                                <img src="../myself_files/safe.png" alt="">
	                                <div>
	                                    <span>小够建议您启用安全设置，以保障您的账户安全</span>
	                                    <span>注册时间：2017-06-22，上次登录时间：2017-07-06 16:27:10（如非本人登录，建议您尽快修改密码）</span>
	                                </div>
	                            </div>
	                            <div class="inner_2">
	                                <p>
	                                    <img src="../myself_files/right.png" alt="">
	                                    <span>登录密码</span>
	                                    <i>为了保障您的账户安全，建议您定期修改登陆密码</i>
	                                    <i id="updateLoginPwd"><a href="<%=basePath%>/personal_center/resetPassword.jsp">修改登录密码》</a></i>
	                                </p>
	                                	<p>
		                                    <img src="../myself_files/right.png" alt="">
		                                    <span>绑定手机</span>
		                                    <i>已绑定手机号码<em id="mobileNum">186****3601</em>，你可凭此手机号直接登陆够旅游，接收账户安全验证码</i>
		                                    <i class="update_tel">修改手机》</i>
		                                </p>
	                                	<p>
		                                    <img src="../myself_files/right.png" alt="">
		                                    <span>绑定邮箱</span>
		                                    <i>已绑定邮箱<em id="updateMail">52****91@qq.com</em>，你可凭此邮箱直接登陆够旅游，接收账户安全验证码</i>
		                                    <i class="update_mail">修改邮箱》</i>
		                                </p>
	                            </div>
	                        </div>
                    	</div>
                        <!--修改手机与邮箱流程--开始-->
<!--修改手机流程--开始-->
<div class="update_tel_inner">
    <!--第一步：验证原手机号-->
    <!--<div class="old_tel" style="display: none">-->
    <div class="mailbox one_step" id="mailbox" style="display: none">
        <!--头部内容，灰色横线之前-->
        <div class="mailbox_head">
            <div class="m_headtop">
                <span>安全设置－修改手机</span>
            </div>
            <div class="m_headbuttom">
                <span class="back_safe">返回安全设置&gt;</span>
            </div>
        </div>
        <!--三个步骤-->
        <div class="moph1_con">
            <p>
                <img src="./myself_files/moph1_1.jpg" alt="">
            </p>
            <div>
                <span>验证原手机号</span>
                <span>验证新手机号</span>
                <span>修改成功</span>
            </div>
        </div>
        <!--验证手机号码-->
        <div class="moph1_val">
            <!--原手机号码-->
            <div class="moph1_val_dh">
                <span>原手机号：</span>
                <span class="m_v_d_dh mobileNumber_update" id="user_mobileNumber">186****3601</span>
                <span class="m_v_d_click">原手机号码丢失或停用</span>
                <input type="hidden" value="18625403601" id="user_mobileNumber2">
            </div>
            <!--验证码-->
            <div class="moph1_val_yz">
                <span> 验证码：</span>
                <span> <input type="text" id="mobileVerify"></span>
                <input type="button" value="获取动态密码" id="getCode">
                <input type="hidden" value="" id="code"><!--获取到的手机验证码写在这个input的value里-->
                <input type="hidden" value="" id="create_time">
            </div>
            <div class="moph1_val_tj" id="update_phone_next">
                <input type="button" value="下一步">
            </div>
        </div>
    </div>
    <!--下面这个div是body的子集-->
    <!--点击原手机丢失或无法使用时出现的提示-->
    <div class="fixed">
        <div class="fixed_3">
            <div class="fixed_3_head">
                <p>
                    原来手机号已丢失或停用？
                </p>
            </div>
            <div class="fixed_3_con">
                <p>亲爱的用户，如果您无法进行账户的相关操作，请致电客服<span>400-065-5161</span>。</p>
                <p>为了您的账户安全，我们必须验证您的身份，请先准备好以下资料，再致电客服。</p>
                <p>建议提供如下资料：</p>
                <p>1：提供最近一笔订单的出游人信息（姓名，手机号）</p>
                <p>2：提供订单交易的银行卡交易流水号，或支付宝交易流水号，或充值账号的充值银行卡交易流水号（请提供截图）</p>
                <p>3：提供原绑定手机号</p>
            </div>
            <div class="fixed_3_but">
                <input type="button" value="确定">
            </div>
        </div>
    </div>
    <!--</div>-->
    <!--第二步：验证新手机-->
    <div class="mailbox two_step" id="222" style="display: none">
        <!--头部内容，灰色横线之前-->
        <div class="mailbox_head">
            <div class="m_headtop">
                <span>安全设置－修改手机</span>
            </div>
            <div class="m_headbuttom">
                <span class="back_safe">返回安全设置&gt;</span>
            </div>
        </div>
        <!--三个步骤-->
        <div class="moph2_con">
            <p>
                <img src="./myself_files/moph2_1.jpg" alt="">
            </p>
            <div>
                <span>验证原手机号</span>
                <span>验证新手机号</span>
                <span>修改成功</span>
            </div>
        </div>
        <!--验证手机号码-->
        <div class="moph2_val">
            <!--原手机号码-->
            <div class="moph2_val_yz">
                <span>新手机号：</span>
                <span> <input type="text" id="phone_new"></span>
            </div>
            <!--验证码-->
            <div class="moph2_val_yz">
                <span> 验证码：</span>
                <span> <input type="text" id="mobileVerify_new"></span>
                <input type="button" value="获取动态密码" id="getCode_new">
                <input type="hidden" value="" id="code_new"><!--获取到的手机验证码写在这个input的value里-->
                <input type="hidden" value="" id="create_time_new">
            </div>
            <!--下一步-->
            <div class="moph2_val_tj" id="update_phone_next2">
                <input type="button" value="下一步">
            </div>
        </div>
    </div>
    <!--第三步：验证成功-->
    <div class="mailbox three_step" id="333" style="display: none">
        <!--头部内容，灰色横线之前-->
        <div class="mailbox_head">
            <div class="m_headtop">
                <span>安全设置－修改手机</span>
            </div>
            <div class="m_headbuttom">
                <span class="back_safe">返回安全设置&gt;</span>
            </div>
        </div>
        <div class="moph3_con">
           	 手机修改成功！
        </div>
    </div>
    <!--第三步：验证失败-->
        	<div class="mailbox four_step" id="444" style="display: none">
                                <!--头部内容，灰色横线之前-->
             	<div class="mailbox_head">
                  	<div class="m_headtop">
                        <span>安全设置－验证手机</span>
                 	</div>
                   	<div class="m_headbuttom">
                        <span class="back_safe">返回安全设置&gt;</span>
                   	</div>
            	</div>
            	<div class="moph3_con">对不起！手机改绑号失败！</div>
            	<div class="moph4_con">手机号已被占用或验证码错误，请重试！</div>
       		</div>
</div>
<!--***********************************************************************-->
<!--修改邮箱流程--开始-->
<div class="update_mail_inner">
    <!--第一步：验证原邮箱-->
    <!--<div class="old_tel" style="display: none">-->
    <div class="mailbox one_step" id="telbox" style="display: none">
        <!--头部内容，灰色横线之前-->
        <div class="mailbox_head">
            <div class="m_headtop">
                <span>安全设置－修改邮箱</span>
            </div>
            <div class="m_headbuttom">
                <span class="back_safe">返回安全设置&gt;</span>
            </div>
        </div>
        <!--三个步骤------1-->
        <div class="moph1_con">
            <p>
                <img src="./myself_files/moph1_1.jpg" alt="">
            </p>
            <div>
                <span>验证原邮箱</span>
                <span>验证新邮箱</span>
                <span>修改成功</span>
            </div>
        </div>
        <!--验证邮箱-->
        <div class="moph1_val">
            <!--原邮箱-->
            <div class="moph1_val_dh">
                <span>原邮箱地址：</span>
                <span class="old_mail">52****91@qq.com</span>
                <span class="old_mail_click">原邮箱地址已不再使用？</span>
                <input type="hidden" value="529275691@qq.com" id="old_mail">
            </div>
            <!--验证码-->
            <div class="moph1_val_yz">
                <span> 验证码：</span>
                <span> <input type="text" id="mailCode"></span>
                <input type="button" value="获取邮件密码" id="getMailCode">
                <input type="hidden" value="" id="mail_code"><!--获取到的邮箱验证码写在这个input的value里-->
                <input type="hidden" value="" id="create_time_mail">
            </div>
            <div class="moph1_val_tj" id="update_mail_next">
                <input type="button" value="下一步">
            </div>
        </div>
    </div>
    <!--下面这个div是body的子集-->
    <!--点击原邮箱地址已不再使用时出现的提示-->
    <div class="fixed">
        <div class="fixed_3">
            <div class="fixed_3_head">
                <p>
                    原邮箱地址已不再使用？
                </p>
            </div>
            <div class="fixed_3_con">
                <p>亲爱的用户，如果您无法进行账户的相关操作，请致电客服<span>1010-6060</span>。</p>
                <p>为了您的账户安全，我们必须验证您的身份，请先准备好以下资料，再致电客服。</p>
                <p>建议提供如下资料：</p>
                <p>1：提供最近一笔订单的出游人信息（姓名，手机号）</p>
                <p>2：提供订单交易的银行卡交易流水号，或支付宝交易流水号，或充值账号的充值银行卡交易流水号（请提供截图）</p>
                <p>3：提供原绑定手机号</p>
            </div>
            <div class="fixed_3_but">
                <input class="yes" type="button" value="确定">
            </div>
        </div>
    </div>
    <!--</div>-->
    <!--第二步：验证新邮箱-->
    <div class="mailbox two_step" id="222" style="display: none">
        <!--头部内容，灰色横线之前-->
        <div class="mailbox_head">
            <div class="m_headtop">
                <span>安全设置－修改邮箱</span>
            </div>
            <div class="m_headbuttom">
                <span class="back_safe">返回安全设置&gt;</span>
            </div>
        </div>
        <!--三个步骤-----2-->
        <div class="moph2_con">
            <p>
                <img src="./myself_files/moph2_1.jpg" alt="">
            </p>
            <div>
                <span>验证原邮箱</span>
                <span>验证新邮箱</span>
                <span>修改成功</span>
            </div>
        </div>
        <!--验证邮箱    地址-->
        <div class="moph2_val">
            <!--手机号码-->
            <div class="moph2_val_yz">
                <span>新邮箱地址：</span>
                <span> <input type="text" id="mail_new"></span>
            </div>

            <!--下一步-->
            <div class="moph2_val_tj" id="update_new_mail" mailtype="updateMail">
                <input type="button" value="发送验证邮件">
            </div>
        </div>
    </div>
    <!--第三步：验证成功-->
    <div class="mailbox three_step" id="333" style="display: none">
        <!--头部内容，灰色横线之前-->
        <div class="mailbox_head">
            <div class="m_headtop">
                <span>安全设置－修改邮箱</span>
            </div>
            <div class="m_headbuttom">
                <span class="back_safe">返回安全设置&gt;</span>
            </div>
        </div>
        <div class="moph1_con">
            <p>
                <img src="./myself_files/moph3_2.png" alt="">
            </p>
            <div>
                <span>验证原邮箱</span>
                <span>验证新邮箱</span>
                <span>修改成功</span>
            </div>
        </div>
        <div class="reqx">
            <p>验证邮件已发送至您的邮箱：<span class="bind_mail">zhuyu****@163.com</span></p>
            <p class="rule">请尽快登录您的邮箱点击邮件中的验证链接完成验证，验证邮箱30分钟内有效。</p>
            <div class="look_btn">
                <input type="button" value="查看邮件" class="btn_actemail">
                <input type="hidden" value="" class="hide_email">
                <span>没收到邮件？<i class="again_send">重新发送</i></span>
            </div>
        </div>
    </div>
</div>
<!--绑定邮箱流程----开始-->
<div class="bind_mail_inner">
    <!--第一步：验证原邮箱-->
    <!--<div class="old_tel" style="display: none">-->
    <div class="mailbox one_step" id="" style="display: none">
        <!--头部内容，灰色横线之前-->
        <div class="mailbox_head">
            <div class="m_headtop">
                <span>安全设置－绑定邮箱</span>
            </div>
            <div class="m_headbuttom">
                <span class="back_safe">返回安全设置&gt;</span>
            </div>
        </div>
        <!--三个步骤------1-->
        <div class="moph1_con">
            <p>
                <img src="./myself_files/moph1_1.jpg" alt="">
            </p>
            <div>
                <span>验证邮箱</span>
                <span>验证激活邮箱</span>
                <span>邮箱验证成功</span>
            </div>
        </div>
        <!--验证邮箱-->
        <div class="moph1_val">
            <!--原邮箱-->
            <div class="moph1_val_dh">
                <span>邮箱：</span>
                <span> <input type="text" id="input_mail"></span>
            </div>
            <!--验证码-->
            <div class="moph1_val_yz">
                <span> 验证码：</span>
                <span> <input type="text" placeholder="请输入图片中的字母" id="imgCode"></span>
                <span class="code" data-val="1370"><i>1</i><i style="color: red;">3</i><i style="color: green;">7</i><i>0</i></span>
	            <span class="tip">看不清，<i id="change_code">换一张</i></span>
            </div>
            <div class="moph1_val_tj" id="mail_bind_activated" mailtype="activatedMail">
                <input type="button" value="发送激活邮箱">
            </div>
        </div>
    </div>
    <!--第三步：验证成功-->
    <div class="mailbox two_step" id="" style="display: none">
        <!--头部内容，灰色横线之前-->
        <div class="mailbox_head">
            <div class="m_headtop">
                <span>安全设置－绑定邮箱</span>
            </div>
            <div class="m_headbuttom">
                <span class="back_safe">返回安全设置&gt;</span>
            </div>
        </div>
        <div class="moph1_con">
            <p>
                <img src="./myself_files/moph3_2.png" alt="">
            </p>
            <div>
                <span>验证邮箱</span>
                <span>验证激活邮箱</span>
                <span>邮箱验证成功</span>
            </div>
        </div>
        <div class="reqx">
            <p>验证邮件已发送至您的邮箱：<span class="bind_mail">29241****@qq.com</span></p>
            <p class="rule">请尽快登录您的邮箱点击邮件中的验证链接完成验证，验证邮箱30分钟内有效。</p>
            <div class="look_btn">
                <input type="button" value="查看邮件" class="btn_actemail">
                <input type="hidden" value="" class="hide_email">
                <span>没收到邮件？<i class="again_send">重新发送</i></span>
            </div>
        </div>
    </div>
</div>
<script src="./myself_files/person_mail.js.下载"></script>
<script>
layer.config({
	tipsMore: true,
	tips:1
});
//验证码等待时间
var wait=60;
function time(o) {
    if (wait == 0) {
        o.removeAttribute("disabled");           
        o.value="重新发送";
        wait = 60;
    } else {
        o.setAttribute("disabled", true);
        o.value="重新发送(" + wait + ")";
        wait--;
        setTimeout(function() {
            time(o)
        },
        1000)
    }
}
//手机获取验证码
$("#getCode").on('click',function(){
	var mobileNumber = $("#user_mobileNumber2").val();
	var reg="^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";
	var regExp = new RegExp(reg);
	if(!regExp.test(mobileNumber)){
		layer.tips('手机号不正确!',$("#user_mobileNumber"));
		return false;
	}
	$.get("/member/getCode.html", {tel:mobileNumber},function (data) {
		//显示验证码等待时间
		$(this).attr("disabled",false); 
		wait=60;
		time(document.getElementById("getCode"));
		//记录验证码
		$("#code").val(data.code);
		var create_time = new Date();
		$("#create_time").val(create_time);
	});
});
//点击下一步---到验证第二页
$("#update_phone_next").on('click',function(){
	var yanCode = $("#mobileVerify").val();
	if(!yanCode){
		layer.tips('手机验证码不能为空!',$("#mobileVerify"));
		return false;
	} 
    var code = code_is_equal($("#create_time"),$("#code"));
    if(yanCode == code){
    	$(this).parent().parent().hide();
        $(this).parent().parent().siblings(".two_step").show();
    }else{
    	layer.tips('手机验证码错误!',$("#mobileVerify"));
    }
});

//新手机号获取验证码
$("#getCode_new").on('click',function(){
	var mobileNumber = $("#phone_new").val();
	var reg="^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";
	var regExp = new RegExp(reg);
	if(!regExp.test(mobileNumber)){
		layer.tips('手机号不正确!',$("#phone_new"));
		return false;
	}
	//验证是否被占用
	$.get("/member/isExisted.html", {nickname:mobileNumber},function (data) {
		var isUse = data;//电话号码是否可以用： true可用  false不可用
		if(isUse && isUse=='false'){
			layer.tips('手机号已被占用!',$("#phone_new"));
		}else{
			//获取验证码
			$.get("/member/getCode.html", {tel:mobileNumber},function (data) {
				//显示验证码等待时间
				$(this).attr("disabled",false);
				wait=60; 
				time(document.getElementById("getCode_new"));
				//记录验证码
				$("#code_new").val(data.code);
				var create_time = new Date();
				$("#create_time_new").val(create_time);
			});
		}
	});
});


//点击下一步---到验证第三页
$("#update_phone_next2").on("click",function(){
	var yanCode = $("#mobileVerify_new").val();
	if(!yanCode){
		layer.tips('手机验证码不能为空!',$("#mobileVerify_new"));
		return false;
	}
    var code = code_is_equal($("#create_time_new"),$("#code_new"));
    if(yanCode == code){
    	var mobileNumber = $("#phone_new").val();
	    var domElem = $(this).parent().parent();
	    $.get('/memberNew/update_info.json',{mobileNumber:mobileNumber},function(data){
	    	domElem.hide();
	    	domElem.siblings(".three_step").show();
	    	
	    	$('#user_mobileNumber2').val(mobileNumber);//修改原手机号码时用
	    	//初始化手机号，隐藏中间4位数
			mobileNumber = mobileNumber.replace(/(\d{3})\d{4}(\d{4})/, '$1****$2');
			$('#mobileNum').html(mobileNumber);
			$('.mobileNumber_update').html(mobileNumber);
	    	return false;
	    });
    }else{
    	layer.tips('手机验证码错误!',$("#mobileVerify_new"));
    }
});

//验证在15分钟有效时间内填写验证码
function code_is_equal(create_time_id,code_id){
	var code = '';
	//计算相差分钟数
	var myDate = new Date();
	var dffd= create_time_id.val();
	var create_time = new Date(create_time_id.val().replace(/-/g,"/"));
	var date=myDate.getTime() - create_time.getTime();  //时间差的毫秒数
	var leave1=date%(24*3600*1000);    //计算天数后剩余的毫秒数
	var leave2=leave1%(3600*1000);        //计算小时数后剩余的毫秒数
	var minutes=Math.floor(leave2/(60*1000));
	if(minutes<=15){
		code = code_id.val();//在15分钟有效时间内填写验证码
	}
	return code;
}


////////////邮箱验证//////////////////

</script>
                        <!--修改手机与邮箱流程--结束-->
                    </div>
                    <!--个人信息 结束 -->
</body>
</html>