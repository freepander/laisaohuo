<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>添加商品</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>

</head>
<body>

<div class="row">
	<div class="span24">
		<form id="J_Form" class="form-horizontal" method="post" action="admin/goods_bianji">
			<input type="hidden" name="id" value="<s:property value="goods.id"/>">
			<input type="hidden" name="method" value="<s:property value="method"/>"/>
			<div class="row">
				<div class="control-group span15">
					<textarea id="content" style="height:800px;width:960px;" name="content" class="input-large"><s:property value="news.content"/></textarea>
				</div>
			</div>
			<div class="row">
				<div class="form-actions offset3">
					<button type="submit" class="button button-primary">保存</button>
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<script>
UE.getEditor('content');
</script>




</body>
</html>
