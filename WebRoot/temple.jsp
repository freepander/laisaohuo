<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">



<div class="control-group">
	<label class="control-label"><s>*</s>商品名称</label>
	<div class="controls">
		<input type="text" name="name" value="">
	</div>
</div>

<div class="control-group">
	<label class="control-label"><s>*</s>所属类别</label>
	<div class="controls">
		<select name="categoryId">
			<option value="">请选择</option>
		</select>
	</div>
</div>


<div class="control-group">
	<label class="control-label">商品备注：</label>
	<div class="controls control-row4">
		<textarea name="remarks" class="input-large"></textarea>
	</div>
</div>

<div class="control-group">
	<label class="control-label"><s>*</s>所属类别</label>
	<div class="controls">
		<select name="categoryId">
			<option value="1">请选择</option>
			<option value="<s:property value="shop.category.id"/>"><s:property value="shop.category.name"/></option>
		<s:iterator value="categoryList">
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
</script>
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="assets/js/ajaxfileupload.js"></script>

<div class="form-actions span5 offset3">
	<button id="btnSearch" type="submit" class="button button-primary">提交</button>
</div>


<s:if test="id!=0">update</s:if><s:if test="id==0">add</s:if>