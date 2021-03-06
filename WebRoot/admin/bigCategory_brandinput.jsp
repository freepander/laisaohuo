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
<title>品牌墙内容</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>
	
	
<div class="row">
	<div class="span24">
		<form id="J_Form" class="form-horizontal" method="post" action="admin/bigCategory_brandupdate">
		<input type="hidden" value="<s:property value="id"/>" name="id">
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌1id</label>
			<div class="controls">
				<input type="text" name="brand1" value="<s:property value="bigCategory.brand1.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌1图片</label>
			<div class="controls">
				<input type="text" name="brandpic1" id="logo1" value="<s:property value="bigCategory.brandpic1"/>">
				<input type="button" value="点击选择图片" onclick="path1.click()">
				<input type="file" name="file" style="display:none;" id="path1" onchange="f_upload1(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌2id</label>
			<div class="controls">
				<input type="text" name="brand2" value="<s:property value="bigCategory.brand2.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌2图片</label>
			<div class="controls">
				<input type="text" name="brandpic2" id="logo2" value="<s:property value="bigCategory.brandpic2"/>">
				<input type="button" value="点击选择图片" onclick="path2.click()">
				<input type="file" name="file" style="display:none;" id="path2" onchange="f_upload2(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌3id</label>
			<div class="controls">
				<input type="text" name="brand3" value="<s:property value="bigCategory.brand3.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌3图片</label>
			<div class="controls">
				<input type="text" name="brandpic3" id="logo3" value="<s:property value="bigCategory.brandpic3"/>">
				<input type="button" value="点击选择图片" onclick="path3.click()">
				<input type="file" name="file" style="display:none;" id="path3" onchange="f_upload3(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌4id</label>
			<div class="controls">
				<input type="text" name="brand4" value="<s:property value="bigCategory.brand4.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌4图片</label>
			<div class="controls">
				<input type="text" name="brandpic4" id="logo4" value="<s:property value="bigCategory.brandpic4"/>">
				<input type="button" value="点击选择图片" onclick="path4.click()">
				<input type="file" name="file" style="display:none;" id="path4" onchange="f_upload4(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌5id</label>
			<div class="controls">
				<input type="text" name="brand5" value="<s:property value="bigCategory.brand5.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌5图片</label>
			<div class="controls">
				<input type="text" name="brandpic5" id="logo5" value="<s:property value="bigCategory.brandpic5"/>">
				<input type="button" value="点击选择图片" onclick="path5.click()">
				<input type="file" name="file" style="display:none;" id="path5" onchange="f_upload5(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌6id</label>
			<div class="controls">
				<input type="text" name="brand6" value="<s:property value="bigCategory.brand6.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌6图片</label>
			<div class="controls">
				<input type="text" name="brandpic6" id="logo6" value="<s:property value="bigCategory.brandpic6"/>">
				<input type="button" value="点击选择图片" onclick="path6.click()">
				<input type="file" name="file" style="display:none;" id="path6" onchange="f_upload6(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌7id</label>
			<div class="controls">
				<input type="text" name="brand7" value="<s:property value="bigCategory.brand7.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌7图片</label>
			<div class="controls">
				<input type="text" name="brandpic7" id="logo7" value="<s:property value="bigCategory.brandpic7"/>">
				<input type="button" value="点击选择图片" onclick="path7.click()">
				<input type="file" name="file" style="display:none;" id="path7" onchange="f_upload7(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌8id</label>
			<div class="controls">
				<input type="text" name="brand8" value="<s:property value="bigCategory.brand8.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌8图片</label>
			<div class="controls">
				<input type="text" name="brandpic8" id="logo8" value="<s:property value="bigCategory.brandpic8"/>">
				<input type="button" value="点击选择图片" onclick="path8.click()">
				<input type="file" name="file" style="display:none;" id="path8" onchange="f_upload8(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌9id</label>
			<div class="controls">
				<input type="text" name="brand9" value="<s:property value="bigCategory.brand9.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌9图片</label>
			<div class="controls">
				<input type="text" name="brandpic9" id="logo9" value="<s:property value="bigCategory.brandpic9"/>">
				<input type="button" value="点击选择图片" onclick="path9.click()">
				<input type="file" name="file" style="display:none;" id="path9" onchange="f_upload9(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌10id</label>
			<div class="controls">
				<input type="text" name="brand10" value="<s:property value="bigCategory.brand10.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌10图片</label>
			<div class="controls">
				<input type="text" name="brandpic10" id="logo10" value="<s:property value="bigCategory.brandpic10"/>">
				<input type="button" value="点击选择图片" onclick="path10.click()">
				<input type="file" name="file" style="display:none;" id="path10" onchange="f_upload10(this)">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌11id</label>
			<div class="controls">
				<input type="text" name="brand11" value="<s:property value="bigCategory.brand11.id"/>">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"><s>*</s>品牌11图片</label>
			<div class="controls">
				<input type="text" name="brandpic11" id="logo11" value="<s:property value="bigCategory.brandpic11"/>">
				<input type="button" value="点击选择图片" onclick="path11.click()">
				<input type="file" name="file" style="display:none;" id="path11" onchange="f_upload11(this)">
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