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


<title>添加</title>


<title>添加</title>


<!-- Bootstrap Core CSS -->
    <link href="<%=basepath %>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basepath %>/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">    <link href="<%=basepath %>/dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="<%=basepath %>/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="<%=basepath %>/css/main.css" rel="stylesheet">
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
	
	<!-- <script type="text/javascript">
	$().ready(function(){
		$('#MyForm').validate({
			rules:{
				routeActivitytype :{
					required: true,
					range : [0,5],
					digits:true
				},
				way : {
					required: true,
					range : [0,3],
					digits:"必须输入整数"
				}
			},
			message: {
				routeActivitytype :{
					required: "请输入线路活动类型代表的数字",
					range : "请输入0-5之间的数字",
					digits:true
				},
				way : {
					required: "请输入旅行方式代表的数字",
					range : "请输入0-3之间的数字",
					digits:"必须输入整数"
				}
			},
		});
	});
</script> -->
	
</head>

<body>
	<div class="container">
		<div class="col-lg-8">
                    <div class="panel panel-info">
                        <div class="panel-heading">

                           		 <h3 style="color:red">添加一下(相应关系请查看管理员需知)</h3>



                        </div>
                        <div class="panel-body">
                           <form id="MyForm" action="<%=basepath %>/route/insert.do" method="post">
                           				<div class="form-group">
                                            <label>线路主题类型</label>


                                            <input class="form-control" name="routeType" id="routeType">
                                            <p class="help-block">请写入0-6的数字(必需)([0:亲子系列],[1:蜜月度假],[2:摄影],[3:潜水],[4:越野自驾],[5:滑雪],[6:特色旅行])</p>

                                            <%-- <input class="form-control" name="routeType" value="${param.type}" disabled="disabled">
                                            <p class="help-block">(必需)请写入0-6的数字([0:亲子系列],[1:蜜月度假],[2:摄影],[3:潜水],[4:越野自驾],[5:滑雪],[6:特色旅行])</p> --%>



                                        </div>
                                        
                                        <!-- 限制数字输入大小 ，不得大于6-->
                                        <script type="text/javascript">
											var text = document.getElementById("routeType");
											text.onkeyup = function(){
												this.value=this.value.replace(/\D/g,'');
													if(text.value>6){
													   text.value = 6;
													}
											}
                                        </script>
                                        
                                        <div class="form-group">
                                            <label>线路活动类型</label>
                                            <input class="form-control" name="routeActivitytype" id="routeActivitytype">
                                            <p class="help-block">(必需)请写入0-5的数字([0：推荐],[1：特价],[2：热卖],[3：新品],[4：团购],[5：返现])</p>
                                        </div>
                                        
                                        <script type="text/javascript">
											var text1 = document.getElementById("routeActivitytype");
											text1.onkeyup = function(){
												this.value=this.value.replace(/\D/g,'');
													if(text1.value>5){
													   text1.value = 5;
													}
											}
                                        </script>
                                        
                                        <div class="form-group">
                                            <label>线路旅行方式</label>
                                            <input class="form-control" name="way" id="way">
                                            <p class="help-block">(必需)请写入0-3的数字([0：独立团],[1：自由行],[2：半自由],[3：私家团])</p>
                                        </div>
                                        
                                        <script type="text/javascript">
											var text2 = document.getElementById("way");
											text2.onkeyup = function(){
												this.value=this.value.replace(/\D/g,'');
													if(text2.value>3){
													   text2.value = 3;
													}
											}
                                        </script>
                                        
                                        <div class="form-group">
                                            <label>路线名称</label>
                                            <input class="form-control" name="routeName" >
                                            <p class="help-block">*请填写正确的路线名称信息，便于后期审核.</p>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>出发地点</label>
                                            <input class="form-control" name="routeBeginning" >
                                            <p class="help-block">请写出您要出发的地点</p>
                                        </div>
                                        <div class="form-group">
                                            <label>价格</label>
                                            <input class="form-control" name="routePrice" >
                                            <p class="help-block">请输入合理的价格</p>
                                        </div>
                                        <input type="hidden" name="token" value="${token }" />
                                        <button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
                            </form>
                        </div>
                    </div>
                </div>
	</div>
	


</body>
</html>