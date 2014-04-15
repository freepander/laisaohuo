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
	<title>请尽快付款</title>
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
	<div id="logo">
        <a href="index_index" target="_blank" id="home">
            <img src="fontassets/img/cart_logo_new.jpg">
        </a>
        <div id="user_header">
            <ul class="login_header">
				<li class="login_li"><a href="user_order?id=<s:property value="#session.user.id"/>" rel="nofollow">个人中心</a><em>|</em></li>
				<li class="user">欢迎您，<span style="color: #ED145B;"><s:property value="#session.user.username"/></span><span style="padding:0 5px;">[<a href="user_signOut" style="padding:0;">退出</a>]</span><em>|</em></li>
            </ul>
            <div class="clear"></div>
            <div class="header_logo_all">
                <div style="float:right;">
                	<img src="fontassets/img/cart_step1_v1.jpg">
                </div>
            </div>
        </div>
    </div>
	<div class="clear"></div>
</div><!--  header_container end  -->

<div id="container" style="width: auto;">
	<div id="cart" class="pay">
		<div class="pay_container">
        	<div class="cart_left">
        		<div class="cart_notice">
                	<h2>还差最后一步，请尽快付款！</h2>
               		<!-- <p class="pink" style="font-weight: 300; padding: 0">请尽快完成付款，否则团购结束或商品售光后您的订单将被取消。</p> -->
                </div>
                <div class="option" style=" border-top: 1px solid #dcdcdc;">
                	<div class="content">
                		<p>收货信息：<s:property value="order.addressee"/>&nbsp;&nbsp;-&nbsp;&nbsp;<s:property value="order.province"/>-<s:property value="order.city"/>-<s:property value="order.district"/> <s:property value="order.street"/>，<s:property value="order.telphone"/>，邮编：<s:property value="order.zipCode"/></p>
                		<p>
                			送货时间：<span>仅工作日送货</span>
                		</p>
                	</div>
                </div>
                <div class="option">
                	<div class="gateway_list" style="background: none; padding: 0; margin:0">
                		<ul>
                			<li cname="支付宝" style="margin-bottom: 0px">
                                <span class="left">支付方式：</span>
                                <label class="Alipay bg" for="check-Alipay"></label>
                            </li>
                        </ul>
                        <div class="clear"></div>
                        <p style="margin-top:20px;">
                        	应付金额：<span class="pink" style="font-size: 18px;font-family: Arial">¥<span style="font-size: 28px"><s:property value="order.nowPrice"/></span></span>
                        </p>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="option paytype" id="order-pay-form" style="border-bottom: 1px solid #dcdcdc;">
                	<form id="order-pay-form" method="post"  action="pay_alipayapi" target="_blank">
                        <input type="hidden" name="WIDseller_email" value="laisaohuo@163.com">
                        <input type="hidden" name="WIDout_trade_no" value="<s:property value="order.number"/>">
                        <input type="hidden" name="WIDsubject" value="来扫货商城购物单">
                        <input type="hidden" name="WIDprice" value="<s:property value="order.nowPrice"/>">
                        <input type="hidden" name="WIDbody" value="来扫货商城购物单">
                        <input type="hidden" name="WIDshow_url" value="http://www.laisaohuo.com">
                        <input type="hidden" name="WIDreceive_name" value="<s:property value="order.addressee"/>">
                        <input type="hidden" name="WIDreceive_address" value="<s:property value="order.province"/><s:property value="order.city"/><s:property value="order.district"/><s:property value="order.street"/>">
                        <input type="hidden" name="WIDreceive_zip" value="<s:property value="order.zipCode"/>">
                        <input type="hidden" name="WIDreceive_mobile" value="<s:property value="order.telphone"/>">
                        <input type="submit" class="btn_pink_big" value="立即付款">
                    </form>
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