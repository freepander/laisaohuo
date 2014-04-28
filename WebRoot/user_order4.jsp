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
        <a href="user_order" class="list selected"><b></b>我的订单</a>
        <a href="user_collection" class="fav"><b></b>我的收藏</a>
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
            <a href="user_order">有效订单</a>
            <a href="user_order2">等待付款</a>
            <a href="user_order3">已付款</a>
            <a class="curr" href="user_order4">交易完成</a>
            <a href="user_order5">无效</a>
        </div>
        <table id="order-list" class="order_table">
        <tbody>
            <tr class="order_list_title">
                <th width="195">订单信息</th>
                <th width="80">订购商品</th>
                <th width="40">件数</th>
                <th width="70">单价</th>
                <th width="70">商品操作</th>
                <th width="90">订单金额</th>
                <th>订单状态</th>
                <th width="90">订单操作</th>
            </tr>
            <s:iterator value="list">
            <tr class="order_list_title">
                <th width="195"><s:property value="number"/></th>
                <th width="80">
                	<s:iterator value="itemList">
                	<s:property value="goods.name"/><br>
                	</s:iterator>   
                </th>
                <th width="40">
                	<s:iterator value="itemList">
                	<s:property value="count"/><br>
                	</s:iterator> 
                </th>
                <th width="70">
                	<s:iterator value="itemList">
                	<s:property value="goods.nowPrice"/><br>
                	</s:iterator> 
                </th>
                <th width="90"><s:property value="nowPrice"/></th>
                <th>
                	<s:if test="state==1">待付款</s:if>
		          	<s:if test="state==2">待发货</s:if>
		          	<s:if test="state==3">待收货</s:if>
		          	<s:if test="state==4">交易完成</s:if>
		          	<s:if test="state==5">待发货</s:if>
		          	<s:if test="state==6">待收货</s:if>
		          	<s:if test="state==7">交易完成</s:if>
		          	<s:if test="state==10">交易关闭</s:if>
                </th>
            </tr>
            </s:iterator>
            <!-- 
            <tr class="alt">
                <td rowspan="2" class="order_info_td"><p>订单编号：91201936</p><p>下单时间：2014-01-18 13:08</p></td>
                <td class="item_title"><a href="#" target="_blank"><img src="http://p3.jmstatic.com/product/000/000/323_std/323_60_60.jpg" alt="婵真银杏天然泡沫洁面霜 200g"></a></td>
                <td>1 </td>
                <td>¥49.90</td>
                <td></td>
                <td rowspan="2"><p class="bold">¥89.80 </p><p><span class="grey">(免运费)</span></p></td>
                <td rowspan="2"><span class="status_red">等待付款</span><div>在线支付</div></td>
                <td rowspan="2"><p><a href="#" class="btn_mid_pink">点击付款</a></p><p><a href="/i/order/cancel/?order_id=91201936" class="order-cancel">取消</a></p></td>
            </tr>
            <tr class="alt">
                <td class="item_title"><a href="#" target="_blank" title="倩碧双头睫毛膏唇彩"><img src="http://p3.jmstatic.com/product/000/358/358873_std/358873_60_60.jpg" alt="倩碧双头睫毛膏唇彩"></a></td>
                <td>1 </td>
                <td>¥39.90</td>
                <td></td>
            </tr>
             -->
        </tbody>
        </table>
    </div>
</div>


<div class="clear"></div>
<div id="footer_container">
	<%@include file="pianduan/footer1.jsp" %>
</div>
</body>
</html>