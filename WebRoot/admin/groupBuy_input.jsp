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
		<form id="J_Form" class="form-horizontal" method="post" action="admin/groupBuy_add">
			<input type="hidden" name="goodsId" id="goodsId">
			<input type="hidden" name="id" id="<s:property value="id"/>">
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
			<div class="control-group">
				<label class="control-label"><s>*</s>团购名称</label>
				<div class="controls">
					<input type="text" name="name" value="">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>团购价格</label>
				<div class="controls">
					<input type="text" name="price" value="">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>开始时间</label>
				<div class="controls">
					<input type="text" name="startDate" value="" class="calendar">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>结束时间</label>
				<div class="controls">
					<input type="text" name="endDate" value="" class="calendar">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>简单描述</label>
				<div class="controls">
					<input type="text" name="description" value="" style="width: 400px;">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>缩略图</label>
				<div class="controls">
					<input type="text" name="logo" id="logo">
					<input type="button" value="点击选择图片" onclick="path.click()">
					<input type="file" name="file" style="display:none;" id="path" onchange="f_upload(this)">
				</div>
				<div>320px*200px</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>大图（带二维码）</label>
				<div class="controls">
					<input type="text" name="erweima" id="logo2">
					<input type="button" value="点击选择图片" onclick="path2.click()">
					<input type="file" name="file2" style="display:none;" id="path2" onchange="f_upload2(this)">
				</div>
				<div>700px*400px</div>
			</div>
            <div class="form-actions span5 offset3">
            	<button id="btnSearch" type="submit" class="button button-primary">提交</button>
            </div>
            <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
            <script type="text/javascript" src="assets/js/bui-min.js"></script>
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
		    		data:{fileName:timestamp+"."+s_name2,folderName:"groupbuy"},
		    		beforeSend:function(){},
		    		success: function(){
		    			alert("上传成功"); 
		    		}
		    	});
		    	return false;
		    }
			function f_upload2(a){
				var timestamp=new Date().getTime()
		    	var s_name=$(a).val();
		    	var s_names=s_name.split(".");
		    	var s_name2=s_names[s_names.length-1];
		    	$('#logo2').val(timestamp+"."+s_name2);
		    	$.ajaxFileUpload({
		    		url:'file_upload',
		    		secureuri:false,
		    		fileElementId:'path2',
		    		data:{fileName:timestamp+"."+s_name2,folderName:"erweima"},
		    		beforeSend:function(){},
		    		success: function(){
		    			alert("上传成功"); 
		    		}
		    	});
		    	return false;
		    }
			</script>
			<script type="text/javascript">
          var Calendar = BUI.Calendar
          var datepicker = new Calendar.DatePicker({
            trigger:'.calendar',
            autoRender : true
          });
    </script>
    
		</form>
	</div>
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
    			$('#goodsId').val(data.id);
    		}
    	})
    	
    })
    </script>


</body>
</html>
