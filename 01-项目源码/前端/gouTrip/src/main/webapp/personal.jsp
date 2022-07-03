<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0039)http://www.goutrip.com/custom/mine.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>私人订制</title>
    <link href="<%=path%>/personal/public.css" rel="stylesheet">
    <link href="<%=path%>/personal/common.css" rel="stylesheet">
    <link href="<%=path%>/personal/person.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="<%=path%>/http://www.goutrip.com/images_new/favicon.ico">
    
    <script src="<%=path%>/personal/jquery-1.11.3.js.下载"></script>
	<script type="text/javascript" src="<%=path%>/personal/laydate.js.下载"></script><link type="text/css" rel="stylesheet" href="<%=path%>/personal/laydate.css"><link type="text/css" rel="stylesheet" href="<%=path%>/personal/laydate(1).css" id="LayDateSkin">
	<script src="<%=path%>/personal/person.js.下载"></script>
	<script src="<%=path%>/personal/layer.js.下载"></script><link rel="stylesheet" href="<%=path%>/personal/layer.css" id="layui_layer_skinlayercss">
	

</head>
<body class="">
<!--头部开始-->
<!--顶部导航开始-->
<div class="header">
    <div class="clearfix w1200">
        <ol class="head-nav fl">
            <li class="logo"><a href="<%=path%>/home.jsp"><img src="personal/logo.png" style="width:62px;height:50px;"></a></li>
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
<script src="personal/jquery.lazyload.min.js.下载"></script><!--懒加载图片-->
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
    <div class="main">

        <div class="main_sub clearfix">
            <div class="main_head">
                <h2>私人订制</h2>
                <h4>私人订制旅行将为您提供最高品质的服务，最专业的分析与规划，让您与家人、朋友在旅途中充分享受美梦成真的愉悦与感动</h4>
                <div id="aaa" class="hed_nav">
                    <ul>
                        <li>
                            <p>2</p>
                            <p>分钟</p>
                        </li>
                        <li>
                            <p>3</p>
                            <p>小时</p>
                        </li>
                        <li>
                            <p>48</p>
                            <p>分钟</p>
                        </li>
                    </ul>
                    <div class="clearfix">
                        <p>收集出行需求</p>
                        <p>内与您电话沟通</p>
                        <p>内获得订制方案</p>
                    </div>
                </div>
            </div>
 <form action="<%=path%>/tailor.do" method="post">           
            <div class="main_tab">
                <!--tab头部-->
                <ul class="clearfix tab_1">
                    <li class="basic font-c bg_1">基本出游信息</li>
                    <li class="number bg_2">出游人数及预算</li>
                    <li class="perpson bg_3">个人信息</li>
                </ul>
                <div>
                    <!--第一页内容-->
                    <div class="tab_inner_1">
                        <p class="tab_title">您想要的？</p>
                        <ol>
                            <li class="where">
                                <span>从哪出发：</span>
                                <div>
                                    <input type="text" name="tailor_start" id="fromcity">
                                </div>
                            </li>
                            <li class="address">
                                <span>到哪儿玩：</span>
                                <div>
                                    <input type="text" name="tailor_end" id="termini">
                                    <span>推荐路线：</span>
                                    <a href="http://www.goutrip.com/themeTrip/searchResultList.html?keyword=%E4%B8%9C%E4%BA%AC">东京</a>
                                    <a href="http://www.goutrip.com/themeTrip/searchResultList.html?keyword=%E9%A6%96%E5%B0%94">首尔</a>
                                    <a href="http://www.goutrip.com/themeTrip/searchResultList.html?keyword=%E9%93%81%E5%8A%9B%E5%A3%AB">铁力士</a>
                                </div>
                            </li>
                            <li class="time">
                                <span>玩儿多久：</span>
                                <div>
                                    <span class="minus"></span>
                                    <input type="text" value="1" name="tailor_days" id="days">
                                    <span class="add"></span>
                                </div>
                            </li>
                            <li class="date">
                                <span>出发日期：</span>
                                <div>
                                    <input class="laydate-icon" name="tailor_gotime" type="text" readonly="" id="goTime">
                                    <p>
                                        <!--<i>*</i>-->
                                        <span>可根据实际情况调整出发日期和天数</span>
                                    </p>
                                </div>
                            </li>
                        </ol>
                        <p class="tab_next">
                            <span id="next_1">下一步</span>
                        </p>
                    </div>
                    <!--第二页内容-->
                    <div class="tab_inner_2">
                        <p class="tab_title">您期待的行程主题及人均预算是？</p>
                        <ol>
                            <li>
                                <i>行程主题：</i>
                                <div class="theme">
	                                	<span>特色旅行</span>
	                                	<span>极限冲浪</span>
	                                	<span>当地玩乐</span>
	                                	<span>邮轮游艇</span>
	                                	<span>健康养生</span>
	                                	<span>滑雪</span>
	                                	<span>地标之旅</span>
	                                	<span>越野自驾</span>
	                                	<span>潜水</span>
	                                	<span>摄影</span>
	                                	<span>蜜月假期</span>
	                                	<span>亲子系列</span>
                                </div>
                            </li>
                            <li>
                                <i>出游人数：</i>
                                <div class="trip">
                                    <p>
                                        <i class="minus"></i>
                                        <input type="text" value="1" name="tailor_adult" id="num" readonly="">
                                        <i class="add"></i>
                                        <span>个成人</span>
                                    </p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>
                                        <i class="minus"></i>
                                        <input type="text" value="0" name="tailor_child" id="withChildren" readonly="">
                                        <i class="add"></i>
                                        <span>个儿童</span>
                                        <i class="tip">(2-11周岁)</i>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <i>人均预算：</i>
                                <div class="budget">
                                    <span>3000以下</span>
                                    <span>3000-5000</span>
                                    <span>5000-8000</span>
                                    <span>8000-15000</span>
                                    <span>15000以上</span>
                                    <span>不确定</span>
                                </div>
                            </li>
                        </ol>
                        <div class="tab_btn clearfix">
                            <p class="btn_prev">
                                <span id="prev_1" onclick="changeTab(1)">上一步</span>
                            </p>
                            <p class="btn_next">
                                <span id="next_2">下一步</span>
                            </p>
                        </div>
                    </div>
                    <!--第三页内容-->
                    <div class="tab_inner_3" id="next_3">
                    	<div style="display: none;">
	                    	<ul>
	                        	<li class="copy_budget">
					                 <span>人均预算：</span>
					                 <div id="money2"><input type="hidden" id="hiddenPrice" value="" name="tailor_price"></div>
					            </li>
					            <li class="copy_theme">
					                <span>行程主题：</span>
					                <div id="subject2"><input type="hidden" id="hiddenType" value="" name="tailor_type"></div>
					            </li>
					           </ul>
	                     </div>   
                        <p class="tab_title">所有问题都已回答完毕，请留下您的联系方式
                            专家顾问会第一时间联系你哦～</p>
                        <ol>
				            
                            <li class="name">
                                <span>姓名：</span>
                                <div>
                                    <input type="text" name="tailor_name" id="name" class="friend-name">
                                </div>
                            </li>
                            <li class="tel">
                                <span>手机：</span>
                                <div>
                                    <input type="text" name="tailor_phone" id="phone" class="friend-phome">
                                </div>
                            </li>
                            <!-- <li class="msg">
                                <span>短信验证码：</span>
                                <div>
                                    <input type="text" id="mobileVerify">
                                    <input type="button" value="获取" id="getCode">
                                    <input type="hidden" value="" id="code">
                                    <input type="hidden" value="" id="create_time"> 
                                </div>
                            </li> -->
                            <li class="mail">
                                <span>邮箱：</span>
                                <div>
                                    <input type="text" name="tailor_mail" id="emails">
                                </div>
                            </li>
                            <li class="remark">
                                <span>补充备注：</span>
                                <div>
                                    <textarea placeholder="您可以在这里补充说明相关需求" name="tailor_remarks" id="remark" cols="30" rows="10"></textarea>
                                </div>
                            </li>
                        </ol>
                        <div class="tab_btn clearfix">
                            <p class="btn_prev">
                                <span id="prev_2" onclick="changeTab(2)">上一步</span>
                            </p>
                            <p class="btn_next submit">
                                <input type="submit" value="提交" id="personal-form" class="disable">
                            </p>
                        </div>
                    </div>
                </div>

            </div>
 </form>           
            <div class="main_side">
                <h2 class="side_nav">我的需求单</h2>
                <div class="side_list">
                    <ul>
                        <li class="copy_where">
                            <span>从哪出发：</span>
                            <div id="fromcity2"></div>
                        </li>
                        <li class="copy_address">
                            <span>到哪儿玩：</span>
                            <div id="termini2"></div>
                        </li>
                        <li class="copy_time">
                            <span>玩儿多久：</span>
                            <div id="days2"></div>
                        </li>
                        <li class="copy_date">
                            <span>出发日期：</span>
                            <div id="goTime2"></div>
                        </li>
                        <li class="copy_theme">
                            <span>行程主题：</span>
                            <div id="subject2"></div>
                        </li>
                        <li class="copy_trip">
                            <span>出游人数：</span>
                            <div id="num2"></div>
                        </li>
                        <li class="copy_budget">
                            <span>人均预算：</span>
                            <div id="money2"><input type="hidden" name="tailor_price"></div>
                        </li>


                    </ul>
                    <ol>
                        <li class="copy_name">
                            <span>姓名：</span>
                            <div id="name2"></div>
                        </li>
                        <li class="copy_tel">
                            <span>手机号：</span>
                            <div id="phone2"></div>
                        </li>
                        <li class="copy_mail">
                            <span>邮箱：</span>
                            <div id="email2"></div>
                        </li>
                        <li class="copy_remark">
                            <span>补充备注：</span>
                            <div id="remark2"></div>
                        </li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="main_btm">
            <p>网站备案/许可证号：京ICP备14016142号-1|够旅游公安 备案编号：京公网安备11010802014913号|主办单位名称：北京汇智纵横信息技术有限公司</p>
            <p> 办公地址：北京市海淀区中关村东路18号财智国际大厦A座17层 | 网站名称：够旅游网|网站首页网址：www.goutrip.com</p>
        </div>
    </div>
     <div class="alert">
        <div class="txt clearfix">
            <p class="first">
                <img src="personal/suss_07.png" alt="">
                <span>您已成功提交联系方式</span>
            </p>
            <p class="second">我们将尽快与您联系并确认预订。 </p>
            <p class="third">如有问题请拨打<i>400-065-5161</i></p>
        </div>
        <div class="btn">
            <span onclick="window.location.reload();">我知道了</span>
        </div>
    </div>

    <div class="popUpp"></div>
    

<script>
    //显示出发日期的日历
    var goTime = {
        elem: '#goTime',
        format:"YYYY-MM-DD",
        istime:false,
        isclear:true,
        istoday:true,
        issure:true,
        min: '1900-01-01 00:00:00', //设定最小日期
        max: '2099-06-16 23:59:59', //最大日期
        choose: function(datas){}
    };
    laydate(goTime);
</script>

</body></html>