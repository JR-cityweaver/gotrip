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
    <script src="<%=basePath%>/myself_files/city.js.下载"></script>
    <script src="<%=basePath%>/myself_files/three_Calendar.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/myself_files/DateFormat.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/myself_files/jquery-1.8.0.min.js.下载"></script>
</head>
<body>
        		<!--常用地址 开始-->
                    <div class="usedAddress">
                        <div class="addressInfo">
	                        <c:if test="${addrSession == null}">
	                            <div class="commonUsed">
	                                <span class="nobody">您还没有常用地址喔~</span>
	                                <span class="addbody"><i>+</i><i>添加常用地址</i></span>
	                            </div>
	                        </c:if>
              			<c:if test="${addrSession != null}">             
                            <div class="title clearfix" style="padding: 0px;">
                                <span class="address2" style="margin-top: 22px; margin-bottom: 22px;">常用地址</span>
                                <span class="fr addbody addAddress2"><i>+</i><i>添加常用地址</i></span>
                            </div>
                            <div class="address_tab">
                                <div class="orders">
                                    <ul>
                                        <!--加载订单内容-->
                                        <li>联系手机</li>
                                        <li>联系电话</li>
                                        <li>所在地址</li>
                                        <li>地址详情</li>
                                        <li>邮编</li>
                                        <li>操作</li>
                                    </ul>
                                    <div class="clearfix list_show" id="addressList">
	                                  <c:forEach items="${addrList}" var="addr">
                                    	<ol>
										    <li id="addrPhone">${addr.address_phone}</li>
										    <li id="addrTele">${addr.address_tele}</li>
										    <li id="addrArea">${addr.address_area}</li>
										    <li id="addrDetail">${addr.address_detail}</li>
										    <li id="addrPostcode">${addr.address_postcode}</li>
										    <li>
										         <span class="update"><a href="<%=basePath%>/personal_center/updateAddr.jsp?address_id=${addr.address_id}&name=${addr.address_name}&phone=${addr.address_phone}&tele=${addr.address_tele}&postCode=${addr.address_postcode}">修改</a></span>
										         |<span class="delete"><a href="<%=basePath%>/deleteAddr.do?address_id=${addr.address_id}">删除</a></span>
										    </li>
										</ol>
									  </c:forEach>
									  <ul style="display:inline-block; list-style: none;width: 800px;">
											<c:if test="${pageNo <= 1}">
												<li class="disabled"><a>上一页</a></li>
											</c:if>
											<c:if test="${pageNo >1}">
												 <li><span class="bgc"><a href="<%=basePath%>/getAddr.do?pageNo=${pageNo-1}">上一页</a></span></li>
											</c:if>
											<c:forEach var="item" begin="1" end="${page}" step="1">
												 <c:choose>
													<c:when test="${item==pageNo}">
												    	<li class="active"><span class="bgc"><a>${item}</a></span></li>
												    </c:when>
												    <c:otherwise>
												    	<li><span class="bgc"><a href="<%=basePath%>/getAddr.do?pageNo=${item}">${item}</a></span></li>
												    </c:otherwise>
												 </c:choose>
											</c:forEach>
											<c:if test="${pageNo < page}">
												<li><span class="bgc"><a href="<%=basePath%>/getAddr.do?pageNo=${pageNo+1}">下一页</a></span></li>
											</c:if>
											<c:if test="${pageNo >= page}">
												 <li class="disabled"><a>下一页</a></li>
											</c:if>
										</ul> 	
									</div>
                                </div>
                            </div>
                         </c:if>   
                            <!--点击添加地址信息 弹出页面-->
                            <div class="addAddressInfo" style="display:none;">
                                <div class="Info">
                                    <div class="title clearfix title_1" style="padding: 0px;">
                                        <span>新增常用地址</span>
                                    </div>
              <form action="<%=basePath%>/address.do?pageNo=1" method="post" id="addAddress">
                                        <input type="hidden" id="address_id" name="addressId">
                                        <ul class="addAddress">
                                        	<li class="clearfix">
                                                <p><i>*</i>&nbsp;收货人姓名：</p>
                                                <input type="text" name="address_name" id="address_name">
                                            </li>
                                            <li class="clearfix">
                                                <p><i>*</i>&nbsp;联系手机：</p>
                                                <input type="text" name="address_phone" id="address_phone">
                                            </li>
                                            <li class="clearfix">
                                                <p><i>*</i>&nbsp;联系电话：</p>
                                                <input type="text" name="address_tele" id="address_tel">
                                            </li>
                                            <li class="clearfix" id="area">
                                                <p><i>*</i>&nbsp;所在地区：</p>
                                                <select id="province" onchange="getRegion()"><option value="">--省份--</option><option value="1">北京</option><option value="2">上海</option><option value="3">天津</option><option value="4">重庆</option><option value="5">内蒙古</option><option value="6">河北</option><option value="7">辽宁</option><option value="8">吉林</option><option value="9">黑龙江</option><option value="10">江苏</option><option value="11">安徽</option><option value="12">山东</option><option value="13">浙江</option><option value="14">江西</option><option value="15">福建</option><option value="16">湖南</option><option value="17">湖北</option><option value="18">河南</option><option value="19">广东</option><option value="20">广西</option><option value="21">贵州</option><option value="22">四川</option><option value="23">云南</option><option value="24">陕西</option><option value="25">甘肃</option><option value="26">宁夏</option><option value="27">青海</option><option value="28">新疆</option><option value="29">西藏</option><option value="30">海南</option><option value="31">山西</option><option value="32">台湾</option><option value="33">香港</option><option value="34">澳门</option></select>
                                                <input type="hidden" id="inputpro" name="address_area" value=""/>
                                                <select name="" id="city">
                                                    <option value="">--城市--</option>
                                                </select>
                                            </li>
                                            <li class="clearfix">
                                                <p><i>*</i>&nbsp;详细地址：</p>
                                                <textarea type="text" name=address_detail id="address_detail"></textarea>
                                            </li>
                                            <li class="clearfix">
                                                <p><i>*</i>&nbsp;邮政编码：</p>
                                                <input type="text" name="address_postcode" id="address_postcodes">
                                            </li>
                                            <li class="clearfix butt">
                                                <input type="submit" class="yes save" id="address_save" value="确认">
                                                <input type="button" class="no cacel" value="取消">
                                            </li>
                                        </ul>
             	</form>
                                </div>
                                <div class="Upop"></div>
                            </div>
                        </div>
                    </div>
                    <!--&lt;!&ndash;常用地址 结束&ndash;&gt;-->
<script type="text/javascript">
	$("#area").click(function(){
		var prov = $("#province option:selected").html();
		/* var pro = $("#provice").find("option:selected").val(); */
		console.log(prov);
		var ci = $("#city option:selected").val();
		console.log(ci);
		if(ci != ""){
			document.getElementById("inputpro").value = prov+"-"+ci;
		}
	});

</script>                    
</body>
</html>