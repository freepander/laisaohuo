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
<title>进货</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
</head>
<body>

<div class="container">
	<h1>进货</h1><hr>
	<form id="J_Form" class="form-horizontal" method="post" action="admin/purchaseShipment_p">
		<input type="hidden" id="goods_id" name="goodsId">
		<div class="row">
			<div class="span24 control-group">
					<label class="control-label">商品条码</label>
					<div class="controls">
						<input id="numbers" type="text" name="numbers" value="">
					</div>
			</div>
		</div>
		<div class="row">
			<div class="span24 control-group">
				<label class="control-label">商品信息</label>
				<div class="controls">
					<span id="goods_name"></span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span24 control-group">
				<label class="control-label">进货价格</label>
				<div class="controls">
					<input id="goods_price" type="text" name="price" value="">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span24 control-group">
				<label class="control-label">进货数量</label>
				<div class="controls">
					<input type="text" name="number" value="">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span24">
				<div class="form-actions span16 offset3">
					<button id="btnSearch" type="submit" class="button button-primary">提交</button>
				</div>
			</div>
	    </div>
	</form>
</div>
<script>
$('#numbers').change(function(){
	var numbers=$(this).val();
	$.ajax({
		type:"get",
		dataType:"json",
		url:"admin/purchaseShipment_getGoodsById",
		data:"numbers="+numbers,
		success:function(data){
			$('#goods_name').html(data.name);
			$('#goods_price').val(data.price);
			$('#goods_id').val(data.id);
		}
	})
	
})
//$('#numbers').change(function(){
//	var numbers=$(this).val();
//	console.log(numbers)
//	$.get('admin/purchaseShipment_getGoodsById',{numbers:numbers},function(data){
//		$(#goods_name).html(data.name)
//	})
//})
</script>



</body>
</html>
