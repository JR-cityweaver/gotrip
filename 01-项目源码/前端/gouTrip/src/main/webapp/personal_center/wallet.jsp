<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%String basePath=request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0046)http://www.goutrip.com/memberNew/my_index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <title>我的收藏iframe</title>
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
      <!--我的账户  开始-->
                    <div class="account">
                        <div class="acc_content">
                            <div class="title">
                                <span>我的账户</span>
                            </div>
                            <div class="acc_inner">
                                <div class="acc_left">
                                    <ul>
                                        <li>可用余额</li>
                                        <li>
                                            <span class="recharge"><i>0</i> 元</span>
                                            <input type="button" value="立即充值" class="recharge_btn">
                                        </li>
                                        <li>
                                            <span class="withdraw">可提现金额：<i>0</i> 元</span>
                                            <span class="has_withdraw">已充值金额：<i>0</i> 元</span>
                                            <span class="frozen">冻结金额：<i>0</i> 元</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="acc_right">
                                    <ol>
                                        <li>账户设置</li>
                                        <li>
                                            <span class="phone">手机号：<i class="mobileNumber_update">186****3601</i></span>
                                           
                                        </li>
                                    </ol>
                                </div>
                            </div>
                            <p class="explain">说明:存款账户是够旅游的现金账户平台,您可以进行现金的充值、提现(为避免部分恶意套现行为，目前仅限退款金额可提现)或退款。</p>
                        </div>
                        <div class="trade">
                            <div class="title">
                                <i class="circle"></i>
                                <span>交易明细</span>
                            </div>
                            <ul class="state clearfix" id="myAccountState">
                                <li class="bor_btm"><a href="javascript:void(0)" id="" class="tab_a">消费<i>(0)</i></a></li>
                                <li><a href="javascript:void(0)" id="">充值<i>(0)</i></a></li>
                                <li><a href="javascript:void(0)" id="">退款<i>(0)</i></a></li>
                                <li><a href="javascript:void(0)" id="">提现<i>(0)</i></a></li>
                            </ul>
                            <div class="trade_inner">
                                <!--消费-->
                                <div class="trade_tab consumption tab_0">
                                    <ul class="clearfix">
                                        <!--加载订单内容-->
                                        <li>日期</li>
                                        <li>消费金额</li>
                                        <li>订单号</li>
                                        <li>产品名称</li>
                                    </ul>
                                    <div>
                                        <div class="all tab">
                                            <div class="all tab clearfix">
                                                <div class="no_inner">
												   
												    <p>您最近没有消费记录哦</p>
												</div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!--充值-->
                                <div class="trade_tab charge tab_1" style="display: none">
                                    <ul class="clearfix">
                                        <!--加载订单内容-->
                                        <li>日期</li>
                                        <li>充值金额</li>
                                    </ul>
                                    <div>
                                        <div class="all tab clearfix">
                                            <div class="all tab clearfix">
                                                <div class="no_inner">
												   
												    <p>您最近没有充值记录哦</p>
												</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--提现-->
                                <div class="trade_tab cash tab_2" style="display: none">
                                    <ul class="clearfix">
                                        <!--加载订单内容-->
                                        <li>日期</li>
                                        <li>退款金额</li>
                                        <li>订单号</li>
                                        <li>产品名称</li>
                                    </ul>
                                    <div>
                                        <div class="all tab clearfix">
                                            <div class="all tab clearfix">
                                                <div class="all tab clearfix">
	                                                <div class="no_inner">
													    
													    <p>您最近没有退款记录哦</p>
													</div>
	                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--退款-->
                                <div class="trade_tab refund tab_3" style="display: none">
                                    <ul class="clearfix">
                                        <!--加载订单内容-->
                                        <li>日期</li>
                                        <li>体现金额</li>
                                        <li>收款户名</li>
                                        <li>收款账号</li>
                                        <li>状态</li>
                                    </ul>
                                    <div>
                                        <div class="all tab clearfix">
											<div class="all tab clearfix">
	                                            <div class="no_inner">
												   
												    <p>您最近没有体现记录哦</p>
												</div>
	                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!--我的账户  结束-->
</body>
</html>