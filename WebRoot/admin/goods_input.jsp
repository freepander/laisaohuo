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
		<form id="J_Form" class="form-horizontal" method="post" action="admin/goods_<s:if test="id!=0">update</s:if><s:if test="id==0">add</s:if>">
			<input type="hidden" name="id" value="<s:property value="goods.id"/>">
			<div class="control-group">
				<label class="control-label"><s>*</s>商品名称</label>
				<div class="controls">
					<input type="text" name="name" value="<s:property value="goods.name"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>商品条码</label>
				<div class="controls">
					<input type="text" name="numbers" value="<s:property value="goods.number"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>所属类别1</label>
				<div class="controls">
					<select name="bigCategoryId" id="bigCategoryId">
						<option value="<s:property value="goods.bigCategory.id"/>"><s:property value="goods.bigCategory.name"/></option>
					<s:iterator value="categoryList1">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>所属类别2</label>
				<div class="controls">
					<select name="categoryId" id="categoryId">
						
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>所属类别3</label>
				<div class="controls">
					<select name="twoCategoryId" id="twoCategoryId">
						
					</select>
				</div>
			</div>
			<script>
			$('#bigCategoryId').change(function(){
				
			})
			</script>
			<div class="control-group">
				<label class="control-label"><s>*</s>所属品牌</label>
				<div class="controls">
					<select name="brandId">
						<option value="1">请选择</option>
						<option value="<s:property value="goods.brand.id"/>"><s:property value="goods.brand.name"/></option>
					<s:iterator value="brandList">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label checkbox">商品功效</label>
				<div class="controls">
					<input value="" type="checkbox" name="effectId">商品功效
					<input value="" type="checkbox" name="effectId">商品功效2
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>商品价格</label>
				<div class="controls">
					<input type="text" name="price" value="<s:property value="goods.price"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>商品图片</label>
				<div class="controls">
					<input type="text" name="logo" id="logo" value="<s:property value="goods.logo"/>">
					<input type="button" value="点击选择图片" onclick="path.click()">
					<input type="file" name="file" style="display:none;" id="path" onchange="f_upload(this)">
				</div>
			</div>
            <div class="control-group">
				<label class="control-label"><s>*</s>产品规格：</label>
				<div class="controls control-row4">
					<select name="shopSpec">
						<option value="正常规格">正常规格</option>
						<option value="中样">中样</option>
						<option value="小样">小样</option>
					</select>
				</div>
            </div>
            <div class="control-group">
				<label class="control-label"><s>*</s>生产地:</label>
				<div class="controls">
					<input type="text" name="area" value="<s:property value="goods.area"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>保质期</label>
				<div class="controls">
					<input type="text" name="shelfLife" value="<s:property value="goods.shelfLife"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>使用人群</label>
				<div class="controls">
					<input type="text" name="crowd" value="<s:property value="goods.crowd"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>保存方法</label>
				<div class="controls">
					<input type="text" name="baoCunMethod" value="<s:property value="goods.baoCunMethod"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>刮码声明</label>
				<div class="controls">
					<input type="text" name="luanMa" value="<s:property value="goods.luanMa"/>">
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
			function f_upload(a){
				var timestamp=new Date().getTime()
		    	var s_name=$(a).val();
		    	var s_names=s_name.split("\\");
		    	var s_name2=s_names[s_names.length-1];
		    	$('#logo').val(timestamp+s_name2);
		    	$.ajaxFileUpload({
		    		url:'file_upload',
		    		secureuri:false,
		    		fileElementId:'path',
		    		data:{fileName:timestamp+s_name2,folderName:"goodslogo"},
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
