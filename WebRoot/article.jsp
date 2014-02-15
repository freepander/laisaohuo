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
<link rel="stylesheet" href="fontassets/css/jumei_help_new.min.css">
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<style>
    .top_nav_hot{ position: absolute;left:81px;top:-4px;}

</style>
</head>
<body>
	<div id="header_container">
		<div id="logo">
			<a href="index_index" id="home" title="" style="background:url(fontassets/img//logo_new_v1.jpg) no-repeat top left;"> </a>
			<div id="user_header">
				<ul class="login_header">
					<s:if test="#session.gloablIsLogin==false">
					<li class="login_li"><a href="user_registerInput" rel="nofollow">注册</a><em>|</em></li>
                	<li class="login_li"><a href="user_loginInput" rel="nofollow">登录</a><em>|</em></li>
					</s:if>
					<s:if test="#session.gloablIsLogin==true">
					<li class="login_li"><a href="user_order?id=<s:property value="#session.user.id"/>" rel="nofollow">个人中心</a><em>|</em></li>
					<li class="user">欢迎您，<span style="color: #ED145B;"><s:property value="#session.user.username"/></span><span style="padding:0 5px;">[<a href="user_signOut" style="padding:0;">退出</a>]</span><em>|</em></li>
					</s:if>
				</ul>
				<div class="clear"></div>
				<div class="header_logo_all">
					<div id="cart_box"><a id="cart" href="carts_list" rel="nofollow"> <span class="num png"></span> </a>
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
				<div class="top_nav_item"><a href="index_index" class="nav_link">美妆商城</a></div>
				<div class="top_nav_item"><a href="group_groupList" class="nav_link">今日团购</a></div>
				<div class="top_nav_item  selected"><a href="articles_getArticle?id=1" class="nav_link">用户须知</a></div>
				<div class="top_search_wrap">
					<form action="#" method="get" id="mall_search_form" pos="top">
						<input name="search" type="text" class="top_search_input" id="mall_search_input" lang="zh">
						<button type="submit" id="btn_global_search">搜索</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div id="container">
		<div class="profile">
			<div class="nav">
				<s:iterator value="oneList">
				<h2><b></b><a href="javascript:void(0);"><s:property value="name"/></a></h2>
				<dl>
					<s:iterator value="list">
					<dt><b></b><s:property value="name"/></dt>
					<dd>
						<s:iterator value="list">
						<a href="articles_getArticle?id=<s:property value="id"/>"><s:property value="name" /></a>
						</s:iterator>
					</dd>
					</s:iterator>
				</dl>
				</s:iterator>
			</div>
			<div class="content">${article2.content }
			</div>
		</div>
	</div>
<script>
//导航列表
				$('.profile .nav dl dt').toggle(function(){
					$(this).next().show();
				},function(){
					$(this).next().hide();
				});
				</script>
</body>
</html>