<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath=request.getContextPath(); %>
<%Object userName=session.getAttribute("userSession");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>够旅游【价格 预订 行程 推荐】</title>
    <meta name="description" content="【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游预定、价格咨询、行程规划、推荐攻略就到够旅游网，为你提供有品质有深度有主题的【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游旅行服务。">
	<meta name="keywords" content="【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游价格预订行程推荐，够旅游">
    <link rel="stylesheet" href="<%=basePath%>/routeDetail/public.css">
    <link rel="stylesheet" href="<%=basePath%>/routeDetail/common.css">
    <link rel="stylesheet" href="<%=basePath%>/routeDetail/routeDetail2.css">
    <link rel="stylesheet" href="<%=basePath%>/routeDetail/routeDetail3.css">
    <script src="<%=basePath%>/routeDetail/push.js "></script><script src="<%=basePath%>/routeDetail/hm.js "></script><script src="<%=basePath%>/routeDetail/jquery-1.11.3.js "></script>
    <script type="text/javascript" src="<%=basePath%>/routeDetail/bookmark.js "></script>
    <script type="text/javascript" src="<%=basePath%>/routeDetail/cookie.js "></script>
    <script src="<%=basePath%>/routeDetail/routeDetail3.js "></script>
    <script src="<%=basePath%>/routeDetail/jquery.lazyload.min.js "></script><!--懒加载图片-->
    <script src="<%=basePath%>/routeDetail/Calendar_new.js"></script>
    <script type="text/javascript" src="<%=basePath%>/routeDetail/DateFormat.js"></script>
    <script type="text/javascript" src="<%=basePath%>/layer/layer.js"></script>
</head>
<body><link href="<%=basePath%>/routeDetail/jiathis_share.css" rel="stylesheet" type="text/css"><iframe frameborder="0" style="position: absolute; display: none; opacity: 0;" src="<%=basePath%>/routeDetail/saved_resource.html"></iframe><div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; top: 50%; left: 50%; overflow: auto;"></div><div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; overflow: auto;"></div><iframe frameborder="0" src="<%=basePath%>/routeDetail/jiathis_utility.html" style="display: none;"></iframe>
<!--主体开始-->
<c:forEach items="${detailList }" var="detail">
<div class="main">
	<div style="display: none">
	    <input id="routeId" value="2354" type="hidden">
	    <input id="focusId" type="hidden" value="2354">
	    <input id="priceTypeId" type="hidden" value="">
	    <input id="focusName" type="hidden" value="【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游">
	    <input id="focusImage" type="hidden" value="http://image.goutrip.com/e5/68d135543eda81402ecf52d2d871f.jpg">
	    <input id="type" type="hidden" value="2">
	    <input id="title" type="hidden" value="驰骋在北欧大陆欣赏沿路的风光，驻足在欧洲世界的最北端，亲眼见证午夜太阳的奇观">
	    <input id="goutripPrice" type="hidden" value="10200">
		    <input id="userId" type="hidden" value="109272">
		    <input id="userName" type="hidden" value="小够630313">
	</div>
    <div class="main-top">
        <div class="banner-s">
	                	<img class="banner2 bgImage" src="<%=basePath%>/routeDetail/220bee8e66d30e086bb7c6d9eb3bc.jpg" data-original="http://image.goutrip.com/a7/220bee8e66d30e086bb7c6d9eb3bc.jpg" alt="【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游" style="display: inline-block;">
	                    <img class="banner1 bgImage" src="<%=basePath%>/routeDetail/c63d5e922f95f1a1131dec19bad67c.jpg" data-original="http://image.goutrip.com/bc/c63d5e922f95f1a1131dec19bad67c.jpg" alt="【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游" style="display: block;">
        </div>
        <div class="fl-top fl-bg">
            <div class="fl-top-inner w1080 clearfix">
            	<div class="fl topLogo">
            		<a href="<%=basePath%>/home.jsp" class=""><img src="<%=basePath%>/routeDetail/detailLogo.png"></a>
            	</div>
            	
                <div class="top-titles fl">
                	
                    <p class="top-title" title="【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游" alt="【悠然自驾】挪威北角午夜太阳8晚10日深度自驾游">${detail.detail_title}</p>
                    ${detail.detail_brief }                    
                    <div class="coll-spe">
                      	<span class="shape fenxiang" style="padding-top: 0px;" id="shareDo">分享</span>
                       
                        <span  style="padding-top: 0px;" id="collectDo">收藏</span>
                        <input type="hidden" value="${detail.detail_title }" id="param1"><input type="hidden" value="${detail.detail_id }" id="param2">
                        &nbsp;&nbsp;
                      
                    </div>
                </div>
                
                <div class="clearfix pro-infor fr">
                    <div class="clearfix price">
                        <p class="rmb"><i>￥</i>${detail.detail_newprice }</p>
                        <p>
                            <del class="old-price"><i>￥</i>${detail.detail_oldprice }</del>
                            <span style="padding-top: 0px;">起 / 人</span>
                        </p>
                    </div>
                    <div class="fr">
                    	<input type="button" class="lijiPay" value="立即购买" onclick="window.location.href='<%=basePath %>/routeDetail/orderWrite.do?route_detail=${detail.route_detail }'">
                    	
                    </div>
                    <div class="travelTime">
                    	<span class="travelTimeName" style="padding-top: 0px;">团期</span>
                    	    ${detail.detail_group }             	
                    	
                    </div>
                   
                    
                </div>
            </div>
        </div>
       
        <div class="specail w1080 clearfix">
            <div class="fr specail-inner">
                <p class="specail-spe">特色</p>
                <div class="specail-txt">
              	${detail.detail_feature}
                </div>
            </div>
        </div>
        <div class="fl-btm fl-bg">
            <div class="warp clearfix w1080">
                <p class="fl-btm-tip fl" id="youhui">
                    
                    
                    
                    
                    
                    
                    
                </p>
                <p class="page-num">
                    <span class="move" style="padding-top: 0px;">1</span> /
                    <span class="total" style="padding-top: 0px;">2</span>
                </p>
                <div class="big-cricle fr">
                        <p class="small-cricle">
                            </p><p class="cricle">
                                <button class="left"></button>
                                <button class="right"></button>
                            </p>
                        <p></p>
                </div>
            </div>
        </div>
    </div>
    <div class="main-btm">
        <div class="main_middle w1080">
            <div class="mid_title clearfix">
                <span class="copy" style="padding-top: 0px;">另存打印</span>
            </div>
            <!--startprint-->
            <div class="mid_product">
                <div class="mid_nav clearfix border">
                    <ul class="clearfix fl">
                        <li class="sum_list font_c">特色介绍</li>
                        <li class="sug_list">酒店住宿</li>
                        <li id="day_list" class="day_list">每日行程</li>
                        <!--<li class="hotel_list">酒店住宿</li>-->
                        <!--<li class="trip_list">旅游服务</li>-->
                        <li class="cost_list">费用说明</li>
                       
                    </ul>
                   
                </div>
                <div class="all_inner">
                    <!--特色介绍开始-->
                    <div class="sum_inner">
                        <p class="inner_title">特色介绍</p>
                        <div class="inner_core">
                            <div class="prodect">
                                <img class="fl pro-img bgImage" src="http://www.goutrip.com/route/2354.html" data-original="http://image.goutrip.com/49/0767d602eb42e36a4605a40af6387f.jpg" alt="">
                                <div class="pro-txt fr">
                                	<div class="txt-inner">
                                		<p class="txt-1">
                                		${detail.detail_special}
                                        </p>
                                	</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--特色介绍结束-->
                    <!--酒店住宿开始-->
                    <div class="hotel_inner">
                        <p class="inner_title">酒店住宿</p>
                        <div class="inner_core">
	                        		${detail.detail_lodging}
                        </div>
                    </div>
                    <!--酒店住宿结束-->
					 
                    <!--每日行程-->
                    <div class="day_inner">
                        <p class="inner_title">每日行程</p>
                        <!--日期清单-->
	                        <div id="day_bill" class="hide">
	                            <ul>
		                            	<li><img  src="../image/close.png"></li>
		                            	<li style="visibility: hidden;">第2天</li>
		                            	<li style="visibility: hidden;">第3天</li>
		                            	<li style="visibility: hidden;">第4天</li>
		                            	<li style="visibility: hidden;"><img  src="../image/close.png"></li>
		                            	<li style="visibility: hidden;">第6天</li>
		                            	<li style="visibility: hidden;">第7天</li>
		                            	<li style="visibility: hidden;">第8天</li>
		                            	<li style="visibility: hidden;"><img  src="../image/close.png"></li>
		                            	<li style="visibility: hidden;">第10天</li>
		                            	
	                            </ul>
	                        </div>

                        <div class="inner_core">
                        	<!--行程遍历开始-->
	                           ${detail.detail_trip }
							<!--行程遍历结束-->
                           
                        </div>
                    </div>
                    <!--行程结束-->
                    <!--费用说明-->
                    <div class="cost_inner">
                        <p class="inner_title">费用说明</p>
                        <div class="inner_core">
                            <div class="cost clearfix">
                                <h4 class="fl">费用包含</h4>
                                <div class="cost_include fr">
                                    ${detail.detail_include }
                                </div>
                            </div>
                            <div class="cost clearfix">
                                <h4 class="fl">费用不含</h4>
                                <div class="cost_include fr">
                                   ${detail.detail_uninclude }
                                </div>
                            </div>
                            <div class="cost clearfix">
                                <h4 class="fl">预定须知</h4>
                                <div class="cost_include fr">
                                  ${detail.detail_need }  
                                </div>
                            </div>


                        </div>
                    </div>
                    <!--预订须知-->
                    
                </div>

            </div>
        </div>
    </div>
    <!--endprint-->
    <div class="popUp-2"></div>
    
    
</div>

</c:forEach>
<!--主体结束-->
<!--弹框日历-->
<div class="time">
    <p class="timeTitle">   
		<span class="yearMouth" style="padding-top: 0px;"><i><span id="selectMonth2" style="padding-top: 0px;"></span>月</i> <span id="selectYear2" style="padding-top: 0px;"></span></span>
		<span class="timeTitleTxt" style="padding-top: 0px;">出行团期</span>
		<span class="fr cancarClose" style="padding-top: 0px;">✖</span>
		<input type="hidden" id="selectYear" value="2017">
		<input type="hidden" id="selectMonth" value="6">
    </p>
    <div class="canlar clearfix">
    	<span class="canlarLeft fl" id="leftSwitch" onclick="Calendar.getPreviousMonthPriceDaily();" style="padding-top: 0px;"></span>     
    	<table class="clearfix">
	      	<tbody style="border: 1px solid #eee">
	      		<tr>
	                <th>日</th>
	                <th>一</th>
	                <th>二</th>
	                <th>三</th>
	                <th>四</th>
	                <th>五</th>
	                <th>六</th>
	             </tr>
	         </tbody>
	         <tbody id="priceDailyTbody">
	         	 <!--日历加载内容-->
	     	 </tbody> 
   		</table>  
		<span class="canlarRight fl" id="rightSwitch" onclick="Calendar.getNextMonthPriceDaily();" style="padding-top: 0px;"></span>                        
	</div>                                
</div>
<!--页脚开始-->
<!--尾部-->
<div class="botm" data-oxlazy="<%=basePath %>/image/bgmidd_04.png">
    <div class="w1200">
        <div>
            <img class="botm-logo" src="<%=basePath %>/image/logo-3.png">
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
            <img src="<%=basePath%>/routeDetail/bannner_34.png">
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

<script type="text/javascript">
	$('.book_input').click(function () {
   		var url = '/route/orders/orderfill2.html?routeId='+$('#routeId').val();
   		window.location.href = url;
    });
	//数据埋点需求，事件跟踪
	$(function(){
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
		
		//日历弹框的显示隐藏
		$(".moreTime").on("click",function(e){
			var year = $('#initYear').val();
	        var month = $('#initMonth').val();
			if(year && month){
				$(".time,.popUp-2").show(500);
				$("body").css({"overflow":"hidden"})
				$(document,".cancarClose").click(function(){
		            $(".time,.popUp-2").hide(500);
		            $("body").css({"overflow":"auto"})    
		        });
		        $(".canlarRight,.canlarLeft").click(function(event){
		            event.stopPropagation();
		        });
		        e.stopPropagation();
		        
		        $('#selectYear').val(year);
		        $('#selectMonth').val(month);
		        Calendar.getPriceDaily(year,month);
			}
		});
	});
    
	//设置浏览记录[配置参数]  
	oCookieRecord.set({  
	        sTitleFilter:"- 够旅游 - 每天都有新看点WWW.GOUTRIP.COM", // title内容后缀筛选  
	        sRecordListId:"recordList", //浏览记录id  
	        sRecordListTagName:"h2", //浏览记录标签名  
	        nRecordListLength:3, //浏览记录限制条数  
	        nExpires:1 //cookie保留天数  
	}); 
</script>

<script type="text/javascript">
$("#shareDo").click(function(){
	
	layer.open({
		  type: 1,
		  offset: '100px',
		  title: false,
		  closeBtn: 0,
		  area: '380px',
		  skin: 'layui-layer-nobg', //没有背景色
		  shadeClose: true,
		  content:'<img style="width:380px;" src="<%=basePath %>/image/share.png">'
		});
});

$("#collectDo").click(function(){
	var user="<%=userName%>";
	if(null==user){
		layer.confirm('您还未登录，现在登录？', {
			  btn: ['是','否'] //按钮
			}, function(){
			  window.location.href="<%=basePath%>/loginRegister.jsp";
			}, function(){
			 	
			});
		}else{
	var temps=$("#collectDo").html();
	var collect_name=$("#param1").val();
	var collect_detail_id=$("#param2").val();
	var collect_picture='${route_img}';
	$.post("<%=basePath%>/collect/selectSingle.do",{collect_name:collect_name,collect_picture:collect_picture,collect_detail_id:collect_detail_id,user_collect:5},
	function(data,status){
				if("success"==data){
						var content="已收藏";
						$("#collectDo").html(content);
							
						layer.alert('收藏成功！');	
				}else{
						var content="收藏";
						$("#collectDo").html(content);
						
						layer.alert('取消收藏！');
				}
		}
	);
		}	
});


<%-- function collect(a,b){
	alert(1);
	var collect_name=b;
	var collect_picture='${route_img}';
	var collect_detail_id=a;
	console.log(collect_name);
	console.log(collect_detail_id);
	$.post("<%=basePath%>/collect/add.do",{collect_name:collect_name,collect_picture:collect_picture,collect_detail_id:collect_detail_id,user_collect:5});
	layer.alert('收藏成功！');
} --%>
</script>
<script type="text/javascript">
	var content="${str}";
	if("exist"==content){
		$("#collectDo").html("已收藏");
		}
	console.log(content);
</script>
</body></html>