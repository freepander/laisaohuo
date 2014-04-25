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
<title>修改商品类别与品牌</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>

</head>
<body>

<div class="row">
	<div class="span24">
		<form id="J_Form" class="form-horizontal" method="post" action="admin/goods_categoryUpdate">
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
				<label class="control-label">商品图片</label>
				<div class="controls">
					<input type="text" name="logo" id="logo" value="<s:property value="goods.logo"/>">
					<input type="button" value="点击选择图片" onclick="path.click()">
					<input type="file" name="file" style="display:none;" id="path" onchange="f_upload(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">所属类别1</label>
				<div class="controls">
					<select name="bigCategoryId" id="bigCategoryId">
						<option value="<s:property value="goods.bigCategory.id"/>"><s:property value="goods.bigCategory.name"/></option>
					<s:iterator value="bigCategoryList">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">所属类别2</label>
				<div class="controls">
					<select name="categoryId" id="categoryId">
						<option value="<s:property value="goods.category.id"/>"><s:property value="goods.category.name"/></option>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">所属类别3</label>
				<div class="controls">
					<select name="twoCategoryId" id="twoCategoryId">
						<option value="<s:property value="goods.twoCategory.id"/>"><s:property value="goods.twoCategory.name"/></option>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">所属品牌</label>
				<div class="controls">
					<select name="brandId">
						<option value="<s:property value="goods.brand.id"/>"><s:property value="goods.brand.name"/></option>
					<s:iterator value="brandList">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			
			<div class="row">
				<div class="form-actions offset3">
					<button type="submit" class="button button-primary">保存</button>
				</div>
			</div>
            <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
            <script type="text/javascript" src="assets/js/ajaxfileupload.js"></script>
            <script>
            $('#bigCategoryId').change(function(){
            	var id=$(this).val();
            	$.get("admin/category_getCategoryList",{id:id},function(data){
            		$('#categoryId').html(data)
            	})
            	$.get("admin/effect_getListByBigCategory",{id:id},function(data){
            		$('#effectId').html(data)
            	})
            })
            $('#categoryId').change(function(){
            	var id=$(this).val();
            	$.get("admin/category_getTwoCategoryList",{id:id},function(data){
            		$('#twoCategoryId').html(data)
            	})
            })
            </script>
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
		    		data:{fileName:timestamp+"."+s_name2,folderName:"goodslogo"},
		    		beforeSend:function(){},
		    		success: function(){
		    			alert("上传成功"); 
		    		}
		    	});
		    	return false;
		    }
			</script>
		</form>
	</div>
</div>




</body>
</html>
