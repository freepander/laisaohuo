<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>


<!doctype html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<title>登录</title>
	<link rel="stylesheet" href="fontassets/css/jumei.min.css">
	<link rel="stylesheet" href="fontassets/css/jumei_sign.min.css">
</head>
<body>
<div id="header_container">
</div><!--  header_container end  -->
<s:if test='!showMessage==""'>
<script>
alert("<s:property value="showMessage"/>");
</script>
</s:if>
<div class="sign">
	<div class="loginWrap">
		<a class="logo" href="/"></a>
		<div class="loginPic">
			<div class="loginBord">
				<div class="loginTit">
					<span class="fl">登录</span>
					<span class="fr"><i class="grey">还没有账号？</i><a href="user_registerInput">30秒注册</a></span>
				</div>
				<form id="login-user-form" method="post" action="user_login">
					<div class="textbox_ui user">
						<input type="text" name="username" placeholder="用户名">
						<div class="invalid">
							<i></i>
							<div class="required">请输入用户名</div>
							<div class="custom"></div>
						</div>
					</div>
					<div class="textbox_ui pass">
						<input type="password" name="password" placeholder="密码">
						<div class="invalid">
							<i></i>
							<div class="required">请输入密码</div>
							<div class="custom"></div>
						</div>
					</div>
					<!-- 
					<div class="formLine clearfix">
						<a href="#" class="fr"> 忘记密码?</a>
						<label for="agree_userterm">
							<input type="checkbox" name="auto_login" id="agree_userterm" checked="">&nbsp;自动登录
						</label>
					</div>
					 -->
					<input class="loginbtn" id="login_submit" type="submit" name="commit" value="登 录">
					<div id="errorMsg"></div>
				</form>
			</div>
			<div class="shadow_l"></div>
			<div class="shadow_r"></div>
		</div>
	</div>
</div><!--  sign end  -->

<div class="clear"></div>
<div id="footer_container">
	<%@include file="pianduan/footer1.jsp" %>
</div>
</body>
</html>