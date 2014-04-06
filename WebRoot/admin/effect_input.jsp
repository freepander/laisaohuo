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
<title>功效编辑</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>

<div class="row">
	<div class="span24">
		<form id="J_Form" class="form-horizontal" method="post" action="admin/effect_<s:if test="id!=0">update</s:if><s:if test="id==0">add</s:if>">
			<input name="id" type="hidden" value="<s:property value="effect.id"/>" >
			<div class="control-group">
				<label class="control-label"><s>*</s>名称：</label>
				<div class="controls">
					<input type="text" name="name" value="<s:property value="twoCategory.name"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><s>*</s>所属一级类别</label>
				<div class="controls">
					<select id="bigCategoryId" name="bigCategoryId">
						<option value="1">请选择</option>
					<s:iterator value="bigCategoryList">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
					</select>
				</div>
			</div>
			<!-- 
			<div class="control-group">
				<label class="control-label"><s>*</s>所属二级类别</label>
				<div class="controls">
					<select id="categoryId" name="categoryId">
					</select>
				</div>
			</div>
			 -->
			<div class="form-actions span5 offset3">
            	<button id="btnSearch" type="submit" class="button button-primary">提交</button>
            </div> 
		</form>
		<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
		<script type="text/javascript" src="assets/js/ajaxfileupload.js"></script>
		<!--
		<script>
		$('#bigCategoryId').change(function(){
			console.log($(this).val());
			var id=$(this).val();
			$.get("admin/category_getCategoryList",{id:id},function(data){
				$('#categoryId').html(data);
			})
		})
		</script> 
		 -->
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
		    		data:{fileName:timestamp+s_name2,folderName:"mallcarousel"},
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
		    		data:{fileName:timestamp+s_name2,folderName:"mallcarousel"},
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
		    		data:{fileName:timestamp+s_name2,folderName:"mallcarousel"},
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
		    		data:{fileName:timestamp+s_name2,folderName:"mallcarousel"},
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
		    		data:{fileName:timestamp+s_name2,folderName:"mallcarousel"},
		    		beforeSend:function(){},
		    		success: function(){
		    			alert("上传成功"); 
		    		}
		    	});
		    	return false;
		    }
			</script>
	</div>
</div>
</body>
</html>