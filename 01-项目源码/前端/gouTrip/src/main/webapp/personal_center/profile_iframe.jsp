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
    <script type="text/javascript" src="<%=basePath%>/layer/layer.js"></script><link rel="stylesheet" href="<%=basePath%>/myself_files/layer.css" id="layui_layer_skinlayercss">
    <script src="<%=basePath%>/myself_files/myIndex.js.下载"></script>
   
    <script src="<%=basePath%>/myself_files/three_Calendar.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/myself_files/DateFormat.js.下载"></script>
    <script type="text/javascript" src="<%=basePath%>/myself_files/jquery-1.8.0.min.js.下载"></script>
</head>
<body>
                    <div class="person_infor">
                        <div class="infor_head">
                            <div class="title">
                                <span>个人资料</span>
                            </div>
                        </div>
						
                        <div class="infor_inner clearfix">
                        <%-- <form action="<%=basePath %>/user/img.do" enctype="multipart/form-data" method="post">
                            <div class="head_img">
                                <img class="userInfo_headImg" src="../myself_files/9c67c129ef18dc05155a4296ea40f7.png" alt="头像">
                                <!-- <span class="update_head_img">修改头像</span> -->
                                <input id="user_img" type="file" name="file" /><input type="submit" onclick="lookimg()">
                            </div>
                        </form> --%>
                            <form action="<%=basePath %>/user/update.do" method="post" id="">
                           
                            	<input type="hidden" name="updateInfo" value="updateInfo">
                            	
                                <ul class="person_date" id="">
                                    <li class="clearfix">
                                        <p class="date_name"><i>*</i>&nbsp;用户名：</p>
                                        <div class="">
                                            <input name="user_nicheng" type="text" id="nameText" readonly="readonly" value="${userInfo.user_nicheng }" style="border: none;"/>
                                            <span class="name_update" id="nameId">修改</span>
                                        </div>
                                    </li>
                                    <li>
                                        <p class="date_name">真实姓名：</p>
                                        <div class="">
                                             <input name="user_realname" type="text" id="realnameText" readonly="readonly" value="${userInfo.user_realname }" style="border: none;"/>
                                            <span class="name_update" id="realnameId">修改</span>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <p class="date_name"><i>*</i>&nbsp;手机号：</p>
                                        <div class="">
                                             <input name="user_tele" type="text" id="teleText" readonly="readonly" value="${userInfo.user_tele }" style="border: none;"/>
                                            <span class="name_update" id="teleId">修改</span>
                                        </div>
                                    </li>
                                    <li>
                                        <p class="date_name">电子邮箱：</p>
                                        <div class="">
                                        		 <input name="user_email" type="text" id="emailText" readonly="readonly" value="${userInfo.user_email }" style="border: none;"/>
                                            <span class="name_update" id="emailId">修改</span>
                                        </div>
                                    </li>
									
									<%-- <li class="clearfix">
                                    	<p class="date_name">性别：</p>
                                    	<div class="">
                                    	<input name="user_sex" type="text" value="${userInfo.user_sex }" id="sex" style="border: none;"/>
                                    	<span class="name_update" id="sex" >修改</span>
                                    	</div>
                                    </li>
									
                                    <li class="clearfix" style="display: none;" id="sex1">
                                        <p class="date_name">性别：</p>
                                        <div class="date_sex">
                                            <label><input type="radio" id="" name="user_sex" value="男"> 男</label>
                                            <label><input type="radio" id="" name="user_sex" value="女"> 女</label>
                                            <span class="name_update" id="sexId" >修改</span>
                                        </div>
                                    </li> --%>
                                    
                                    <li class="clearfix">
                                    	<p class="date_name">出生日期：</p>
                                    	<div class="">
                                    	<input name="user_birthday" type="text" value="${userInfo.user_birthday }" id="birthday3" style="border: none;" readonly="readonly"/>
                                    	<span class="name_update" id="birthday1" >修改</span>
                                    	</div>
                                    </li>
                                    <li id="birthday5" class="clearfix" style="display: none;">
                                        <div class="date_data" id="birthday2">
                                            <select id="birth_year" name="year" onchange="setDays(this,birth_month,birth_day);">
                                                <option value="2016">请选择 年</option>
                                            	<option value="1916">1916</option><option value="1917">1917</option><option value="1918">1918</option><option value="1919">1919</option><option value="1920">1920</option><option value="1921">1921</option><option value="1922">1922</option><option value="1923">1923</option><option value="1924">1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option></select> 
                                            <select id="birth_month" name="month" onchange="setDays(birth_year,this,birth_day);">
                                            	<option value="1">请选择 月</option>
                                        		<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select> 
                                        	<select id="birth_day" name="day" onchange="getBirthday();">
                                            	<option value="1">请选择 日</option>
                                            </select>
                                        </div>
                                        
                                    </li>
                                    
                                
                                    <li class="clearfix butt">
                                        <input type="submit" class="yes save" id="" value="确认">
                                    </li>

                                </ul>
                              
                            </form>
                        </div>
                        <!--修改用户名弹出开窗口开始-->
                       
                        <!--修改用户名弹出开窗口结束-->
                        <script>
                        	$(document).ready(function() {
                        		//2016-11-29 修改个人资料的生日
	                        	var birth = $('#birthday2').val();
	                        	if(birth){
	                        		var birthday = new Date(birth).pattern('yyyy-MM-dd').split("-");
					        	var year = birthday[0];
					        	var month = birthday[1].replace(/^0+/,"");
					        	var day = parseInt(birthday[2]);
					        	$('#birth_year').val(year);
					        	$('#birth_month').val(month);
					        	$('#birth_day').val(day);
	                        	}
                        	});
                        	function getBirthday(){
                        		var $year=$("#birth_year option:selected").val();
						        var $mouth=$("#birth_month option:selected").val();
						        var $day=$("#birth_day option:selected").val();
						        var birthdayStr=null;
						        if($year && $mouth && $day){
						        	birthdayStr = $year+'/'+$mouth+'/'+$day;
						        	birthdayStr = new Date(birthdayStr).pattern('yyyy-MM-dd');
						        	$("#birthday3").val(birthdayStr);
						        	$("#birthday5").hide();
						        	
						        }
                        	}
                        	$("#birth_year,#birth_month").change(function(){
							  	$("#birth_day").val('');
							});
                        	
                        	
                        	$("#nameId").click(function(){
                            	
                        		layer.prompt({title: '输入新昵称', formType: 0}, function(name, index){
                        			$("#nameText").val(name);
                        			  layer.close(index);
                        			});
                        		
                        		});

							$("#realnameId").click(function(){
                            	
                        		layer.prompt({title: '输入真实姓名', formType: 0}, function(name, index){
                        			$("#realnameText").val(name);
                      			    layer.close(index);
                        			
                        			});
                        		
                        		});

							$("#teleId").click(function(){
                            	
                        		layer.prompt({title: '输入电话号码', formType: 0}, function(name, index){
                        			 if(!(/^1[34578]\d{9}$/.test(name))){
                        				 alert("请输入正确的号码");
                            			 }else{                              			                        			
                        			$("#teleText").val(name);
                        			  layer.close(index);
                            			 }
                        			});
                        		
                        		});

							$("#emailId").click(function(){
                            	
                        		layer.prompt({title: '输入电子邮箱', formType: 0}, function(name, index){
                        			 if(!(/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/.test(name))){
                        				 alert("请输入正确的邮箱");
                            			 }else{                              			 
                        			
                        			$("#emailText").val(name);
                        			  layer.close(index);
                            			 }
                        			});
                        		
                        		});

                    		$("#birthday1").click(function(){
                    			$("#birthday5").show();
                        		});

                    		function lookimg(){
                        		var temp=$("#user_img").val();
									console.log(temp);
                        		}
                        </script>
                    </div>
                    <!--个人资料  结束-->
  	
</body>
</html>