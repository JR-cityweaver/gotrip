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
              <div class="panel-heading">新增房间信息</div>
                   <div class="panel-body">
                       <form action="insertRoom.do" method="post">
                       		<input type="hidden" name="tb_hotel_hotel_id" value="${param.hotel_id}"> 
                            <div class="form-group">
                                 <label>房间名字</label>
                                 <input type="text" class="form-control" name="room_name" value="">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>床型</label>
                                 <input class="form-control" name="room_bed" value="">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>早餐</label>
                                 <input type="text" class="form-control" name="room_breakfast" value="">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>WiFi</label>
                                 <input type="text" class="form-control" name="room_wifi" value="">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>说明</label>
                                 <input class="form-control" name="room_explain" value="">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>价格</label>
                                 <input class="form-control" name="room_price" value="">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>面积</label>
                                 <input class="form-control" name="room_area" value="">
                                 <p class="help-block">*请填写正确信息，便于后期审核.</p>
                            </div>
                            <div class="form-group">
                                 <label>楼层</label>
                                 <input class="form-control" name="room_floor" value="">
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