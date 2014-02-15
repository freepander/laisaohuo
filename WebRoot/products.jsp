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
    <div id="logo">
    	<a href="index_index" id="home" title="" style="background:url(fontassets/img//logo_new_v1.jpg) no-repeat top left;"> </a>
        <div id="user_header">
            <ul class="login_header">
				<s:if test="!#session.gloablIsLogin">
				<li class="login_li"><a href="user_registerInput" rel="nofollow">注册</a><em>|</em></li>
               	<li class="login_li"><a href="user_loginInput" rel="nofollow">登录</a><em>|</em></li>
				</s:if>
				<s:if test="#session.gloablIsLogin">
				<li class="login_li"><a href="user_order?id=<s:property value="#session.user.id"/>" rel="nofollow">个人中心</a><em>|</em></li>
					<li class="user">欢迎您，<span style="color: #ED145B;"><s:property value="#session.user.username"/></span><span style="padding:0 5px;">[<a href="user_signOut" style="padding:0;">退出</a>]</span><em>|</em></li>
				</s:if>
			</ul>
            <div class="clear"></div>
            <div class="header_logo_all">
            	<div id="cart_box">
            		<a id="cart" href="carts_list" rel="nofollow">
            			<span class="num png"></span>
            		</a>
                </div>
                <a href="articles_getArticle?id=1" rel="nofollow" class="top_link lightning" target="_blank"></a> 
					<a href="articles_getArticle?id=1" rel="nofollow" class="top_link gild" target="_blank"></a> 
					<a href="articles_getArticle?id=1" rel="nofollow" class="top_link credit" target="_blank"></a>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div id="top_menu">
       <div id="top_nav">
       		<div class="top_nav_item  selected"><a href="index_index" class="nav_link">美妆商城</a></div>
            <div class="top_nav_item"><a href="group_groupList" class="nav_link">今日团购</a></div>
			<div class="top_nav_item"><a href="articles_getArticle?id=1" class="nav_link">用户须知</a></div>
			<div class="top_search_wrap">
				<form action="#" method="get" id="mall_search_form" pos="top">
					<input name="search" type="text" class="top_search_input" id="mall_search_input" lang="zh">
					<button type="submit" id="btn_global_search">搜索</button>
				</form>
			</div>
        </div>
    </div>
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
                                <span class="icon i5"></span>
                                <a href="products_listAll?bigCategoryId=3">香氛</a>
                            </p>

                            <div class="moreCategory">
                                <s:iterator value="xiangFenCategoryList" status="st">
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
                                <span class="icon i6"></span>
                                <a href="products_listAll?bigCategoryId=6">母婴专区</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="muyingzhuanquCategoryList" status="st">
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
    <div id="footer_textarea">
        <div class="footer_top">
            <div class="footer_con" id="footer_links">
                <ul class="linksa png">
                    <li class="links">服务保障</li>
                    <li><a href="#" target="_blank" rel="nofollow">真品联盟</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">100%正品保证</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">30天无条件退货</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">7×24小时客服服务</a></li>
                    <li><span class="footer_zcemail">总裁邮箱</span><img src="http://p0.jmstatic.com/templates/jumei/images/ceo_v4.jpg" alt="" class="footer_zcemail_img"></li>
                </ul>

                <ul class="linksb png">
                    <li class="links">使用帮助</li>
                    <li><a href="#" target="_blank" rel="nofollow">新手指南</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">常见问题</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">帮助中心</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">用户协议</a></li>
                </ul>

                <ul class="linksc png">
                    <li class="links">支付方式</li>
                    <li><a href="#" target="_blank" rel="nofollow">货到付款</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">在线支付</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">余额支付</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">现金券支付</a></li>
                </ul>

                <ul class="linksd png">
                    <li class="links">配送方式</li>
                    <li><a href="#" target="_blank" rel="nofollow">买二包邮</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">配送说明</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">运费说明</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">验货签收</a></li>
                </ul>

                <ul class="linkse png">
                    <li class="links">售后服务</li>
                    <li><a href="#" target="_blank" rel="nofollow">正品承诺</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">售后咨询</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">退货政策</a></li>
                    <li><a href="#" target="_blank" rel="nofollow">退货办理</a></li>
                </ul>

                <span class="links_er_box">
                    <ul class="linksf">
                        <li class="links">手机聚美</li>
                        <li><span class="link_bottom_pic"></span></li>
                        <li>下载移动客户端</li>
                    </ul>
                    <ul class="linksg">
                        <li class="links">聚美微信</li>
                        <li><span class="link_bottom_pic"></span></li>
                        <li>聚美官方微信</li>
                    </ul>
                </span>
            </div>
        </div>
        <div class="footer_center">
            <div class="footer_con" id="footer_link">
                <a href="#" target="_blank" rel="nofollow">关于聚美优品</a>  |
                <a href="#" target="_blank" rel="nofollow">获取更新</a>  |
                <a href="#" target="_blank" rel="nofollow">加入聚美</a>  |
                <a href="#" target="_blank" rel="nofollow">品牌合作专区</a>  |
                <a href="#" target="_blank" rel="nofollow">网站联盟</a>  |
                <a href="#" target="_blank" rel="nofollow">媒体报道</a>  |
                <a href="#" target="_blank" rel="nofollow">商务合作</a>  |
                <a href="#" target="_blank" rel="nofollow">友情链接</a>
            </div>
        </div>
        <div class="footer_con" id="footer_copyright">
            <p class="footer_copy_con">
                © 2014 哈尔滨明彦创新科技发展有限公司 保留一切权利。 <br>
                京公网安备 110105001608 | <a href="http://www.miibeian.gov.cn" target="_blank" rel="nofollow">京ICP证111033号</a> | 食品流通许可证 SP1101051110165515（1-1）
                | <a href="http://p2.jmstatic.com/activity/2013_chuangrui.jpeg" target="_blank" rel="nofollow">营业执照</a>
            </p>
        </div>
    </div>
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
$("#list_container").load("products_goodsList",$('#fun_goodsList_form').serialize(),function(){});
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