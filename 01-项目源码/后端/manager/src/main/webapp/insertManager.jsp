<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%String basepath=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Insert title here</title>
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">    
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/main.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="col-lg-8">
           <div class="panel panel-info">
              <div class="panel-heading">增加管理员界面</div>
                   <div class="panel-body">
                       <form action="<%=basepath %>/insertManager.do" method="post">
							
                            <div class="form-group">
                                 <label>姓名</label>
                                 <input type="text" class="form-control" name="mName">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>密码</label>
                                 <input type="text" class="form-control" name="mPassword">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>联系电话</label>
                                 <input type="text" class="form-control" name="mPhone">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>住址</label>
                                 <input type="text" class="form-control" name="mAddr">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>邮箱</label>
                                 <input type="text" class="form-control" name="mEmail">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
                            </form>
                        </div>
                    </div>
                </div>
	</div>
</body>
</html>