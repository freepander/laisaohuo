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
	<title>注册</title>
	<link rel="stylesheet" href="fontassets/css/jumei.min.css">
	<link rel="stylesheet" href="fontassets/css/jumei_sign.min.css">
	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
</head>
<body>
<div id="header_container">
    <div id="logo">
		<a href="index_index" id="home" title="" style="background:url(fontassets/img/logo_new_v1.jpg) no-repeat top left;"></a>
		<div class="header_logo_box">
		    <!--
		    <a href="articles_getArticle?id=1" rel="nofollow" class="top_link lightning" target="_blank"></a> 
			<a href="articles_getArticle?id=1" rel="nofollow" class="top_link gild" target="_blank"></a> 
			<a href="articles_getArticle?id=1" rel="nofollow" class="top_link credit" target="_blank"></a> 
		     -->
		</div>
	</div>
</div><!--  header_container  -->
<s:if test='!showMessage==""'>
<script>
alert("<s:property value="showMessage"/>");
</script>
</s:if>
<div class="sign">
	<div class="sign_main">
		<div class="l_bar"></div>
		<div class="main">
			<div class="content_head">
				<h1>注册</h1>
			</div>
			<div class="content_body">
				<form id="signup-user-form" class="signup-user-form" method="post" action="user_register">
					<div class="email line">
						<label for="signup-email-address">邮箱：</label>
						<div class="textbox_ui">
							<input type="email" name="email" id="signup-email-address" class="ui-autocomplete-input">
							<div class="focus_text">邮箱可用于登陆和找回密码</div>
							<div class="invalid">
								<i></i>
								<div class="required">请输入邮箱</div>
								<div class="custom"></div>
								<div class="format">请输入有效的邮箱</div>
							</div>
							<i class="valid"></i>
							<i class="loading"></i>
						</div>
					</div>
					<div class="username line">
						<label for="signup-username">用户名：</label>
						<div class="textbox_ui">
							<input type="text" name="username" id="signup-username">
							<div class="focus_text">中文或英文，4-16个字符</div>
							<div class="invalid">
								<i></i>
								<div class="required">请输入用户名</div>
								<div class="custom"></div>
								<div class="format">用户名应为4-16个中英文字符</div>
							</div>
							<i class="valid"></i>
							<i class="loading"></i>
						</div>
					</div>
					<div class="password line">
						<label for="signup-password">密码：</label>
						<div class="textbox_ui">
							<input type="password" name="password" id="signup-password">
							<div class="focus_text">
								<p class="default">6-16个字符，建议使用字母加数字或符号组合</p>
								<p class="safe">安全程度：<span>弱</span><span>中</span><span>强</span></p>
							</div>
							<i class="valid"></i>
							<div class="invalid">
								<i></i>
								<div class="required">请输入确认密码</div>
								<div class="format">密码长度为6-16个字符</div>
							</div>
						</div>
					</div>
					<div class="password_confir line">
						<label for="signup-password-confirm">重复密码：</label>
						<div class="textbox_ui">
							<input type="password" name="password2" id="signup-password-confirm">
							<div class="focus_text">请再次输入密码</div>
							<i class="valid"></i>
							<div class="invalid">
								<i></i>
								<div class="required">请再次输入密码</div>
								<div class="custom">两次密码输入不一致</div>
							</div>
						</div>
					</div>
					<div class="act">
						<input type="submit" value="同意协议并注册" name="commit" id="signup-submit">
						<p>&nbsp;</p>
						<!-- <a href="/help/user_terms" rel="nofollow" target="_blank">《用户协议》</a> -->
					</div>
				</form>
			</div>
		</div>
		<script>
		$('#signup-user-form').submit(function(){
			if($('#signup-email-address').val()==''){alert('邮箱不能为空！');return false;}
			if($('#signup-username').val()==''){alert('用户名不能为空！');return false;}
			if($('#signup-password').val()==''){alert('密码不能为空');return false;}
			if($('#signup-password').val()!=$('#signup-password-confirm').val()){alert('两次密码不一致！');return false;}
			if($('#signup-username').val().length<4){alert('用户名不能小于4位')return false;}
			if($('#signup-password').val().length<6){alert('密码不能小于4位')return false;}
		})
		</script>
		<div class="sidebar">
			<div class="siderbar_head">已有账号？</div>
			<a class="sign_butn" href="user_loginInput" rel="nofollow">立即登录</a>
		</div>
		<div class="r_bar"></div>
	</div>
</div><!-- sign end -->

<div class="clear"></div>
<div id="footer_container" style="padding-top:5px;background: none;border-top: none;">
    <div id="footer_textarea">        
        <div class="footer_con" id="footer_copyright">
            <p class="footer_copy_con">
                © 2014 哈尔滨明彦创新科技发展有限公司 保留一切权利。 <br> 吉ICP备14001040号-1
            </p>
        </div>
    </div>
</div><!--  footer_container  end -->


</body>
</html>