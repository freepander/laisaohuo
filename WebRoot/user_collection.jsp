<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>化妆品商城</title>
	<link rel="stylesheet" href="fontassets/css/jumei.min.css">
    <link rel="stylesheet" type="text/css" href="fontassets/css/jumei_usercenter.min.css">
	<style type="text/css">
	.top_nav_hot{ position: absolute;left:81px;top:-4px;}
    
    .tishi a{font-size:16px;color:#fa1160;}
    .tishi{background-color:#fefded;height: 30px;text-align: center;font-weight: bold;line-height: 30px;width: 758px;border: 1px solid #f9f2a7;margin: 15px 0;}

	</style>
</head>
<body>
<div id="header_container">
	<%@include file="pianduan/user_header.jsp" %>
</div><!-- end  heander_container  -->

<div class="profile">
    <%@ include file="pianduan/user_nav.jsp" %>
    <div class="content">
    	<div class="filter">
            <a href="user_collection">我收藏的商品</a>
        </div>
        
        
        
        
        
        
        <div class="fav_product_container faved">
        	<div class="fav_product_head">
        		<span class="fph_tit">您共收藏了<label class="pink"><s:property value="number"/></label>个产品</span>
        	</div>
        	<div class="fav_product_list">
        		<ul>
        		<s:iterator value="list">
        		<li class="fav_mall" style="border: 3px solid rgb(255, 255, 255);">
        				<a href="good_goods?id=<s:property value="goods.id"/>" class="img_wrap" target="_blank">
        					<img src="upload/goodslogo/<s:property value="goods.logo"/>">
        				</a>
        				<p class="pro_tit">
        					<a href="good_goods?id=<s:property value="goods.id"/>" target="_blank">
        						<s:property value="goods.name"/>
        					</a>
        				</p>
        				<a class="pro_price" href="good_goods?id=<s:property value="goods.id"/>" target="_blank">
        					<strong><span>¥</span><s:property value="goods.nowPrice"/></strong>
        					<!-- <del>￥98.00</del> -->
        					<!-- <label>商城在售</label> -->
        				</a>
        				<p class="p_like" style="display: none;">
        					<a class="btnlike liked">
        						<span class="ilike_text">已收藏</span>
        						<span style="color: #999;">(<span class="ilike_num"><s:property value="goods.collectionNumber"/></span>)</span>
        					</a>
        					<a class="btnunlike" href="good_deleteCollection?id=<s:property value="goods.id"/>" pid="6936">取消收藏</a>
        				</p>
        			</li>
        		</s:iterator>
        		</ul>
        		<div class="clear"></div>
        	</div>
        </div>
	
	
	
	
	
	
    </div>
</div>


<div class="clear"></div>
<div id="footer_container">
	<%@include file="pianduan/footer1.jsp" %>
</div>
</body>
</html>