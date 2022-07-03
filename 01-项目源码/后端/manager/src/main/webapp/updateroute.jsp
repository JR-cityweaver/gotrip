<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%String basepath=request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>修改</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=basepath %>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basepath %>/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">    
    <link href="<%=basepath %>/dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="<%=basepath %>/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/main.css" rel="stylesheet">
    
</head>

<body>
	<div class="container">
		<div class="col-lg-8">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           		 修改界面
                        </div>
                        <div class="panel-body">
                           <form  action="<%=basepath %>/route/update.do" method="post">
                           				<input type="hidden" name="pageNo" value="${pageNo}"/><br/>
										<input type="hidden" name="type" value="${type}"/><br/>
										<input type="hidden" name="routeType" value="${routeType}"/><br/>
                           				<div class="form-group">
                                            <label>ID</label>
                                            <input type="hidden" value="${route.routeId }" name="routeId">
                                            <input class="form-control"  disabled="disabled" value="${route.routeId }">
                                            <p class="help-block">*不能改变.</p>
                                        </div>
                                        <div class="form-group">
                                            <label>路线名称</label>
                                            <input class="form-control" name="routeName" value="${route.routeName }">
                                            <p class="help-block">*请填写正确的路线名称信息，便于后期审核.</p>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>出发地点</label>
                                            <input class="form-control" name="routeBeginning" value="${route.routeBeginning }">
                                            <p class="help-block">Example block-level help text here.</p>
                                        </div>
                                        <div class="form-group">
                                            <label>价格</label>
                                            <input class="form-control" name="routePrice" value="${route.routePrice }">
                                            <p class="help-block">Example block-level help text here.</p>
                                        </div>
                                        <%-- <input type="hidden" name="token" value="${token }" /> --%>
                                        <button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
                            </form>
                        </div>
                    </div>
                </div>
	</div>
</body>
</html>