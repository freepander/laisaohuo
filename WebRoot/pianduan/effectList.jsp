<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<s:iterator value="list">
<input value="<s:property value="id"/>" type="checkbox" name="effectId"><s:property value="name"/>
</s:iterator>
