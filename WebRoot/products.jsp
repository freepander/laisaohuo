<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>化妆品商城</title>
	<link rel="stylesheet" href="fontassets/css/jumei.min.css">
    <link rel="stylesheet" href="fontassets/css/jumei_mall.min.css">
    <link rel="stylesheet" href="fontassets/css/malllist.min.css">
    <link rel="stylesheet" href="fontassets/css/mall_products_wide.min.css">
    <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
	<style type="text/css">
	.top_nav_hot{ position: absolute;left:81px;top:-4px;}
	</style>
</head>
<body>
<div id="header_container">
	<form method="post" id="fun_goodsList_form" style="dispaly:none" action="products_listAll">
		<input type="hidden" name="bigCategoryId" value="<s:property value="bigCategoryId"/>">
		<input type="hidden" name="brandId" value="<s:property value="brandId"/>">
		<input type="hidden" name="categoryId" value="<s:property value="categoryId"/>">
		<input type="hidden" name="effectId" value="<s:property value="effectId"/>">
		<input type="hidden" name="method" value="<s:property value="method"/>">
	</form>
    <%@include file="pianduan/header_common.jsp" %>
</div>
<!-- end  heander_container  -->
<div id="container">
    <div id="body">
        <div class="location">
            <a href="index_index" target="_blank" rel="nofollow">美妆商城首页</a>
            <s:if test="bigCategoryId!=0">&gt;<span><s:property value="bigCategory.name"/></span></s:if>
            <s:if test="bigCategoryId==0">&gt;<span>全部</span></s:if>
        </div>
        <div id="warp">
            <div id="warp_right">
                <div class="products_Category">
                    <h2><a href="#">所有分类</a></h2>
                    <ul>            
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i1"></span>
                                <a href="products_listAll?bigCategoryId=1">护肤</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="hufuCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                                
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i2"></span>
                                <a href="products_listAll?bigCategoryId=2">彩妆</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="caizhuangCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i3"></span>
                                <a href="products_listAll?bigCategoryId=4">身体护理</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="shentihuliCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i5"></span>
                                <a href="products_listAll?bigCategoryId=5">美容工具</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="meironggongjuCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i9"></span>
                                <a href="products_listAll?bigCategoryId=7">男士专区</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="nanshizhuanquCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i9"></span>
                                <a href="products_listAll?bigCategoryId=8">食品保健</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="shipinbaojianCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i9"></span>
                                <a style="color:red;" href="products_listAll?bigCategoryId=9">同学惠</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="tongxuehuiCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div><!-- warp_right end  -->
            <div id="warp_left">
                <div id="pListContainer">
                    <div id="warp_left_top">
                    
                    <div class="allready_selected">
                    	<div class="tit">你选择了：</div>
                    	<s:if test="brandId!=0">
                    	<div class="next_selected_name_warp" id="brand_warp">
                    		<span class="next_selected_bor" id="brand_word">品牌 ：<s:property value="brand.name"/></span>
                    		<span style="_margin-left:-3px; float: left;">
                    		<a href="javascript:void(0);">
                    			<img src="fontassets/img/selected_close.jpg" border="0">
                    		</a>
                    		</span>
                    	</div>
                    	</s:if>
                    	<s:if test="effectId!=0">
                    	<div class="next_selected_name_warp" id="effect_warp">
                    		<span class="next_selected_bor" id="effect_word">功效 ：<s:property value="effect.name"/></span>
                    		<span style="_margin-left:-3px; float: left;">
                    		<a href="javascript:void(0);">
                    			<img src="fontassets/img/selected_close.jpg" border="0">
                    		</a>
                    		</span>
                    	</div>
                    	</s:if>
                    	<s:if test="categoryId!=0">
                    	<div class="next_selected_name_warp" id="category_warp">
                    		<span class="next_selected_bor" id="category_word">类别：<s:property value="category.name"/></span>
                    		<span style="_margin-left:-3px; float: left;">
                    		<a href="javascript:void(0);">
                    			<img src="fontassets/img/selected_close.jpg" border="0">
                    		</a>
                    		</span>
                    	</div>
                    	</s:if>
                    </div>
                    <s:if test="brandId==0">
                    <div class="next_selected">
                        	<div class="next_selected_first">按品牌：</div>
                            <div class="next_selected_second" id="classification">
                                <ul>
                                <s:iterator value="brandList">
                                	<li><a class="fun_brand" data-brandId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></li>
                                </s:iterator>
                                </ul>
                            </div>
                        </div>
                    </s:if>
                        <div class="line"></div>
                    <s:if test="categoryId==0">
                    	<div class="next_selected">
                            <div class="next_selected_first">选分类：</div>
                            <div class="next_selected_second" id="classification">
                                <ul class="clearfix">
                               	<s:iterator value="categoryList">
                                	<li><a class="fun_category" data-categoryId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></li>
                                </s:iterator>
                                </ul>
                            </div>
                        </div>
                    </s:if>
                    <s:if test="effectId==0">
                    	<div class="next_selected">
                            <div class="next_selected_first">按功效：</div>
                            <div class="next_selected_second" id="effect">
                                <ul>
                                <s:iterator value="effectList">
                                	<li><a class="fun_effect" data-effectId="<s:property value="id"/>" title="<s:property value="name"/>" href="javascript:void(0);"><s:property value="name"/></a></li>
                                </s:iterator>
                                </ul>
                            </div>
                        </div>
                    </s:if>
                    </div>
                    <div class="num_tit">
                        <ul>
                            <li class="<s:if test="method==1">desc_enable</s:if><s:if test="method!=1">desc_disable</s:if>">
                                <a href="javascript:void(0);" class="fun_goodspaixu" data-method="1" rel="nofollow">默认</a>
                            </li>
                            <li class="<s:if test="method==2">desc_enable</s:if><s:if test="method==3">asc_enable</s:if><s:if test="method!=3&&method!=2">desc_disable</s:if>">
                                <a href="javascript:void(0);" class="fun_goodspaixu" data-method="<s:if test="method==3">2</s:if><s:if test="method!=3">3</s:if>" href="#" rel="nofollow">价格</a>
                            </li>
                            <li class="<s:if test="method==4">desc_enable</s:if><s:if test="method==5">asc_enable</s:if><s:if test="method!=4&&method!=5">desc_disable</s:if>">
                                <a href="javascript:void(0);" class="fun_goodspaixu" data-method="<s:if test="method==4">5</s:if><s:if test="method!=4">4</s:if>" href="#" rel="nofollow">人气</a>
                            </li>
                            <li class="<s:if test="method==6">desc_enable</s:if><s:if test="method==7">asc_enable</s:if><s:if test="method!=6&&method!=7">desc_disable</s:if>" style="background-position: 80px center;">
                                <a href="javascript:void(0);" class="fun_goodspaixu" data-method="<s:if test="method==6">7</s:if><s:if test="method!=6">6</s:if>" href="#" rel="nofollow">上架时间</a>
                            </li>
                        </ul>
                    </div>
                    <div id="list_container">
                    
                    
                    
                    </div>
                </div>
            </div><!-- warp_left end  -->
        </div><!-- warp end -->

    </div><!-- body end -->
</div><!--  container end  -->

<div class="clear"></div>
<div id="footer_container">
	<%@include file="pianduan/footer1.jsp" %>
</div>
<script>
	$('.fun_brand').click(function(){
		var brandId=$(this).attr('data-brandId');
		$('#fun_goodsList_form').children("input[name='brandId']").val(brandId);
		$('#fun_goodsList_form').submit();
		return false;
	});
	$('.fun_category').click(function(){
		var categoryId=$(this).attr('data-categoryId');
		$('#fun_goodsList_form').children("input[name='categoryId']").val(categoryId);
		$('#fun_goodsList_form').submit();
		return false
	});
	$('.fun_effect').click(function(){
		var effectId=$(this).attr('data-effectId');
		$('#fun_goodsList_form').children("input[name='effectId']").val(effectId);
		$('#fun_goodsList_form').submit();
		return false
	});
	$('.fun_goodspaixu').click(function(){
		var methodId=$(this).attr('data-method');
		$('#fun_goodsList_form').children("input[name='method']").val(methodId);
		$('#fun_goodsList_form').submit();
	});
	$('#brand_warp').click(function(){
		$('#fun_goodsList_form').children("input[name='brandId']").val(0);
		$('#fun_goodsList_form').submit();
	});
	$('#effect_warp').click(function(){
		$('#fun_goodsList_form').children("input[name='effectId']").val(0);
		$('#fun_goodsList_form').submit();
	});
	$('#category_warp').click(function(){
		$('#fun_goodsList_form').children("input[name='categoryId']").val(0);
		$('#fun_goodsList_form').submit();
	});
</script>
<script>
$("#list_container").load("products_goodsList",$('#fun_goodsList_form').serialize(),function(){
	//鼠标经过 加边框
	$('.pList-item').mouseover(function(){
		$(this).addClass('hover')
	});
	$('.pList-item').mouseout(function(){
		$(this).removeClass('hover');
	})
});
</script>
<script>
//导航条
$('.products_Category .item').mouseover(function(){
	$(this).children('.moreCategory').show();
});
$('.products_Category .item').mouseout(function(){
	$(this).children('.moreCategory').hide();
})
</script>
</body>
</html>