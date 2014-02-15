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
</head>
<body>
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<script>
$(document).ready(function(){
	window.location="index_index"
});
</script>
</body>
</html>