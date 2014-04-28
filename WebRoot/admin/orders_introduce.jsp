<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>订单详情</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	订单编号-- <s:property value="order.number"/><br>
	收货人--<s:property value="order.addressee" /><br>
	收货地址--<s:property value="order.province" /><s:property value="order.city" /><s:property value="order.district" /><s:property value="order.street" /><br>
	邮编-- <s:property value="order.zipCode" /><br>
	电话--<s:property value="order.telphone" /><br>
	送货时间--<s:property value="order.deliverytime" /><br>
	订单原价--<s:property value="order.price" /><br>
	实际价格--<s:property value="order.nowPrice" /><br>
	运费--<s:property value="order.freight" /><br>
	买家--<s:property value="order.shopUser.username" />/<s:property value="order.shopUser.email" /><br>
	赠送积分--<s:property value="order.integral" /><br>
	快递--<s:property value="order.expressName" /><br>
	快递单号--<s:property value="order.expressNumber" /><br>
	下单时间--<s:property value="order.createDate" /><br>
	支付方式--<s:if test="order.payMethod==1">支付宝</s:if><s:if test="order.payMethod==2">货到付款</s:if><br>
	</div>
	
	
</body>
</html>