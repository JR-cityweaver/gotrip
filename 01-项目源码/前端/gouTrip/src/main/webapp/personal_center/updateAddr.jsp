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
                           
                            <!--点击添加地址信息 弹出页面-->
                            <div class="addAddressInfo">
                                <div class="Info">
                                    <div class="title clearfix title_1" style="padding: 0px;">
                                        <span>修改常用地址</span>
                                    </div>
              <form action="<%=basePath%>/updateAddr.do?address_id=${param.address_id}" method="post" id="addAddress">
                                        <input type="hidden" id="address_id" name="addressId">
                                        <ul class="addAddress">
                                        	<li class="clearfix">
                                                <p><i>*</i>&nbsp;收货人姓名：</p>
                                                <input type="text" name="address_name" id="address_name" value="${param.name}">
                                            </li>
                                            <li class="clearfix">
                                                <p><i>*</i>&nbsp;联系手机：</p>
                                                <input type="text" name="address_phone" id="address_phone" value="${param.phone}">
                                            </li>
                                            <li class="clearfix">
                                                <p><i>*</i>&nbsp;联系电话：</p>
                                                <input type="text" name="address_tele" id="address_tel" value="${param.tele}">
                                            </li>
                                            <li class="clearfix" id="area">
                                                <p><i>*</i>&nbsp;所在地区：</p>
                                                <select id="province" onchange="getRegion()"><option value="0">--省份--</option><option value="1">北京</option><option value="2">上海</option><option value="3">天津</option><option value="4">重庆</option><option value="5">内蒙古</option><option value="6">河北</option><option value="7">辽宁</option><option value="8">吉林</option><option value="9">黑龙江</option><option value="10">江苏</option><option value="11">安徽</option><option value="12">山东</option><option value="13">浙江</option><option value="14">江西</option><option value="15">福建</option><option value="16">湖南</option><option value="17">湖北</option><option value="18">河南</option><option value="19">广东</option><option value="20">广西</option><option value="21">贵州</option><option value="22">四川</option><option value="23">云南</option><option value="24">陕西</option><option value="25">甘肃</option><option value="26">宁夏</option><option value="27">青海</option><option value="28">新疆</option><option value="29">西藏</option><option value="30">海南</option><option value="31">山西</option><option value="32">台湾</option><option value="33">香港</option><option value="34">澳门</option></select>
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
                                                <input type="text" name="address_postcode" id="address_postcodes" value="${param.postCode}">
                                            </li>
                                            <li class="clearfix butt">
                                                <input type="submit" class="yes save" value="确认">
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
		var prov = $("#provice").html();
		/* var pro = $("#provice").find("option:selected").val(); */
		console.log(prov);
		var ci = $("#city option:selected").val();
		console.log(ci);
		if(ci != ""){
			document.getElementById("inputpro").value = ci;
		}
	});

</script>                    
</body>
</html>