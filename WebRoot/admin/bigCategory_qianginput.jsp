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
<title>商品墙内容</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>
	
	
<div class="row">
	<div class="span24">
		<form id="J_Form" class="form-horizontal" method="post" action="admin/bigCategory_qiangupdate">
		<input type="hidden" value="<s:property value="id"/>" name="id">
		<div class="control-group">
			<label class="control-label"><s>*</s>商品1id</label>
			<div class="controls">
				<input type="text" name="goods1" value="<s:property value="bigCategory.goods1.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品1图片</label>
			<div class="controls">
				<input type="text" name="pic1" id="logo1" value="<s:property value="bigCategory.pic1"/>">
				<input type="button" value="点击选择图片" onclick="path1.click()">
				<input type="file" name="file" style="display:none;" id="path1" onchange="f_upload1(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品2id</label>
			<div class="controls">
				<input type="text" name="goods2" value="<s:property value="bigCategory.goods2.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品2图片</label>
			<div class="controls">
				<input type="text" name="pic2" id="logo2" value="<s:property value="bigCategory.pic2"/>">
				<input type="button" value="点击选择图片" onclick="path2.click()">
				<input type="file" name="file" style="display:none;" id="path2" onchange="f_upload2(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品3id</label>
			<div class="controls">
				<input type="text" name="goods3" value="<s:property value="bigCategory.goods3.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品3图片</label>
			<div class="controls">
				<input type="text" name="pic3" id="logo3" value="<s:property value="bigCategory.pic3"/>">
				<input type="button" value="点击选择图片" onclick="path3.click()">
				<input type="file" name="file" style="display:none;" id="path3" onchange="f_upload3(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品4id</label>
			<div class="controls">
				<input type="text" name="goods4" value="<s:property value="bigCategory.goods4.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品4图片</label>
			<div class="controls">
				<input type="text" name="pic4" id="logo4" value="<s:property value="bigCategory.pic4"/>">
				<input type="button" value="点击选择图片" onclick="path4.click()">
				<input type="file" name="file" style="display:none;" id="path4" onchange="f_upload4(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品5id</label>
			<div class="controls">
				<input type="text" name="goods5" value="<s:property value="bigCategory.goods5.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品5图片</label>
			<div class="controls">
				<input type="text" name="pic5" id="logo5" value="<s:property value="bigCategory.pic5"/>">
				<input type="button" value="点击选择图片" onclick="path5.click()">
				<input type="file" name="file" style="display:none;" id="path5" onchange="f_upload5(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品6id</label>
			<div class="controls">
				<input type="text" name="goods6" value="<s:property value="bigCategory.goods6.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品6图片</label>
			<div class="controls">
				<input type="text" name="pic6" id="logo6" value="<s:property value="bigCategory.pic6"/>">
				<input type="button" value="点击选择图片" onclick="path6.click()">
				<input type="file" name="file" style="display:none;" id="path6" onchange="f_upload6(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品7id</label>
			<div class="controls">
				<input type="text" name="goods7" value="<s:property value="bigCategory.goods7.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品7图片</label>
			<div class="controls">
				<input type="text" name="pic7" id="logo7" value="<s:property value="bigCategory.pic7"/>">
				<input type="button" value="点击选择图片" onclick="path7.click()">
				<input type="file" name="file" style="display:none;" id="path7" onchange="f_upload7(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品8id</label>
			<div class="controls">
				<input type="text" name="goods8" value="<s:property value="bigCategory.goods8.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品8图片</label>
			<div class="controls">
				<input type="text" name="pic8" id="logo8" value="<s:property value="bigCategory.pic8"/>">
				<input type="button" value="点击选择图片" onclick="path8.click()">
				<input type="file" name="file" style="display:none;" id="path8" onchange="f_upload8(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品9id</label>
			<div class="controls">
				<input type="text" name="goods9" value="<s:property value="bigCategory.goods9.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品9图片</label>
			<div class="controls">
				<input type="text" name="pic9" id="logo9" value="<s:property value="bigCategory.pic9"/>">
				<input type="button" value="点击选择图片" onclick="path9.click()">
				<input type="file" name="file" style="display:none;" id="path9" onchange="f_upload9(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品10id</label>
			<div class="controls">
				<input type="text" name="goods10" value="<s:property value="bigCategory.goods10.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品10图片</label>
			<div class="controls">
				<input type="text" name="pic10" id="logo10" value="<s:property value="bigCategory.pic10"/>">
				<input type="button" value="点击选择图片" onclick="path10.click()">
				<input type="file" name="file" style="display:none;" id="path10" onchange="f_upload10(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品11id</label>
			<div class="controls">
				<input type="text" name="goods11" value="<s:property value="bigCategory.goods11.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品11图片</label>
			<div class="controls">
				<input type="text" name="pic11" id="logo11" value="<s:property value="bigCategory.pic11"/>">
				<input type="button" value="点击选择图片" onclick="path11.click()">
				<input type="file" name="file" style="display:none;" id="path11" onchange="f_upload11(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品12id</label>
			<div class="controls">
				<input type="text" name="goods12" value="<s:property value="bigCategory.goods12.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>商品12图片</label>
			<div class="controls">
				<input type="text" name="pic12" id="logo12" value="<s:property value="bigCategory.pic12"/>">
				<input type="button" value="点击选择图片" onclick="path12.click()">
				<input type="file" name="file" style="display:none;" id="path12" onchange="f_upload12(this)">
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
	function f_upload1(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo1').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path1',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
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
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo2').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path2',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload3(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo3').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path3',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload4(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo4').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path4',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload5(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo5').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path5',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload6(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo6').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path6',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload7(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo7').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path7',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload8(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo8').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path8',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload9(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo9').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path9',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload10(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo10').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path10',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload11(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo11').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path11',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload12(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo12').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path12',
    		data:{fileName:timestamp+s_name2,folderName:"bigcategory"},
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