<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div id="logo">
    	<a href="index_index" id="home" title="" style="background:url(fontassets/img/logo_new_v1.jpg) no-repeat top left;"> </a>
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
				<div id="cart_box"><a id="cart" href="carts_list" rel="nofollow"> <span class="num png"></span> </a>
				</div>
				<!-- 
				<a href="articles_getArticle?id=1" rel="nofollow" class="top_link lightning" target="_blank"></a> 
				<a href="articles_getArticle?id=1" rel="nofollow" class="top_link gild" target="_blank"></a> 
				<a href="articles_getArticle?id=1" rel="nofollow" class="top_link credit" target="_blank"></a>
				 -->
			</div>
        </div>
    </div>
    <div class="clear"></div>