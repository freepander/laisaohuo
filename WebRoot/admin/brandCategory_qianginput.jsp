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
<title>品牌墙列表--编辑</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>


<div class="row">
	<div class="span24">
		<form id="J_Form" class="form-horizontal" method="post" action="admin/brandCategory_qiangupdate">
		<input type="hidden" value="<s:property value="id"/>" name="id">
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌1</label>
				<div class="controls">
					<select name="brand1Id">
						<option value="<s:property value="brandCategory.brand1.id"/>"><s:property value="brandCategory.brand1.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌1图片</label>
				<div class="controls">
					<input type="text" name="pic1" id="logo1" value="<s:property value="brandCategory.pic1"/>">
					<input type="button" value="点击选择图片" onclick="path1.click()">
					<input type="file" name="file" style="display:none;" id="path1" onchange="f_upload1(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌2</label>
				<div class="controls">
					<select name="brand2Id">
						<option value="<s:property value="brandCategory.brand2.id"/>"><s:property value="brandCategory.brand2.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌2图片</label>
				<div class="controls">
					<input type="text" name="pic2" id="logo2" value="<s:property value="brandCategory.pic2"/>">
					<input type="button" value="点击选择图片" onclick="path2.click()">
					<input type="file" name="file" style="display:none;" id="path2" onchange="f_upload2(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌3</label>
				<div class="controls">
					<select name="brand3Id">
						<option value="<s:property value="brandCategory.brand3.id"/>"><s:property value="brandCategory.brand3.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌3图片</label>
				<div class="controls">
					<input type="text" name="pic3" id="logo3" value="<s:property value="brandCategory.pic3"/>">
					<input type="button" value="点击选择图片" onclick="path3.click()">
					<input type="file" name="file" style="display:none;" id="path3" onchange="f_upload3(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌4</label>
				<div class="controls">
					<select name="brand4Id">
						<option value="<s:property value="brandCategory.brand4.id"/>"><s:property value="brandCategory.brand4.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌4图片</label>
				<div class="controls">
					<input type="text" name="pic4" id="logo4" value="<s:property value="brandCategory.pic4"/>">
					<input type="button" value="点击选择图片" onclick="path4.click()">
					<input type="file" name="file" style="display:none;" id="path4" onchange="f_upload4(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌5</label>
				<div class="controls">
					<select name="brand5Id">
						<option value="<s:property value="brandCategory.brand5.id"/>"><s:property value="brandCategory.brand5.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌5图片</label>
				<div class="controls">
					<input type="text" name="pic5" id="logo5" value="<s:property value="brandCategory.pic5"/>">
					<input type="button" value="点击选择图片" onclick="path5.click()">
					<input type="file" name="file" style="display:none;" id="path5" onchange="f_upload5(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌6</label>
				<div class="controls">
					<select name="brand6Id">
						<option value="<s:property value="brandCategory.brand6.id"/>"><s:property value="brandCategory.brand6.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌6图片</label>
				<div class="controls">
					<input type="text" name="pic6" id="logo6" value="<s:property value="brandCategory.pic6"/>">
					<input type="button" value="点击选择图片" onclick="path6.click()">
					<input type="file" name="file" style="display:none;" id="path6" onchange="f_upload6(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌7</label>
				<div class="controls">
					<select name="brand7Id">
						<option value="<s:property value="brandCategory.brand7.id"/>"><s:property value="brandCategory.brand7.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌7图片</label>
				<div class="controls">
					<input type="text" name="pic7" id="logo7" value="<s:property value="brandCategory.pic7"/>">
					<input type="button" value="点击选择图片" onclick="path7.click()">
					<input type="file" name="file" style="display:none;" id="path7" onchange="f_upload7(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌8</label>
				<div class="controls">
					<select name="brand8Id">
						<option value="<s:property value="brandCategory.brand8.id"/>"><s:property value="brandCategory.brand8.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌8图片</label>
				<div class="controls">
					<input type="text" name="pic8" id="logo8" value="<s:property value="brandCategory.pic8"/>">
					<input type="button" value="点击选择图片" onclick="path8.click()">
					<input type="file" name="file" style="display:none;" id="path8" onchange="f_upload8(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌9</label>
				<div class="controls">
					<select name="brand9Id">
						<option value="<s:property value="brandCategory.brand9.id"/>"><s:property value="brandCategory.brand9.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌9图片</label>
				<div class="controls">
					<input type="text" name="pic9" id="logo9" value="<s:property value="brandCategory.pic9"/>">
					<input type="button" value="点击选择图片" onclick="path9.click()">
					<input type="file" name="file" style="display:none;" id="path9" onchange="f_upload9(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌10</label>
				<div class="controls">
					<select name="brand10Id">
						<option value="<s:property value="brandCategory.brand10.id"/>"><s:property value="brandCategory.brand10.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌10图片</label>
				<div class="controls">
					<input type="text" name="pic10" id="logo10" value="<s:property value="brandCategory.pic10"/>">
					<input type="button" value="点击选择图片" onclick="path10.click()">
					<input type="file" name="file" style="display:none;" id="path10" onchange="f_upload10(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌11</label>
				<div class="controls">
					<select name="brand11Id">
						<option value="<s:property value="brandCategory.brand11.id"/>"><s:property value="brandCategory.brand11.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌11图片</label>
				<div class="controls">
					<input type="text" name="pic11" id="logo11" value="<s:property value="brandCategory.pic11"/>">
					<input type="button" value="点击选择图片" onclick="path11.click()">
					<input type="file" name="file" style="display:none;" id="path11" onchange="f_upload11(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌12</label>
				<div class="controls">
					<select name="brand12Id">
						<option value="<s:property value="brandCategory.brand12.id"/>"><s:property value="brandCategory.brand12.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌12图片</label>
				<div class="controls">
					<input type="text" name="pic12" id="logo12" value="<s:property value="brandCategory.pic12"/>">
					<input type="button" value="点击选择图片" onclick="path12.click()">
					<input type="file" name="file" style="display:none;" id="path12" onchange="f_upload12(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌13</label>
				<div class="controls">
					<select name="brand13Id">
						<option value="<s:property value="brandCategory.brand13.id"/>"><s:property value="brandCategory.brand13.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌13图片</label>
				<div class="controls">
					<input type="text" name="pic13" id="logo13" value="<s:property value="brandCategory.pic13"/>">
					<input type="button" value="点击选择图片" onclick="path13.click()">
					<input type="file" name="file" style="display:none;" id="path13" onchange="f_upload13(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌14</label>
				<div class="controls">
					<select name="brand14Id">
						<option value="<s:property value="brandCategory.brand14.id"/>"><s:property value="brandCategory.brand14.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌14图片</label>
				<div class="controls">
					<input type="text" name="pic14" id="logo14" value="<s:property value="brandCategory.pic14"/>">
					<input type="button" value="点击选择图片" onclick="path14.click()">
					<input type="file" name="file" style="display:none;" id="path14" onchange="f_upload14(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌15</label>
				<div class="controls">
					<select name="brand15Id">
						<option value="<s:property value="brandCategory.brand15.id"/>"><s:property value="brandCategory.brand15.name"/></option>
					<s:iterator value="list">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>品牌15图片</label>
				<div class="controls">
					<input type="text" name="pic15" id="logo15" value="<s:property value="brandCategory.pic15"/>">
					<input type="button" value="点击选择图片" onclick="path15.click()">
					<input type="file" name="file" style="display:none;" id="path15" onchange="f_upload15(this)">
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload13(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo13').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path13',
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload14(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo14').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path14',
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
    		beforeSend:function(){},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload15(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split("\\");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo15').val(timestamp+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path15',
    		data:{fileName:timestamp+s_name2,folderName:"brand"},
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