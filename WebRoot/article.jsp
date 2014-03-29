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
<link rel="stylesheet" href="fontassets/css/jumei_help_new.min.css">
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<style>
    .top_nav_hot{ position: absolute;left:81px;top:-4px;}

</style>
</head>
<body>
	
	<div id="container">
		<div class="profile">
			<div class="nav">
				<s:iterator value="oneList">
				<h2><b></b><a href="javascript:void(0);"><s:property value="name"/></a></h2>
				<dl>
					<s:iterator value="list">
					<dt><b></b><s:property value="name"/></dt>
					<dd>
						<s:iterator value="list">
						<a href="articles_getArticle?id=<s:property value="id"/>"><s:property value="name" /></a>
						</s:iterator>
					</dd>
					</s:iterator>
				</dl>
				</s:iterator>
			</div>
			<div class="content">${article2.content }
			</div>
		</div>
	</div>
<script>
//导航列表
				$('.profile .nav dl dt').toggle(function(){
					$(this).next().show();
				},function(){
					$(this).next().hide();
				});
				</script>
</body>
</html>