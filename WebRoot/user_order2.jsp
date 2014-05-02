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
	<%@include file="pianduan/user_header.jsp" %>
</div><!-- end  heander_container  -->

<div class="profile">
    <%@ include file="pianduan/user_nav.jsp" %>
    <div class="content">
        <div class="filter">
            <a href="user_order">有效订单</a>
            <a class="curr" href="user_order2">等待付款</a>
            <a href="user_order3">已付款</a>
            <a href="user_order4">交易完成</a>
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