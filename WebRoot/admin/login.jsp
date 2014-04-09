<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>来扫货商城后台管理系统-登录</title>
<link rel="stylesheet" href="back/assets/css/bui-min.css" type="text/css"></link>
<link rel="stylesheet" href="back/assets/css/dpl-min.css" type="text/css"></link></head>
<body>
<div class="container" style="margin-top: 100px;">
	<form action="login/admin" method="post" style="text-align: center;">
    	<legend>来扫货商城后台管理系统</legend>
    	<div class="control-group">
    		<label class="control-label">用户名:</label>
    		<div class="controls">
    			<input type="text" name="username" />
    		</div>
    	</div>
    	<div class="control-group">
    		<label class="control-label">密码:</label>
    		<div class="controls">
    			<input type="password" name="password" />
    		</div>
    	</div>
    	<div class="row actions-bar">
    		<div class="form-actions span13 offset3">
    			<button type="submit" class="button button-primary">登录</button>
    		</div>
    	</div>
    </form>
</div>
</body>
</html>