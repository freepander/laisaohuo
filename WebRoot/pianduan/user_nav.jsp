<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div class="nav">
    <div class="notice">
        <img src="fontassets/img/avatar_small.png" alt="frepander">
        <p class="nickname"><s:property value="#session.gloablUsername"/></p>
        <p>1级会员</p>
        <p class="uid">用户ID:</p>
    </div>
    <h2><b></b>我的聚美优品</h2><!-- selected -->
    <a href="user_order" class="list"><b></b>我的订单</a>
    <a href="user_collection" class="fav"><b></b>我的收藏</a>
    <!-- <a href="user_wish" class="onsale"><b></b>我的心愿单</a> -->
    <!-- <a href="user_vip" class="member"><b></b>我的会员等级</a> -->
    <!-- <a href="user_red" class="envelope"><b></b>我的红包</a> -->
    <h2><b></b>管理个人账户</h2>
    <a href="user_message" class="settings"><b></b>设置账户信息</a>
    <a href="user_password" class="password"><b></b>修改密码</a>
    <a href="user_address" class="addr"><b></b>管理收货地址</a>
    <h2><b></b>售后服务</h2>
    <a href="user_returnGoods" class="rmalist"><b></b>我的退货进度</a>
</div>