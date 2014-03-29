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
<title>第二级类别编辑</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>
	
<div class="row">
	<div class="span24">
		<form id="J_Form" class="form-horizontal" method="post" action="admin/category_<s:if test="id!=0">update</s:if><s:if test="id==0">add</s:if>">
		<input type="hidden" value="<s:property value="id"/>" name="id">
			<div class="control-group">
			<label class="control-label"><s>*</s>类别名称：</label>
			<div class="controls">
				<input type="text" name="name" value="<s:property value="category.name"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>所属类别</label>
			<div class="controls">
				<select name="parentCategoryId">
					<option value="<s:property value="category.parentCategory.id"/>"><s:property value="category.parentCategory.name"/></option>
				<s:iterator value="list">
					<option value="<s:property value="id"/>"><s:property value="name"/></option>
				</s:iterator>
				</select>
			</div>
		</div>
		<div class="form-actions span5 offset3">
			<button id="btnSearch" type="submit" class="button button-primary">提交</button>
		</div>
		</form>
	</div>
</div>
	
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>

	
</body>
</html>