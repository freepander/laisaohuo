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
<title>商品列表</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>


	<table cellspacing="0" class="table table-bordered">
      <thead>
        <tr><th colspan="8">
        <ul class="toolbar">
          <li><a href="admin/goods_input" class="button button-success">添加</a></li>
        </ul>
        </th></tr>
        <tr>
          <th width="15"></th>
          <th>#</th>
          <th>商品条码</th>
          <th>名称</th>
          <th>价格</th>
          <th>销量</th>
          <th>库存</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      	<s:iterator value="pageModel.objects">
        <tr>
          <td><input type="checkbox"></td> 
          <td><s:property value="id"/></td>
          <td><s:property value="numbers"/></td>
          <td><a target="_blank" href="good_goods?id=<s:property value="id"/>"><s:property value="name"/></a></td>
          <td><s:property value="nowPrice" /></td>
          <td><s:property value="salesVolume" /></td>
          <td><s:property value="stock" /></td>
          <td>
          	<a class="button button-danger" href="admin/goods_delete?id=<s:property value="id"/>" class="button">删除</a>
          	<!-- <a class="button button-warning" href="admin/goods_input?id=<s:property value="id"/>" class="button">修改</a> -->
          	<a class="button button-warning" href="admin/goods_effectInput?id=<s:property value="id"/>" class="button">编辑功效</a>
          	<a class="button button-warning" href="admin/goods_categoryInput?id=<s:property value="id"/>" class="button">类别与品牌</a>
          	<a class="button button-warning" href="admin/goods_otherInput?id=<s:property value="id"/>" class="button">其他信息</a>
          	<a class="button button-warning" href="admin/goods_bianjiInput?id=<s:property value="id"/>&method=shangpinxiangqing" class="button">商品详情</a>
          	<a class="button button-warning" href="admin/goods_bianjiInput?id=<s:property value="id"/>&method=shiyongfangfa" class="button">使用方法</a>
          	<a class="button button-warning" href="admin/goods_bianjiInput?id=<s:property value="id"/>&method=shangpinshipai" class="button">商品实拍</a>
          		<s:if test="onIndex==true">
          	<a class="button button-danger" href="admin/goods_indexRemove?id=<s:property value="id"/>" class="button">从首页移除</a>
          		</s:if>
          		<s:if test="onIndex==false">
          	<a class="button button-danger" href="admin/goods_indexAdd?id=<s:property value="id"/>" class="button">显示在首页</a>
          		</s:if>
          		<s:if test="visible==true">
          	<a class="button button-danger" href="admin/goods_visibleFalse?id=<s:property value="id"/>" class="button">下架</a>
          		</s:if>
          		<s:if test="visible==false">
          	<a class="button button-danger" href="admin/goods_visibleTrue?id=<s:property value="id"/>" class="button">上架</a>
          		</s:if>
          	
          </td>
        </tr>
        </s:iterator>
      </tbody>
    </table>
    <div>
      <div class="pagination pull-right">
        <ul>
          <li<s:if test="pageNum==1"> class="disabled"</s:if>><a href="<s:property value="pageModel.url" /><s:property value="pageNum-1" />">« 上一页</a></li>
          <s:iterator value="pageModel.pageNumList" status="st" >
          <s:if test="#st.index+1==pageNum">
          	<li class="active"><a href="<s:property value="pageModel.url" /><s:property value="#st.index+1" />"><s:property value="#st.index+1" /></a></li>
          </s:if>
          <s:if test="#st.index+1!=pageNum">
          	<li><a href="<s:property value="pageModel.url" /><s:property value="#st.index+1" />"><s:property value="#st.index+1" /></a></li>
          </s:if>
          </s:iterator>
          <li <s:if test="pageNum==pageModel.countPage" >class="disabled"</s:if>><a href="<s:property value="pageModel.url" /><s:property value="pageNum+1" />">下一页 »</a></li>
        </ul>
      </div>
    </div>
</body>
</html>