<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>订单管理</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>
	<table cellspacing="0" class="table table-bordered">
      <thead>
        <tr><th colspan="6">
        <ul class="toolbar">
          <a href="admin/orders_list?method=1">未付款</a>
          <a href="admin/orders_list?method=2">已经付款-待发货</a>
          <a href="admin/orders_list?method=3">已经付款-待收货</a>
          <a href="admin/orders_list?method=4">支付宝-交易完成</a>
          <a href="admin/orders_list?method=5">货到付款-待发货</a>
          <a href="admin/orders_list?method=6">未付款-待收货</a>
          <a href="admin/orders_list?method=7">货到付款-交易完成</a>
          <a href="admin/orders_list?method=10">交易关闭</a>
        </ul>
        </th></tr>
        <tr>
          <th width="15"></th>
          <th>编号</th>
          <th>交易方式</th>
          <th>状态</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      	<s:iterator value="pageModel.objects">
        <tr>
          <td><input type="checkbox"></td>
          <td><s:property value="number"/></td>
          <td>
          	<s:if test="payMethod==1">支付宝</s:if>
          	<s:if test="payMethod==2">货到付款</s:if>
          </td>
          <td>
          	<s:if test="state==1">代付款</s:if>
          	<s:if test="state==2">待发货</s:if>
          	<s:if test="state==3">待收货</s:if>
          	<s:if test="state==4">交易完成</s:if>
          	<s:if test="state==5">待发货</s:if>
          	<s:if test="state==6">待收货</s:if>
          	<s:if test="state==7">交易完成</s:if>
          	<s:if test="state==10">交易关闭</s:if>
          </td>
          <td>
          	<s:if test="state==2"><a href="admin/orders_change?method=3&id=<s:property value="id"/>">发货</a></s:if>
          	<s:if test="state==5"><a href="admin/orders_change?method=6&id=<s:property value="id"/>">发货</a></s:if>
          	<a class="button" href="admin/orders_introduce?id=<s:property value="id"/>" class="button">查看详情</a>
          	<a class="button" href="admin/orders_close?id=<s:property value="id"/>" class="button">关闭订单</a>
          </td>
        </tr>
        </s:iterator>
      </tbody>
    </table>
    <div>
      <div class="pagination pull-right">
        <ul>
          <li<s:if test="pageNum==1"> class="disabled"</s:if>><a href="<s:property value="pageModel.url" /><s:property value="pageNum-1" />">« 上一页</a></li>
          <s:iterator value="pageModel.pageNumList" status="st" >
          <s:if test="#st.index+1==pageNum">
          	<li class="active"><a href="<s:property value="pageModel.url" /><s:property value="#st.index+1" />"><s:property value="#st.index+1" /></a></li>
          </s:if>
          <s:if test="#st.index+1!=pageNum">
          	<li><a href="<s:property value="pageModel.url" /><s:property value="#st.index+1" />"><s:property value="#st.index+1" /></a></li>
          </s:if>
          </s:iterator>
          <li <s:if test="pageNum==pageModel.countPage" >class="disabled"</s:if>><a href="<s:property value="pageModel.url" /><s:property value="pageNum+1" />">下一页 »</a></li>
        </ul>
      </div>
    </div>
</body>
</html>