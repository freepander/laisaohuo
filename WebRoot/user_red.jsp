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
        <a href="user_collection" class="fav"><b></b>我的收藏</a>
        <a href="user_wish" class="onsale"><b></b>我的心愿单</a>
        <a href="user_vip" class="member"><b></b>我的会员等级</a>
        <a href="user_red" class="envelope selected"><b></b>我的红包</a>
        <h2><b></b>管理个人账户</h2>
        <a href="user_message" class="settings"><b></b>设置账户信息</a>
        <a href="user_password" class="password"><b></b>修改密码</a>
        <a href="user_address" class="addr"><b></b>管理收货地址</a>
        <h2><b></b>售后服务</h2>
        <a href="user_returnGoods" class="rmalist"><b></b>我的退货进度</a>
    </div>
    <div class="content">
    	<div class="filter">
    		<a class="curr" href="user_red">未使用</a>
    		<a href="user_red2">已使用</a>
    		<a href="user_red3">已过期</a>
    	</div>
    	<div class="null_info">
    		<h2>您目前没有未使用的红包</h2>
    	</div>
    </div>
</div>


<div class="clear"></div>
<div id="footer_container">
    <div id="footer_textarea">
        <div class="footer_top">
            <div class="footer_con" id="footer_links">
                <ul class="linksa png">
                    <li class="links">服务保障</li>
                    <li><a href="#" target="_blank" rel="nofollow">真品联盟</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">100%正品保证</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">30天无条件退货</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">7×24小时客服服务</a></li>
                    <li><span class="footer_zcemail">总裁邮箱</span><img src="http://p0.jmstatic.com/templates/jumei/images/ceo_v4.jpg" alt="" class="footer_zcemail_img"></li>
                </ul>

                <ul class="linksb png">
                    <li class="links">使用帮助</li>
                    <li><a href="#" target="_blank" rel="nofollow">新手指南</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">常见问题</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">帮助中心</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">用户协议</a></li>
                </ul>

                <ul class="linksc png">
                    <li class="links">支付方式</li>
                    <li><a href="#" target="_blank" rel="nofollow">货到付款</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">在线支付</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">余额支付</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">现金券支付</a></li>
                </ul>

                <ul class="linksd png">
                    <li class="links">配送方式</li>
                    <li><a href="#" target="_blank" rel="nofollow">买二包邮</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">配送说明</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">运费说明</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">验货签收</a></li>
                </ul>

                <ul class="linkse png">
                    <li class="links">售后服务</li>
                    <li><a href="#" target="_blank" rel="nofollow">正品承诺</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">售后咨询</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">退货政策</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">退货办理</a></li>
                </ul>

                <span class="links_er_box">
                    <ul class="linksf">
                        <li class="links">手机聚美</li>
                        <li><span class="link_bottom_pic"></span></li>
                        <li>下载移动客户端</li>
                    </ul>
                    <ul class="linksg">
                        <li class="links">聚美微信</li>
                        <li><span class="link_bottom_pic"></span></li>
                        <li>聚美官方微信</li>
                    </ul>
                </span>
            </div>
        </div>
        <div class="footer_center">
            <div class="footer_con" id="footer_link">
                <a href="#" target="_blank" rel="nofollow">关于聚美优品</a>  |
                <a href="#" target="_blank" rel="nofollow">获取更新</a>  |
                <a href="#" target="_blank" rel="nofollow">加入聚美</a>  |
                <a href="#" target="_blank" rel="nofollow">品牌合作专区</a>  |
                <a href="#" target="_blank" rel="nofollow">网站联盟</a>  |
                <a href="#" target="_blank" rel="nofollow">媒体报道</a>  |
                <a href="#" target="_blank" rel="nofollow">商务合作</a>  |
                <a href="#" target="_blank" rel="nofollow">友情链接</a>
            </div>
        </div>
        <div class="footer_con" id="footer_copyright">
            <p class="footer_copy_con">
                © 2014 哈尔滨明彦创新科技发展有限公司 保留一切权利。 <br>
                京公网安备 110105001608 | <a href="http://www.miibeian.gov.cn" target="_blank" rel="nofollow">京ICP证111033号</a> | 食品流通许可证 SP1101051110165515（1-1）
                | <a href="http://p2.jmstatic.com/activity/2013_chuangrui.jpeg" target="_blank" rel="nofollow">营业执照</a>
            </p>
        </div>
    </div>
</div>
</body>
</html>