<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<!doctype html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<title>交易完成</title>
	<link rel="stylesheet" type="text/css" href="fontassets/css/jumei.css">
	<link rel="stylesheet" type="text/css" href="fontassets/css/jumei_cart_new.css">
	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
	<style>
	
    .btn_pink_big{float: left; margin-left: 0}
    .cart_notice p{font-weight: 700; line-height: 16px; padding: 10px 0 5px}
    .time_wrapper{
        font-weight: 400; line-height: 16px; margin: 15px 0 30px 0; height: 16px;width: 275px;overflow: hidden;
        padding: 5px 10px;
        background: #FFEDED;
        -webkit-border-radius: 20px;
        -moz-border-radius: 20px;
        border-radius: 20px;
    }
    #tomorrow_timer {
        font-size: 14px;
        color: #666;
    }
    #cart .pay_container .cart_notice h2 {
        font-size: 26px;
        font-family: "Microsoft YaHei","黑体";
        color: #333;
    }
    #cart .pay_container .cart_notice {
        background: #fffae6;
        padding: 30px 40px;
    }
    #cart .pay_container .cart_left {
        float: none;
        width: auto;
    }
    #cart .cart_left {
        width: 890px;
        padding: 0 35px;
        color: #000;
        background: #FFF;
        zoom: 1;
    }
    #cart .cart_left .gateway_list li{
        padding: 0;
    }
    #cart .pay_container .cart_left .option {
        width: auto;
        border: 1px solid #dcdcdc;
        border-bottom: 0;
        border-top: 1px dotted #dcdcdc;
        padding: 25px 0 25px 40px;
        font-size: 14px;
    }
    body{
        background: #EEEEEE;
    }
    #header_container{background: #fff}
	
	</style>
</head>
<body>
<div id="header_container">
	<%@include file="pianduan/header_noNav.jsp" %>
</div><!--  header_container end  -->

<div id="container" style="width: auto;">
	<div id="cart" class="pay">
		<div class="pay_container">
        	<div class="cart_left">
        		<div class="cart_notice">
                	<h2>成功下单！</h2>
               		<p class="pink" style="font-weight: 300; padding: 0">商城会尽快问您配送商品。</p>
                </div>
                <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
</div><!--  container end  -->
<div id="footer_container">
		<%@include file="pianduan/footer1.jsp" %>
</div><!--  footer_textarea  -->

</body>
</html>