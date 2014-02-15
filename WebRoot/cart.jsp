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
	<title>购物车</title>
	<link rel="stylesheet" type="text/css" href="fontassets/css/jumei.css">
	<link rel="stylesheet" type="text/css" href="fontassets/css/jumei_cart_new.css">
	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
</head>
<body>
<div id="header_container">
    <div id="logo">
        <a href="index_index" target="_blank" id="home">
            <img src="fontassets/img/cart_logo_new.jpg">
        </a>
        <div id="user_header">
            <ul class="login_header">
                <s:if test="!#session.gloablIsLogin">
					<li class="login_li"><a href="user_registerInput" rel="nofollow">注册</a><em>|</em></li>
                	<li class="login_li"><a href="user_loginInput" rel="nofollow">登录</a><em>|</em></li>
					</s:if>
					<s:if test="#session.gloablIsLogin">
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
	<div id="cart">
		<s:if test="#session.cart.list.size<=0||null==#session.cart">
		<div class="cart_empty">
            <img src="fontassets/img/empty_icon.jpg" alt="" class="empty_icon">
            <div class="empty_right">
                <p style="margin-bottom: 15px;font-size: 28px;color: #C9C9C9">您的购物车中没有商品，请先去挑选心爱的商品吧！</p>
                <p class="grey">您可以<a href="index_index"><img src="fontassets/img/btn_go_home.jpg"></a>挑选喜欢的商品 </div>
            <div class="clear"></div>
        </div>
		</s:if>
        <div class="cart_products">
            <table width="100%" id="cart_products">
                <tbody>
                <tr>
                    <th colspan="2">产品</th>
                    <th>数量</th>
                    <th>聚美价</th>
                    <th>小计</th>
                    <th class="text_left">操作</th>
                </tr>
                <s:iterator value="#session.cart.list">
                <tr id="" class="cart_item ">
                	<td class="product_box">
                		<div class="pic">
                			<a href="good_goods?id=<s:property value="goods.id"/>" target="_blank">
                				<img style="width:70px; height:60px;" src="upload/goodslogo/<s:property value="goods.logo"/>" alt="<s:property value="goods.name"/>">
                			</a>
                		</div>
                	</td>
                	<td class="name">
                		<div class="item_name" style="width:259px;position: relative;">
                			<a href="good_goods?id=<s:property value="goods.id"/>" target="_blank">
                				<s:property value="goods.name"/><span class="item_note"></span>
                			</a>
                		</div>
                	</td>
                	<td class="number_box" style="*padding-right: 0; *padding-left: 5px">
                		<div style="*width: 160px">
                			<div class="buy_number_input ">
                				<!--<span class="decrease_num">-</span>-->
                				<input class="item-buy-quantity-input" value="<s:property value="count"/>">
                				<!--<span class="increase_num">+</span>-->
                			</div>
                			
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
                			<p class="pink" style="margin-top:10px;"></p>
                		</div>
                	</td>
                	<td class="price_box">
                		<p>
                			<span><s:property value="price"/></span>
                		</p>
                	</td>
                	<td class="count_price_box">
                		¥<span id="item-buy-total-TM11071400026_"><s:property value="price"/></span><br>
                		<span class="grey">省¥<b class="saved_price"><s:property value="goods.nowPrice*count-price"/></b></span>
                	</td>
                	<td class="action_box">
                		<p><a class="item-buy-delete" href="javascript:void(0)">删除</a></p>
                	</td>
                </tr>
                </s:iterator>
                <tr>
                	<td colspan="6" class="count">
                        <div id="cart_amount_line">
                            <a class="btn_grey_small" href="index_index">继续购物</a>
                            <a class="clean_cart" href="carts_removeAll" onclick="if(confirm('您确定要清空购物车吗？'))window.location.href='carts_removeAll';return false;">清空购物车</a>
                            <a id="go_to_order" class="btn_pink_big" href="order_in">去结算</a>
                            <div class="price_sum">
                            	应付总额<span class="blue">（不含运费）</span>：
                                <span class="total_count">¥<span id="item-buy-total-t"><s:property value="#session.cart.price"/></span></span>
                            </div>
                        </div>
                    </td>
                </tr>  
                </tbody>
            </table>
        </div>
    </div>
</div><!--  container end  -->

<div id="footer_textarea">
    <div class="footer_con" id="footer_copyright">
        <p class="footer_copy_con">
                © 2014 哈尔滨明彦创新科技发展有限公司 保留一切权利。 <br>
                京公网安备 110105001608 | <a href="http://www.miibeian.gov.cn" target="_blank" rel="nofollow">京ICP证111033号</a> | 食品流通许可证 SP1101051110165515（1-1）
                | <a href="http://p2.jmstatic.com/activity/2013_chuangrui.jpeg" target="_blank" rel="nofollow">营业执照</a>
            </p>
    </div>
</div><!--  footer_textarea  -->


</body>
</html>