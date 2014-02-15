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
<title>文章管理</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>


	<table cellspacing="0" class="table table-bordered">
      <thead>
        <tr><th colspan="5">
        <ul class="toolbar">
          <li><label class="checkbox"><input type="checkbox"><a href="#">全选</a></label></li>
          <li><button class="button button-danger"><i class="icon-white icon-trash"></i>批量删除</button></li>
          <li><a href="admin2/article_threeInput" class="button button-success">添加</a></li>
        </ul>
        </th></tr>
        <tr>
          <th width="15"></th>
          <th>#</th>
          <th>名称</th>
          <th>所在类别</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      	<s:iterator value="list">
        <tr>
          <td><input type="checkbox"></td>
          <td><s:property value="id"/></td>
          <td><s:property value="name"/></td>
          <td><s:property value="category.name"/></td>
          <td>
          	<a class="button button-dangerous" href="#" class="button">删除</a>
          	<a class="button" href="#" class="button">查看详情</a>
          </td>
        </tr>
        </s:iterator>
      </tbody>
    </table>
</body>
</html>