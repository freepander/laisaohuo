<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<option value="1">请选择</option>
<s:iterator value="list">
	<option value="<s:property value="id"/>"><s:property value="name"/></option>
</s:iterator>