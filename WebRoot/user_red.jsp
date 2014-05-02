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
	<%@include file="pianduan/footer1.jsp" %>
</div>
</body>
</html>