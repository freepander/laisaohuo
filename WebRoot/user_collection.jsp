<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>化妆品商城</title>
	<link rel="stylesheet" href="fontassets/css/jumei.min.css">
    <link rel="stylesheet" type="text/css" href="fontassets/css/jumei_usercenter.min.css">
	<style type="text/css">
	.top_nav_hot{ position: absolute;left:81px;top:-4px;}
    
    .tishi a{font-size:16px;color:#fa1160;}
    .tishi{background-color:#fefded;height: 30px;text-align: center;font-weight: bold;line-height: 30px;width: 758px;border: 1px solid #f9f2a7;margin: 15px 0;}

	</style>
</head>
<body>
<div id="header_container">

    <div id="logo">
        <a href="index_index" id="home" title="" style="background:url(fontassets/img//logo_new_v1.jpg) no-repeat top left;"> </a>
        <div id="user_header">
            <ul class="login_header">
                <s:if test="#session.gloablIsLogin">
					<li class="user">欢迎您，<span style="color: #ED145B;"><s:property value="#session.user.username"/></span><span style="padding:0 5px;">[<a href="javascript:void(0);" style="padding:0;">退出</a>]</span><em>|</em></li>
				</s:if>
            </ul>
            <div class="clear"></div>
            <div class="header_logo_all">
                <div id="cart_box">
                	<a id="cart" href="carts_list" rel="nofollow"> <span class="num png"></span> </a>
                </div>
                <a href="articles_getArticle?id=1" rel="nofollow" class="top_link lightning" target="_blank"></a> 
					<a href="articles_getArticle?id=1" rel="nofollow" class="top_link gild" target="_blank"></a> 
					<a href="articles_getArticle?id=1" rel="nofollow" class="top_link credit" target="_blank"></a>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div id="top_menu">
       <div id="top_nav">
            <div id="top_nav">
				<div class="top_nav_item"><a href="index_index" class="nav_link">护理商城</a></div>
				<div class="top_nav_item"><a href="group_groupList" class="nav_link">买多成团</a></div>
				<div class="top_nav_item"><a href="articles_getArticle?id=1" class="nav_link">会员独享</a></div>
				<div class="top_nav_item"><a href="articles_getArticle?id=1" class="nav_link">用户须知</a></div>
				<div class="top_search_wrap">
					<form action="#" method="get" id="mall_search_form" pos="top">
						<input name="search" type="text" class="top_search_input" id="mall_search_input" lang="zh">
						<button type="submit" id="btn_global_search">搜索</button>
					</form>
				</div>
			</div>
        </div>
    </div>
</div><!-- end  heander_container  -->

<div class="profile">
    <div class="nav">
        <div class="notice">
            <img src="fontassets/img/avatar_small.png" alt="frepander">
            <p class="nickname"><s:property value="#session.gloablUsername"/></p>
            <p>1级会员</p>
            <p class="uid">用户ID:</p>
        </div>
        <h2><b></b>我的聚美优品</h2>
        <a href="user_order" class="list"><b></b>我的订单</a>
        <a href="user_collection" class="fav selected"><b></b>我的收藏</a>
        <a href="user_wish" class="onsale"><b></b>我的心愿单</a>
        <a href="user_vip" class="member"><b></b>我的会员等级</a>
        <a href="user_red" class="envelope"><b></b>我的红包</a>
        <h2><b></b>管理个人账户</h2>
        <a href="user_message" class="settings"><b></b>设置账户信息</a>
        <a href="user_password" class="password"><b></b>修改密码</a>
        <a href="user_address" class="addr"><b></b>管理收货地址</a>
        <h2><b></b>售后服务</h2>
        <a href="user_returnGoods" class="rmalist"><b></b>我的退货进度</a>
    </div>
    <div class="content">
    	<div class="filter">
            <a href="user_collection">我收藏的商品</a>
        </div>
        
        
        
        
        
        
        <div class="fav_product_container faved">
        	<div class="fav_product_head">
        		<span class="fph_tit">您共收藏了<label class="pink">1</label>个产品</span>
        	</div>
        	<div class="fav_product_list">
        		<ul>
        			<li class="fav_mall" style="border: 3px solid rgb(255, 255, 255);">
        				<a href="http://mall.jumei.com/product_6936.html?from=fav_product" class="img_wrap" target="_blank">
        					<img src="http://p1.jmstatic.com/product/000/006/6936_std/6936_200_200.jpg">
        				</a>
        				<p class="pro_tit">
        					<a href="http://mall.jumei.com/product_6936.html?from=fav_product" target="_blank">
        						<em style="color:red">8.1折/</em>Cetaphil丝塔芙洁面乳 237ml
        					</a>
        				</p>
        				<a class="pro_price" href="http://mall.jumei.com/product_6936.html?from=fav_product" target="_blank">
        					<strong><span>¥</span>79.9</strong>
        					<del>￥98.00</del>
        					<label>商城在售</label>
        				</a>
        				<p class="p_like" style="display: none;">
        					<a class="btnlike liked">
        						<span class="ilike_text">已收藏</span>
        						<span style="color: #999;">(<span class="ilike_num">116</span>)</span>
        					</a>
        					<a class="btnunlike" href="javascript:;" pid="6936">取消收藏</a>
        				</p>
        			</li>
        		</ul>
        		<div class="clear"></div>
        	</div>
        </div>
	
	
	
	
	
	
    </div>
</div>


<div class="clear"></div>
<div id="footer_container">
	<%@include file="pianduan/footer1.jsp" %>
</div>
</body>
</html>