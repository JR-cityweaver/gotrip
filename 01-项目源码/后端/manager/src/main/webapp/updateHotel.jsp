<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
              <div class="panel-heading">修改界面</div>
                   <div class="panel-body">
                       <form action="updateHotel.do" method="post">
                           	<input type="hidden" name="pageNo" value="${pageNo}"/>
							<input type="hidden" name="hType" value="${hType}"/>
                           	<div class="form-group">
                                 <label>ID</label>
                                 <input type="hidden" name="hId" value="${hotel.hId}"/>
                                 <input class="form-control"  disabled="disabled" value="${hotel.hId}">
                                 <p class="help-block">*不能改变.</p>
                            </div>
                            <div class="form-group">
                                 <label>酒店名称</label>
                                 <input type="text" class="form-control" name="hName" value="${hotel.hName}">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>酒店介绍</label>
                                 <textarea class="form-control" name="hIntroduce">${hotel.hIntroduce}</textarea>
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>酒店地址</label>
                                 <textarea type="text" class="form-control" name="hAddress">${hotel.hAddress}</textarea>
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>酒店价格</label>
                                 <input type="text" class="form-control" name="hPrice" value="${hotel.hPrice}">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>产品经理推荐</label>
                                 <textarea  class="form-control" name="hGroom">${hotel.hGroom }</textarea>
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>周围环境</label>
                                 <textarea class="form-control" name="hAround" value="${hotel.hAround }">${hotel.hAround }</textarea>
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
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