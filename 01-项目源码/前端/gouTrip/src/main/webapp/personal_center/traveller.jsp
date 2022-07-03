<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String basePath=request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0046)http://www.goutrip.com/memberNew/my_index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <title>常用旅客iframe</title>
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
        		<!--常用旅客信息 开始-->
                    <div class="passagerInfo">
                    	<c:if test="${traSession == null}">
                    		<div class="commonUsed">
	                            <span class="nobody">您还没有常用旅客喔~</span>
	                            <span class="addbody"><i>+</i><i>添加常用游客</i></span>
                        	</div>
                        </c:if>
                   <c:if test="${traSession != null}">
                        <div class="title clearfix" style="padding: 0px;">
	                        <span class="address1" style="margin-top: 22px; margin-bottom: 22px;">常用旅客</span>
	                        <span class="fr addbody addFriend" style="display: inline-block;"><i>+</i><i>添加常用游客</i></span>
	                    </div>
                        <div class="passager_tab" style="">
                            <div class="orders">
                                <ul>
                                    <li>中文姓名</li>
                                    <li>手机号码</li>
                                    <li>证件类型</li>
                                    <li>证件号码</li>
                                    <li>性别</li>
                                    <li>出生日期</li>
                                    <li>操作</li>
                                </ul>
                                <div class="clearfix list_show" id="friendList">	
                        	<c:forEach items="${traList}" var="traList">
	                                <ol>
									    <li>${traList.traveller_name}</li>
									    <li>${traList.traveller_phone}</li>
									    <li>
									    	${traList.traveller_cardtype}
									    	
									    	
									    	
									    	
									    </li>
									    <li>${traList.traveller_cardnum}</li>
									    <li>${traList.traveller_sex}</li>
									    <li>${traList.traveller_date}</li>
									    <li>
									         <span class="update"><a href="<%=basePath%>/personal_center/updateTra.jsp?traveller_id=${traList.traveller_id}&name=${traList.traveller_name}&phone=${traList.traveller_phone}&email=${traList.traveller_mail}&cardnum=${traList.traveller_cardnum}">修改</a></span>
										     |<span class="delete"><a href="<%=basePath%>/deleteTra.do?traveller_id=${traList.traveller_id}">删除</a></span>
									    </li>
									</ol>
							</c:forEach>
								<ul style="display:inline-block; list-style: none;width: 800px;">
											<c:if test="${pageNo <= 1}">
												<li class="disabled"><a>上一页</a></li>
											</c:if>
											<c:if test="${pageNo >1}">
												 <li><span class="bgc"><a href="<%=basePath%>/getTra.do?pageNo=${pageNo-1}">上一页</a></span></li>
											</c:if>
											<c:forEach var="item" begin="1" end="${page}" step="1">
												 <c:choose>
													<c:when test="${item==pageNo}">
												    	<li class="active"><span class="bgc"><a>${item}</a></span></li>
												    </c:when>
												    <c:otherwise>
												    	<li><span class="bgc"><a href="<%=basePath%>/getTra.do?pageNo=${item}">${item}</a></span></li>
												    </c:otherwise>
												 </c:choose>
											</c:forEach>
											<c:if test="${pageNo < page}">
												<li><span class="bgc"><a href="<%=basePath%>/getTra.do?pageNo=${pageNo+1}">下一页</a></span></li>
											</c:if>
											<c:if test="${pageNo >= page}">
												 <li class="disabled"><a>下一页</a></li>
											</c:if>
										</ul>
								</div>
                            </div>
                        </div>
                      </c:if>
                        <!--点击添加旅客信息 弹出页面-->
                        <div class="addPassagerInfo clearfix" style="display:none;">
                            <div class="Info">
                                <div class="title clearfix title_1" style="padding: 0px;">
                                    <span>新增常用旅客</span>
                                </div>
        <form action="<%=basePath%>/saveTraveller.do" method="post" name="reg_testdate">
                                <input type="hidden" id="friend_id" name="friendId">
                                <ul class="addPassager" id="addPassager">
                                    <li class="clearfix">
                                        <p><i>*</i>&nbsp;姓名：</p>
                                        <input type="text" name="traveller_name" id="friend_name" required="required">
                                    </li>
                                    <li class="clearfix">
                                        <p>性别：</p>
                                        <div class="sex">
                                            <label for="male"><input type="radio" id="friend_male" name="traveller_sex" value="男" checked="">男</label>
                                            <label for="famale"><input type="radio" id="friend_famale" name="traveller_sex" value="女">女</label>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <p>人群：</p>
                                        <div class="person">
                                            <label><input type="radio" id="friend_adult" name="traveller_type" value="成人" checked="">成人</label>
                                            <label><input type="radio" id="friend_child" name="traveller_type" value="儿童">儿童</label>
                                        </div>
                                    </li>
                                    <li class="clearfix" id="birthday">
                                        <p>出生日期：</p>
                                        	<input type="hidden" id="birth" name="traveller_date" value="">
	                                        <select name="YYYY" onchange="YYYYDD(this.value)" id="year">
	                                            <option value="">请选择 年</option>
	                                        <option value="1917"> 1917 年</option><option value="1918"> 1918 年</option><option value="1919"> 1919 年</option><option value="1920"> 1920 年</option><option value="1921"> 1921 年</option><option value="1922"> 1922 年</option><option value="1923"> 1923 年</option><option value="1924"> 1924 年</option><option value="1925"> 1925 年</option><option value="1926"> 1926 年</option><option value="1927"> 1927 年</option><option value="1928"> 1928 年</option><option value="1929"> 1929 年</option><option value="1930"> 1930 年</option><option value="1931"> 1931 年</option><option value="1932"> 1932 年</option><option value="1933"> 1933 年</option><option value="1934"> 1934 年</option><option value="1935"> 1935 年</option><option value="1936"> 1936 年</option><option value="1937"> 1937 年</option><option value="1938"> 1938 年</option><option value="1939"> 1939 年</option><option value="1940"> 1940 年</option><option value="1941"> 1941 年</option><option value="1942"> 1942 年</option><option value="1943"> 1943 年</option><option value="1944"> 1944 年</option><option value="1945"> 1945 年</option><option value="1946"> 1946 年</option><option value="1947"> 1947 年</option><option value="1948"> 1948 年</option><option value="1949"> 1949 年</option><option value="1950"> 1950 年</option><option value="1951"> 1951 年</option><option value="1952"> 1952 年</option><option value="1953"> 1953 年</option><option value="1954"> 1954 年</option><option value="1955"> 1955 年</option><option value="1956"> 1956 年</option><option value="1957"> 1957 年</option><option value="1958"> 1958 年</option><option value="1959"> 1959 年</option><option value="1960"> 1960 年</option><option value="1961"> 1961 年</option><option value="1962"> 1962 年</option><option value="1963"> 1963 年</option><option value="1964"> 1964 年</option><option value="1965"> 1965 年</option><option value="1966"> 1966 年</option><option value="1967"> 1967 年</option><option value="1968"> 1968 年</option><option value="1969"> 1969 年</option><option value="1970"> 1970 年</option><option value="1971"> 1971 年</option><option value="1972"> 1972 年</option><option value="1973"> 1973 年</option><option value="1974"> 1974 年</option><option value="1975"> 1975 年</option><option value="1976"> 1976 年</option><option value="1977"> 1977 年</option><option value="1978"> 1978 年</option><option value="1979"> 1979 年</option><option value="1980"> 1980 年</option><option value="1981"> 1981 年</option><option value="1982"> 1982 年</option><option value="1983"> 1983 年</option><option value="1984"> 1984 年</option><option value="1985"> 1985 年</option><option value="1986"> 1986 年</option><option value="1987"> 1987 年</option><option value="1988"> 1988 年</option><option value="1989"> 1989 年</option><option value="1990"> 1990 年</option><option value="1991"> 1991 年</option><option value="1992"> 1992 年</option><option value="1993"> 1993 年</option><option value="1994"> 1994 年</option><option value="1995"> 1995 年</option><option value="1996"> 1996 年</option><option value="1997"> 1997 年</option><option value="1998"> 1998 年</option><option value="1999"> 1999 年</option><option value="2000"> 2000 年</option><option value="2001"> 2001 年</option><option value="2002"> 2002 年</option><option value="2003"> 2003 年</option><option value="2004"> 2004 年</option><option value="2005"> 2005 年</option><option value="2006"> 2006 年</option><option value="2007"> 2007 年</option><option value="2008"> 2008 年</option><option value="2009"> 2009 年</option><option value="2010"> 2010 年</option><option value="2011"> 2011 年</option><option value="2012"> 2012 年</option><option value="2013"> 2013 年</option><option value="2014"> 2014 年</option><option value="2015"> 2015 年</option><option value="2016"> 2016 年</option><option value="2017"> 2017 年</option><option value="2018"> 2018 年</option><option value="2019"> 2019 年</option><option value="2020"> 2020 年</option><option value="2021"> 2021 年</option><option value="2022"> 2022 年</option><option value="2023"> 2023 年</option><option value="2024"> 2024 年</option><option value="2025"> 2025 年</option><option value="2026"> 2026 年</option></select>
	                                        <select name="MM" onchange="MMDD(this.value)" id="month">
	                                            <option value="">选择 月</option>
	                                        <option value="1"> 1 月</option><option value="2"> 2 月</option><option value="3"> 3 月</option><option value="4"> 4 月</option><option value="5"> 5 月</option><option value="6"> 6 月</option><option value="7"> 7 月</option><option value="8"> 8 月</option><option value="9"> 9 月</option><option value="10"> 10 月</option><option value="11"> 11 月</option><option value="12"> 12 月</option></select>
	                                        <select name="DD" id="day">
	                                            <option value="">选择 日</option>
	                                        <option value="1"> 1 日</option><option value="2"> 2 日</option><option value="3"> 3 日</option><option value="4"> 4 日</option><option value="5"> 5 日</option><option value="6"> 6 日</option><option value="7"> 7 日</option><option value="8"> 8 日</option><option value="9"> 9 日</option><option value="10"> 10 日</option><option value="11"> 11 日</option><option value="12"> 12 日</option><option value="13"> 13 日</option><option value="14"> 14 日</option><option value="15"> 15 日</option><option value="16"> 16 日</option><option value="17"> 17 日</option><option value="18"> 18 日</option><option value="19"> 19 日</option><option value="20"> 20 日</option><option value="21"> 21 日</option><option value="22"> 22 日</option><option value="23"> 23 日</option><option value="24"> 24 日</option><option value="25"> 25 日</option><option value="26"> 26 日</option><option value="27"> 27 日</option><option value="28"> 28 日</option><option value="29"> 29 日</option><option value="30"> 30 日</option><option value="31"> 31 日</option></select>
                                    </li>
                                    <li class="clearfix">
                                        <p><i>*</i>&nbsp;手机号码：</p>
                                        <input type="text" name="traveller_phone" id="friend_phone" required="required">
                                    </li>
                                    <li class="clearfix">
                                        <p>邮箱：</p>
                                        <input type="text" name="traveller_mail" id="friend_email">
                                    </li>
                                    <li class="clearfix" id="cardLi">
                                        <p><i>*</i>&nbsp;证件类型：</p>
                                        <select name="traveller_cardtype" id="type">
                                        	<option value="身份证">身份证</option>
                                            <option value="护照">护照</option>
                                            <option value="港澳通行证">港澳通行证</option>
                                            <option value="台湾通行证">台湾通行证</option>
                                            <option value="稍后提供">稍后提供</option>
                                        </select>
                                        <input type="text" name="traveller_cardnum" id="friend_idCard" required="required" value="">
                                    </li>
                                    <li class="clearfix butt">
                                        <input type="submit" class="yes save" id="friend_save" value="确认">
                                        <input type="button" class="no cancel" value="取消">
                                    </li>
                                </ul>
                    </form>
                            </div>
                            <div class="Upop"></div>
                        </div>
                    </div>
                    <!--常用旅客信息 结束-->
                   
<script type="text/javascript">
	$("#birthday").click(function(){
		var ye = $("#year option:selected").val();
		/* var pro = $("#provice").find("option:selected").val(); */
		console.log("年份是="+ye);
		var mo = $("#month option:selected").val();
		console.log("月份是="+mo);
		var d = $('#day option:selected').val();
		console.log("天数是="+d);
		
		if(d != "" && ye !="" && mo != ""){
			document.getElementById("birth").value = ye+"-"+mo+"-"+d;
		}
	});
	/* $('#cardLi').click(function(){
		var cardType = $('#type option:selected').text();
		console.log(cardType);
		if(cardType != ""){
			document.getElementById("inputCard").value = cardType;
		}
	}); */
<%-- 
	$(function(){
		$.ajax({
			success:function (data){
				alert("新增游客成功!");	
			},
			type:"post",
			url:"<%=basePath%>/saveTraveller.do"
		});	
	}); --%>
</script> 
                   
</body>
</html>