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
<title>品牌编辑</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>
	
<div class="row">
	<div class="span24">
		<form id="J_Form" class="form-horizontal" method="post" action="admin/brand_<s:if test="id!=0">update</s:if><s:if test="id==0">add</s:if>">
		<input type="hidden" value="<s:property value="id"/>" name="id">
			<div class="control-group">
			<label class="control-label"><s>*</s>品牌名称：</label>
			<div class="controls">
				<input type="text" name="name" value="<s:property value="brand.name"/>">
			</div>
		</div>
		<div class="control-group">
				<label class="control-label">品牌图片</label>
				<div class="controls">
					<input type="text" name="logo" id="logo" value="<s:property value="brand.logo"/>">
					<input type="button" value="点击选择图片" onclick="path.click()">
					<input type="file" name="file" style="display:none;" id="path" onchange="f_upload(this)">
				</div>
				<div>
					170px*80px
				</div>
			</div>
		<div class="control-group">
			<label class="control-label">是否出现在首页</label>
			<div class="controls">
				<input type="radio" name="visible" value="true" checked>是
				<input type="radio" name="visible" value="false">否
			</div>
		</div>
		<div class="form-actions span5 offset3">
			<button id="btnSearch" type="submit" class="button button-primary">提交</button>
		</div>
		</form>
	</div>
</div>
	
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="assets/js/ajaxfileupload.js"></script>
<script>
			function f_upload(a){
				var timestamp=new Date().getTime()
		    	var s_name=$(a).val();
		    	var s_names=s_name.split(".");
		    	var s_name2=s_names[s_names.length-1];
		    	$('#logo').val(timestamp+"."+s_name2);
		    	$.ajaxFileUpload({
		    		url:'file_upload',
		    		secureuri:false,
		    		fileElementId:'path',
		    		data:{fileName:timestamp+"."+s_name2,folderName:"brand"},
		    		beforeSend:function(){},
		    		success: function(){
		    			alert("上传成功"); 
		    		}
		    	});
		    	return false;
		    }
			</script>
</body>
</html>