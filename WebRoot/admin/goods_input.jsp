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
						<option value="0">请选择</option>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">所属类别3</label>
				<div class="controls">
					<select name="twoCategoryId" id="twoCategoryId">
						<option value="0">请选择</option>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">所属品牌</label>
				<div class="controls">
					<select name="brandId">
						<option value="0">请选择</option>
						<option value="<s:property value="goods.brand.id"/>"><s:property value="goods.brand.name"/></option>
					<s:iterator value="brandList">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">产品规格：</label>
				<div class="controls">
					<select name="spec">
						<option value="正常规格">正常规格</option>
						<option value="中样">中样</option>
						<option value="小样">小样</option>
					</select>
				</div>
            </div>
			<div class="control-group">
				<label class="control-label checkbox">商品功效</label>
				<div class="controls" id="effectId">
				
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">商品进价</label>
				<div class="controls">
					<input type="text" name="price" value="<s:property value="goods.price"/>">
				</div>
			</div>
			<!-- 
			<div class="control-group">
				<label class="control-label">商品原价</label>
				<div class="controls">
					<input type="text" name="originalPrice" value="1">
				</div>
			</div>
			 -->
			<div class="control-group">
				<label class="control-label">商品售价</label>
				<div class="controls">
					<input type="text" name="nowPrice" value="<s:property value="goods.nowPrice"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">商品容量</label>
				<div class="controls">
					<input type="text" name="capacity" value="<s:property value="goods.capacity"/>">
				</div>
			</div>
            <div class="control-group">
				<label class="control-label">销量:</label>
				<div class="controls">
					<input type="text" name="salesVolume2" value="<s:property value="goods.salesVolume2"/>">
				</div>
			</div>
            <div class="control-group">
				<label class="control-label">生产国家:</label>
				<div class="controls">
					<input type="text" name="area" value="<s:property value="goods.area"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">保质期</label>
				<div class="controls">
					<input type="text" name="shelfLife" value="<s:property value="goods.shelfLife"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">使用人群</label>
				<div class="controls">
					<input type="text" name="crowd" value="<s:property value="goods.crowd"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">保存方法</label>
				<div class="controls">
					<input type="text" name="baoCunMethod" value="<s:property value="goods.baoCunMethod"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">刮码声明</label>
				<div class="controls">
					<input type="text" name="luanMa" value="<s:property value="goods.luanMa"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">特别声明</label>
				<div class="controls">
					<input type="text" name="teBieShengMing" value="<s:property value="goods.teBieShengMing"/>">
				</div>
			</div>
			<!--  -->
			<hr>
			<div class="control-group">
				<label class="control-label">是否出现在首页</label>
				<div class="controls">
					<input type="radio" name="onIndex" value="true" checked>是
					<input type="radio" name="onIndex" value="false">否
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
