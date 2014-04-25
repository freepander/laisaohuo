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
<title>修改商品功效</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>

</head>
<body>

<div class="row">
	<div class="span24">
		<form id="J_Form" class="form-horizontal" method="post" action="admin/goods_effectUpdate">
			<input type="hidden" name="id" value="<s:property value="goods.id"/>">
			<div class="control-group">
				<label class="control-label">商品名称</label>
				<div class="controls">
					<input type="text" name="name" value="<s:property value="goods.name"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">商品条码</label>
				<div class="controls">
					<input type="text" name="numbers" value="<s:property value="goods.numbers"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label checkbox">商品功效</label>
				<div class="controls" id="effectId">
				<s:iterator value="list">
					<input value="<s:property value="id"/>" type="checkbox" name="effectId"><s:property value="name"/>
				</s:iterator>
				</div>
			</div>
			<div class="row">
				<div class="form-actions offset3">
					<button type="submit" class="button button-primary">保存</button>
				</div>
			</div>
            <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
            <script type="text/javascript" src="assets/js/ajaxfileupload.js"></script>
		</form>
	</div>
</div>




</body>
</html>
