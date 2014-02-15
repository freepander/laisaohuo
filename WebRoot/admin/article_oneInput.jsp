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
<title>添加文章一级类别</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>

</head>
<body>

<div class="row">
	<div class="span24">
		<form id="J_Form" class="form-horizontal" method="post" action="admin2/article_<s:if test="id!=0">oneUpdate</s:if><s:if test="id==0">oneAdd</s:if>">
			<input type="hidden" name="id" value="<s:property value="articleCategoryOne.id"/>">
			<div class="control-group">
				<label class="control-label"><s>*</s>文章标题</label>
				<div class="controls">
					<input type="text" name="name" value="<s:property value="articleCategoryOne.name"/>">
				</div>
			</div>
            <div class="form-actions span5 offset3">
            	<button id="btnSearch" type="submit" class="button button-primary">提交</button>
            </div>
            <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
            <script type="text/javascript" src="assets/js/ajaxfileupload.js"></script>
			<script type="text/javascript">
			    UE.getEditor('details');
			</script>
		</form>
	</div>
</div>




</body>
</html>
