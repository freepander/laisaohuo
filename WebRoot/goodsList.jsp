<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<div class="num_warp">
    <ul class="plistul">
    	<s:iterator value="pageModel.objects">
    	<li class="pList-item">
            <div class="num_warp_list_top_white">
                <div class="num_warp_list_pic_top">
                    <div class="num_warp_list_pic_mall">
                        <span class="sale_sign "></span>
                        <a href="good_goods?id=<s:property value="id"/>" target="_blank" rel="nofollow">
                            <img src="upload/goodslogo/<s:property value="logo"/>" border="0" alt="<s:property value="name"/>">
                        </a>
                    </div>
                </div>
                <div class="num_warp_list_name">
                    <a href="good_goods?id=<s:property value="id"/>" target="_blank">
                        <span class="pink"></span><s:property value="name"/>
                    </a>
                </div>
                <div class="num_warp_list_name_mall">
                    <span style="font-size:18px; font-weight:bolder; color:#ed145b;">¥<s:property value="nowPrice"/></span>
                </div>
                <!-- <div class="num_warp_list_warp_word">
                    <span class="num_warp_list_quantity_white"></span>
                    <span style="float:left; margin:2px 0 0 3px;">31388篇评价</span>
                </div>
                 -->
                <div class="pList_item_button clearfix">
                    <div class="add_to_cart">
                        <a href="carts_add?goodsId=<s:property value="id"/>&number=1" target="_blank" rel="nofollow" u_nos="TM11071400026" u_as="">
                            <img src="fontassets/img/incart.jpg" border="0">
                        </a>
                    </div>
                    <div style="float:left;margin-left: 4px ">
                        <a href="good_goods?id=<s:property value="id"/>" target="_blank" rel="nofollow">
                            <img src="fontassets/img/sold_out_view_button.png" border="0">
                        </a>
                    </div>
                </div>
            </div>
        </li>
    	</s:iterator>
    </ul>
    <div class="clear"></div>
</div>
<div class="page-nav-wrapper">
    <ul class="page-nav">
    	<s:if test="pageNum!=1">
    	<li class="first"><a class="prev" href="#">下一页</a></li>
    	</s:if>
    	<s:iterator value="pageModel.pageNumList" status="st">
    	<s:if test="#st.index+1==pageNum">
    	<li class="current"><span><s:property value="#st.index+1"/></span></li>
    	</s:if>
    	<s:if test="#st.index+1!=pageNum">
    	<li><span><s:property value="#st.index+1"/></span></li>
    	</s:if>
    	</s:iterator>
        <s:if test="pageNum!=pageModel.countPage">
        <li class="last"><a class="next" href="#">下一页</a></li>
        </s:if>
    </ul>
</div>
