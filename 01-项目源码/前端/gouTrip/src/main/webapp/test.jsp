<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%String basePath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jquery.spinner数字智能加减插件</title>

<link rel="stylesheet" href="<%=basePath %>/jquery/jquery.spinner.css" />

<script type="text/javascript" src="<%=basePath %>/jquery/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/jquery/jquery.spinner.js"></script>


</head>
<body>
	<form  id="form1" action="<%=basePath%>/order/torist.do" method="post">
		<input  type="text" name="username" placeholder="username"></input>
	</form>

	<form  id="form2" action="<%=basePath%>/order/test.do" method="post">
		<input  type="password" name="password" placeholder="password" />
	</form>
	<button id="subbut" >提交</button>


<script type="text/javascript">
$(document).ready(function() {
    $("#subbut").click(function() {
        $.post($("#form1").attr("action"), $("#form1").serialize(),
          function() {
            $.post($("#form2").attr("action"), $("#form2").serialize(),
              function() {
                alert('Both forms submitted');
              });
          });
      });
  }); 
  



</script>
	




</body>
</html>