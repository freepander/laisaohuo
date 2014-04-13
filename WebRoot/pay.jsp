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
                <s:if test="#session.gloablIsLogin==false">
				<li class="login_li"><a href="user_registerInput" rel="nofollow">注册</a><em>|</em></li>
               	<li class="login_li"><a href="user_loginInput" rel="nofollow">登录</a><em>|</em></li>
               	<li class="login_li"><em>|</em><a href="#" rel="nofollow">马上有礼</a></li>
				</s:if>
				<s:if test="#session.gloablIsLogin==true">
				<li class="login_li"><a href="user_order?id=<s:property value="#session.user.id"/>" rel="nofollow">个人中心</a><em>|</em></li>
				<li class="user">欢迎您，<span style="color: #ED145B;"><s:property value="#session.user.username"/></span><span style="padding:0 5px;">[<a href="user_signOut" style="padding:0;">退出</a>]</span><em>|</em></li>
				</s:if>
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
               		<p class="pink" style="font-weight: 300; padding: 0">请尽快完成付款，否则团购结束或商品售光后您的订单将被取消。</p>
                </div>
                <div class="option" style=" border-top: 1px solid #dcdcdc;">
                	<div class="content">
                		<p>收货信息：唐铭员&nbsp;&nbsp;-&nbsp;&nbsp;黑龙江省-哈尔滨市-南岗区 黑龙江大学，18644060531，邮编：150080</p>
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
                        	应付金额：<span class="pink" style="font-size: 18px;font-family: Arial">¥<span style="font-size: 28px">63.90</span></span>
                        </p>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="option paytype" style="border-bottom: 1px solid #dcdcdc;">
                	<form id="order-pay-form" method="post" action="http://pay.jumei.com/alipay/forward" target="_blank" sid="s14924066-13974122436358" address_id="29584327" is_balance_payment="0">
                        <input type="hidden" name="defaultbank" value="">
                        <input type="hidden" name="paymethod" value="bankPay">
                        <input type="hidden" name="out_trade_no" value="s14924066-13974122436358">
                        <input type="hidden" name="subject" value="聚美优品 - 购物车编号 s14924066-13974122436358">
                        <input type="hidden" name="total_fee" value="63.90">
                        <input type="hidden" name="quantity" value="1">
                        <input type="hidden" name="it_b_pay" value="1d">
                        <input type="hidden" name="sign_id_ext" value="14924066">
                        <input type="hidden" name="sign_name_ext" value="frepander">
                        <input type="hidden" name="timestamp" value="1397412243">
                        <input type="hidden" name="default_login" value="N">
                        <input type="hidden" name="sign" value="06f2c968304066af66059c9261d343e8">
                    </form>
                    <a onclick="$('#order-pay-form').submit();" class="btn_pink_big">立即付款</a>
                   	<div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
</div><!--  container end  -->

<div id="footer_container">
		<%@include file="pianduan/footer1.jsp" %>
</div><!--  footer_textarea  -->

<script>
//更改购买数量
 $('.decrease_num').click(function(){
 	if($(this).next().val()!=1){
 		$(this).next().val(parseInt($(this).next().val())-1)
 	}
 });
 $('.increase_num').click(function(){
 	if($(this).prev().val()!=10){
 		$(this).prev().val(parseInt($(this).prev().val())+1)
 	}
 });
</script>
</body>
</html>