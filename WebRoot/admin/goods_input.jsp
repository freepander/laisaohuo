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
				<label class="control-label"><s>*</s>商品编号</label>
				<div class="controls">
					<input type="text" name="number" value="<s:property value="goods.number"/>">
				</div>
			</div>
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
				<label class="control-label"><s>*</s>所属类别</label>
				<div class="controls">
					<select name="categoryId">
						<option value="1">请选择</option>
						<option value="<s:property value="goods.category.id"/>"><s:property value="goods.category.name"/></option>
					<s:iterator value="categoryList">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>所属功效 </label>
				<div class="controls">
					<select name="effectId">
						<option value="1">请选择</option>
						<option value="<s:property value="goods.effect.id"/>"><s:property value="goods.effect.name"/></option>
					<s:iterator value="effectList">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>商品价格</label>
				<div class="controls">
					<input type="text" name="nowPrice" value="<s:property value="goods.nowPrice"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>商品原价</label>
				<div class="controls">
					<input type="text" name="price" value="<s:property value="goods.price"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>赠送积分</label>
				<div class="controls">
					<input type="text" name="integral" value="<s:property value="goods.integral"/>">
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
				<label class="control-label"><s>*</s>商品重量</label>
				<div class="controls">
					<input type="text" name="weight" value="<s:property value="goods.weight"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>商品库存</label>
				<div class="controls">
					<input type="text" name="stock" value="<s:property value="goods.stock"/>">
				</div>
			</div>
            <div class="control-group">
				<label class="control-label"><s>*</s>产品规格：</label>
				<div class="controls control-row4">
				<textarea name="specifications" class="input-large"><s:property value="goods.specifications"/></textarea>
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
				<label class="control-label"><s>*</s>产品包装</label>
				<div class="controls">
					<input type="text" name="packaging" value="<s:property value="goods.packaging"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>商品描述：</label>
				<div class="controls control-row4">
					<textarea name="description" class="input-large"><s:property value="goods.description"/></textarea>
				</div>
            </div>
            <hr>
            <div style="clear:both;"></div>
            <div class="control-group">
				<label class="control-label"><s>*</s>商品详情：</label><br>
					<textarea name="details" id="details" class="input-large" style="height: 500px;"><s:property value="goods.details"/></textarea>
            </div>
            <div style="clear:both;"></div>
            <div class="control-group">
				<label class="control-label"><s>*</s>使用方法：</label><br>
					<textarea name="usages" id="usages" class="input-large" style="height: 500px;"><s:property value="goods.usages"/></textarea>
            </div>
            <div style="clear:both;"></div>
            <div class="control-group">
				<label class="control-label"><s>*</s>商品实拍：</label><br>
					<textarea name="photos" id="photos" class="input-large" style="height: 500px;"><s:property value="goods.photos"/></textarea>
            </div>
            <div class="form-actions span5 offset3">
            	<button id="btnSearch" type="submit" class="button button-primary">提交</button>
            </div>
            <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
            <script type="text/javascript" src="assets/js/ajaxfileupload.js"></script>
			<script type="text/javascript">
			    UE.getEditor('details');
			    UE.getEditor('usages');
			    UE.getEditor('photos');
			    
			</script>
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
