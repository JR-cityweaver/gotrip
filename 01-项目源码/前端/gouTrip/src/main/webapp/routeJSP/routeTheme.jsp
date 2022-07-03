<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="<%=basePath %>/route/public.css">
    <link rel="stylesheet" href="<%=basePath %>/route/common.css">
    <link rel="stylesheet" href="<%=basePath %>/route/themeList.css">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.goutrip.com/images_new/favicon.ico">
    <script src="<%=basePath %>/route/hm.js"></script><script src="<%=basePath %>/route/jquery-1.11.3.js"></script>
    <script src="<%=basePath %>/route/layer.js"></script><link rel="stylesheet" href="<%=basePath %>/route/layer.css" id="layui_layer_skinlayercss">
    <script type="text/javascript" src="<%=basePath %>/route/ojbUrl.js"></script>
    
<title>Insert title here</title>
</head>
<body>
<div class="main">
   <!--主题右部开始-->
        <div class="Ma_right">
            <!--下拉选项-->
            <div>
            	
                	<div id="tripway">旅行方式&nbsp;
                    <div id="showtrip" style="display: none;">
                        <a style="color: #FFFFFF" href="<%=basePath %>/route/team.do?tb_way=0&pageno=1" type="groupType" dataid="1">独立团</a>
                        <a style="color: #FFFFFF" href="<%=basePath %>/route/team.do?tb_way=1&pageno=1" type="groupType" dataid="2">自由行</a>
                        <a style="color: #FFFFFF" href="<%=basePath %>/route/team.do?tb_way=2&pageno=1" type="groupType" dataid="3">半自由</a>
                        <a style="color: #FFFFFF" href="<%=basePath %>/route/team.do?tb_way=3&pageno=1" type="groupType" dataid="4">私家团</a>
                        <!--<a href="javascript:;" type="groupType" dataid="5">自驾游</a>-->
                    </div>
               		</div>
                <script type="text/javascript">
                $(function(){
                	$("#tripway").hover(function()
                	{
                	   //这里鼠标悬浮其上的动作
                	   $("#showtrip").show();
                	},function(){
                	    //这里鼠标移动出去的动作
                	    $("#showtrip").hide();
                	});
                	});
                </script>
                
                
                <div id="selectParm">
                    <a href="<%=basePath %>/route/getAllRoute.do?pageno=1" type="sellWell" dataid="0">全部</a>
                    <a href="<%=basePath %>/route/hot.do?pageno=1" type="sellWell" dataid="1">热门</a>
                     <!--<span>天数</span>
                        <p><img src="/images_new/index_new/themeList/Pro_List_02.png" onclick="changeSort(5);"><img src="/images_new/index_new/themeList/Pro_List_04.png" onclick="changeSort(6);"></p>
                    <span>价格</span>
                        <p><img src="/images_new/index_new/themeList/Pro_List_02.png" onclick="changeSort(3);"><img src="/images_new/index_new/themeList/Pro_List_04.png" onclick="changeSort(4);"></p>-->
                        <span class="time1">天数</span>
                    	<p><i class="img_top1 " onclick="window.location.href='<%=basePath %>/route/day.do?pageno=1'"></i><i class="img_botm1 " onclick="window.location.href='<%=basePath %>/route/dayAsc.do?pageno=1'"></i></p>
                    	<span class="time2">价格</span>
                    	<p><i class="img_top2 " onclick="window.location.href='<%=basePath %>/route/price.do?pageno=1'"></i><i class="img_botm2 " onclick="window.location.href='<%=basePath %>/route/priceAsc.do?pageno=1'"></i></p>
                </div>
            </div>
            <!--主题产品列表-->
            <div>
                <!--每一小块内容-->
                		    							          
	    				<c:forEach items="${routeList }" var="route">
	    				<div>
			                <a href="<%=basePath %>/routeDetail/detail.do?route_detail=${route.route_id}&route_img=${route.route_img}" target="_blank">
			                	<img class="bgImage" src="<%=basePath %>/route/image/${route.route_img}" alt="${route.route_name }">
			                </a>
			                
			                <p><a href="<%=basePath %>/routeDetail/detail.do?route_detail=${route.route_id}" target="_blank">${route.route_name }</a></p>
			                <p>
			                    <span class="money"><strong>${route.route_price }</strong>元起/人</span>
			                    <span class="address"><img src="<%=basePath %>/route/Pro_List_01.png"> 出发地：${route.route_beginning }</span>
			                </p>
			                
			            </div>
			            </c:forEach>
	    				
                </div>
                <!--翻页开始-->
				<div class="cont_botm_nav clearfix">
					<div>
							<form action="<%=basePath%>/route/getAllRoute.do" method="post">
						<p>
						     <c:if test="${pageno<1 }">
								    	<li style="display: none;"><a>上一页</a></li>
							 </c:if>
							 <c:if test="${pageno>1 }">
								   <a href="<%=basePath %>/route/getAllRoute.do?pageno=${pageno-1 }">上一页</a>
							 </c:if>       
						     <c:forEach var="i" begin="1" step="1" end="${totalPage }">
								    <a href="<%=basePath%>/route/getAllRoute.do?pageno=${i}">${i }</a>
							 </c:forEach>  
							   
							 <c:if test="${pageno<totalPage }">
						        <a href="<%=basePath%>/route/getAllRoute.do?pageno=${pageno+1}"><span>下一页</span></a>		    
					    	 </c:if>
					    	 <c:if test="${pageno>totalPage }">
							 	<li style="display: none;"><a>下一页</a></li>
							 </c:if> 
					    	<span>到</span><input type="number" class="stage_page_in" name="pageno" id="pageno"><span>页</span>
					    		<input id="submit1" type="submit"  class="stage_page_su" value="确定">
					    </p>
					    	</form>
					</div>
				</div>
				<!--翻页结束-->
       </div>
   </div>
 
<script type="text/javascript">
	$("#submit1").click(function(){
			var country=$("#pageno").val();
			var flag=0;
		if(country==""||country>${totalPage}||country<1){
			flag=1;
			layer.tips('请输入正确页码', $("#pageno"),{tips: 1});
			}
		if(flag>0){
			return false;
			}

		});
</script>
</body>
</html>