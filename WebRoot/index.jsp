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
<link rel="stylesheet" href="fontassets/css/jumei_mall.min.css">
<link rel="stylesheet" href="fontassets/css/jumei_newmall.min.css">
<link rel="stylesheet" href="fontassets/css/jumei_newmall_wide.min.css">
<link rel="stylesheet" href="fontassets/css/style.css">
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<style type="text/css">
.top_nav_hot {
	position: absolute;
	left: 81px;
	top: -4px;
}

</style>
</head>
<body>
	<div id="header_container">
		<%@include file="pianduan/header_common.jsp" %>
	</div>
	<!-- end  heander_container  -->
	<!--  contanter  -->
	<div id="container">
		<div id="body">
			<!--  lun bo  -->
			<div class="mtsBanner" id="mtsBanner" style="position: relative; z-index: 0; overflow: hidden; height: 340px;">
				<div class="slide_control">
					<s:if test='mallCarousel.pic1!=""'><a class="mall_dot mall_dot_hover">1</a></s:if>
					<s:if test='mallCarousel.pic2!=""'><a class="mall_dot">2</a></s:if>
					<s:if test='mallCarousel.pic3!=""'><a class="mall_dot">3</a></s:if>
					<s:if test='mallCarousel.pic4!=""'><a class="mall_dot">4</a></s:if>
					<s:if test='mallCarousel.pic5!=""'><a class="mall_dot">5</a></s:if>
				</div>
				<ul class="bannerWrap">
					<li style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; display: list-item; background-image: url(upload/mallcarousel/<s:property value="mallCarousel.pic1"/>);">
						<div class="banner_main_con"><a href="<s:property value="mallCarousel.link1"/>" target="_blank" class="main_banner_a"></a></div>
					</li>
					<li style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; display: none; background-image: url(upload/mallcarousel/<s:property value="mallCarousel.pic2"/>);">
						<div class="banner_main_con"><a href="<s:property value="mallCarousel.link2"/>" target="_blank" class="main_banner_a"></a></div>
					</li>
					<li style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; display: none; background-image: url(upload/mallcarousel/<s:property value="mallCarousel.pic3"/>);">
						<div class="banner_main_con"><a href="<s:property value="mallCarousel.link3"/>" target="_blank" class="main_banner_a"></a></div>
					</li>
					<li style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; display: none ; background-image: url(upload/mallcarousel/<s:property value="mallCarousel.pic4"/>);">
						<div class="banner_main_con"><a href="<s:property value="mallCarousel.link4"/>" target="_blank" class="main_banner_a"></a></div>
					</li>
					<li style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; display: none ; background-image: url(upload/mallcarousel/<s:property value="mallCarousel.pic5"/>);">
						<div class="banner_main_con"><a href="<s:property value="mallCarousel.link5"/>" target="_blank" class="main_banner_a"></a></div>
					</li>
				</ul>
				<em class="slidearrow slidearrow_l">&lt;</em><em class="slidearrow slidearrow_r">&gt;</em>
			</div>
			<!--  lun bo end  -->
			<!--  中间分类    -->
			<div class="mallTopScreen">
				<div class="mtsCategory" id="mtsCategory">
					<div class="products_Category">
                    <h2><a href="#">所有分类</a></h2>
                    <ul>            
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i1"></span>
                                <a target="_blank" href="products_listAll?bigCategoryId=1">护肤</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="hufuCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=1&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=1&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i2"></span>
                                <a target="_blank" href="products_listAll?bigCategoryId=2">彩妆</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="caizhuangCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=2&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=2&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i3"></span>
                                <a target="_blank" href="products_listAll?bigCategoryId=4">身体护理</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="shentihuliCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=4&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=4&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i5"></span>
                                <a target="_blank" href="products_listAll?bigCategoryId=5">美容工具</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="meironggongjuCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=5&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=5&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i9"></span>
                                <a target="_blank" href="products_listAll?bigCategoryId=7">男士专区</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="nanshizhuanquCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=7&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=7&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i9"></span>
                                <a target="_blank" href="products_listAll?bigCategoryId=8">食品保健</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="shipinbaojianCategoryList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=8&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=8&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                        <li class="item">
                            <p class="item_p">
                                <span class="icon i9"></span>
                                <a target="_blank" href="products_listAll?bigCategoryId=9" style="color:red;">同学惠</a>
                            </p>
                            <div class="moreCategory">
                                <s:iterator value="tongxuehuiList" status="st">
                                	<s:if test="#st.index%2==0">
                                	<p class="clearfix">
                                	<span class="left"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=9&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</s:if>
                                	<s:if test="#st.index%2==1">
                                	<span class="right"><a class="fun_category" target="_blank" title="<s:property value="name"/>" href="products_listAll?bigCategoryId=9&categoryId=<s:property value="id"/>"><s:property value="name"/></a></span>
                                	</p>
                                	</s:if>
                                </s:iterator>
                            </div>
                        </li>
                    </ul>
                    <div class="clear"></div>
                </div>
                
                
                
				</div>
				<!--正品联盟-->
				<div id="authorize_floor">
					<div class="floor_con" id="fun_floor_con">
						<div class="af_con" style="height: 220px;overflow:hidden;position:relative;">
							<ul style="margin-top: 20px;height: 202px;position:absolute;left:0;top:0;">
							<s:iterator value="brandList">
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="id"/>"><img src="upload/brand/<s:property value="logo"/>" style="margin-left: 0px; width: 170px;height: 80px;"></a></li>
							</s:iterator>
							</ul>
							<img id="brandList-right" style="cursor:pointer;display:none;position:absolute;right: 0px; top: 93px;" src="assets/img/qiehuan_right.png">
							<img id="brandList-left" style="cursor:pointer;display:none;position:absolute;left:0px;top:93px;" src="assets/img/qiehuan_left.png">
						</div>
					</div>
				</div>
				<!--正品联盟结束-->
				<div class="clear"></div>
			</div>
			<!--  护肤 start  -->
			<div id="skincare" class="floor" style="background:none;">
				<div class="floor_head" style="background-color:#fff;">
					<h3>SKINCARE 护肤</h3>
					<ul class="fh_cate">
						<s:iterator value="hufuEffectList">
						<li><a href="products_listAll?bigCategoryId=1&effectId=<s:property value="id"/>" target="_blank" rel="nofollow"><s:property value="name"/></a></li>	
						</s:iterator>
					</ul>
					<a href="products_listAll?bigCategoryId=1" class="more" target="_blank">去护肤馆</a>
				</div>
				<div class="floor_con">
					<div id="J_CardListBox" class="cardlist-wrap">
						<ul class="cardlist largecard">
							<s:iterator value="hufuGoodsList">
							<li class="carditem card-story-large">
								<div class="card-main">
									<div class="card-hd">
										<a href="good_goods?id=<s:property value="id"/>" target="_blank" title="<s:property value="name"/>">
											<img class="story-image" width="283" height="283" src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>">
										</a>
										<span class="commodity-price">￥<s:if test="discount==1"><s:property value="nowPrice"/></s:if><s:if test="discount<1"><span style="text-decoration:line-through;"><s:property value="price"/></span>&nbsp;&nbsp;<s:property value="discountPrice"/></s:if> </span>										
									</div>
									<div class="card-bd">
										<h2 class="story-title" title=" ">
										    <a target="_blank" href="good_goods?id=<s:property value="id"/>"> <s:property value="name"/>(<s:property value="capacity"/>)</a>
										</h2>
										<div class="story-info">
											<span class="info-pinglun">评论:<s:property value="reviewNumber"/>&nbsp;&nbsp;收藏：<s:property value="collectionNumber"/></span>
											<span class="info-xiaoliang">销量:<s:property value="salesVolume+salesVolume2"/></span>
										</div>
									</div>
									<div class="card-extra">
									<div class="card-actions" >
										<a class="J_AddToDoulist btn-doulist" href="carts_add?goodsId=<s:property value="id"/>&number=1">加入购物车</a>
										<a class="J_CommodityLikeBtn btn-carditem-like" href="javascript:void(0)">
											加入收藏
										</a>
									</div>
								</div>
								</div>
								
							</li>
							</s:iterator>
							
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				
			</div>
			<!--  彩妆  -->
			<div id="color" class="floor" style="background:none;">
				<div class="floor_head">
					<h3>彩妆</h3>
					<ul class="fh_cate">
						<s:iterator value="caizhuangEffectList">
						<li><a href="products_listAll?bigCategoryId=2&effectId=<s:property value="id"/>" target="_blank" rel="nofollow"><s:property value="name"/></a></li>	
						</s:iterator>
					</ul>
					<a href="products_listAll?bigCategoryId=2" class="more" target="_blank">去彩妆馆</a>
				</div>
				<div class="floor_con" style="min-height:200px;">
					<div id="J_CardListBox" class="cardlist-wrap">
						<ul class="cardlist largecard">
							<s:iterator value="caizhuangGoodsList">
							<li class="carditem card-story-large">
								<div class="card-main">
									<div class="card-hd">
										<a href="good_goods?id=<s:property value="id"/>" target="_blank" title="<s:property value="name"/>">
											<img class="story-image" width="283" height="283" src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>">
										</a>
										<span class="commodity-price">￥<s:if test="discount==1"><s:property value="nowPrice"/></s:if><s:if test="discount<1"><span style="text-decoration:line-through;"><s:property value="price"/></span>&nbsp;&nbsp;<s:property value="discountPrice"/></s:if> </span>
										
									</div>
									<div class="card-bd">
										<h2 class="story-title" title=" ">
										    <a target="_blank" href="good_goods?id=<s:property value="id"/>"> <s:property value="name"/>(<s:property value="capacity"/>)</a>
										</h2>
										<div class="story-info">
											<span class="info-pinglun">评论:<s:property value="reviewNumber"/>&nbsp;&nbsp;收藏：<s:property value="collectionNumber"/></span>
											<span class="info-xiaoliang">销量:<s:property value="salesVolume+salesVolume2"/></span>
										</div>
									</div>
									<div class="card-extra">
									<div class="card-actions">
										<a class="J_AddToDoulist btn-doulist" href="carts_add?goodsId=<s:property value="id"/>&number=1">加入购物车</a>
										<a class="J_CommodityLikeBtn btn-carditem-like" href="javascript:void(0)">
											加入收藏
										</a>
									</div>
								</div>
								</div>
								
							</li>
							</s:iterator>
							
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				
			</div>
			<!--  彩妆 end  -->
			
			<!--  身体护理 start  -->
			<div id="Body_floor" class="floor" style="background:none;">
				<div class="floor_head">
					<h3>身体护理</h3>
					<ul class="fh_cate">
						<s:iterator value="huliEffectList">
						<li><a href="products_listAll?bigCategoryId=4&effectId=<s:property value="id"/>" target="_blank" rel="nofollow"><s:property value="name"/></a></li>	
						</s:iterator>
					</ul>
					<a href="products_listAll?bigCategoryId=4" class="more" target="_blank">去身体护理馆</a>
				</div>
				<div class="floor_con"style="min-height:200px;">
					<div id="J_CardListBox" class="cardlist-wrap">
						<ul class="cardlist largecard">
							<s:iterator value="huliGoodsList">
							<li class="carditem card-story-large">
								<div class="card-main">
									<div class="card-hd">
										<a href="good_goods?id=<s:property value="id"/>" target="_blank" title="<s:property value="name"/>">
											<img class="story-image" width="283" height="283" src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>">
										</a>
										<span class="commodity-price">￥<s:if test="discount==1"><s:property value="nowPrice"/></s:if><s:if test="discount<1"><span style="text-decoration:line-through;"><s:property value="price"/></span>&nbsp;&nbsp;<s:property value="discountPrice"/></s:if> </span>
									</div>
									<div class="card-bd">
										<h2 class="story-title" title=" ">
										    <a target="_blank" href="good_goods?id=<s:property value="id"/>"> <s:property value="name"/>(<s:property value="capacity"/>)</a>
										</h2>
										<div class="story-info">
											<span class="info-pinglun">评论:<s:property value="reviewNumber"/>&nbsp;&nbsp;收藏：<s:property value="collectionNumber"/></span>
											<span class="info-xiaoliang">销量:<s:property value="salesVolume+salesVolume2"/></span>
										</div>
									</div>
									<div class="card-extra">
									<div class="card-actions" >
										<a class="J_AddToDoulist btn-doulist" href="carts_add?goodsId=<s:property value="id"/>&number=1">加入购物车</a>
										<a class="J_CommodityLikeBtn btn-carditem-like" href="javascript:void(0)">
											加入收藏
										</a>
									</div>
								</div>
								</div>
								
							</li>
							</s:iterator>
							
						</ul>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<!--  男士专区 start  -->
			<div id="Man_floor" class="floor" style="background:none;">
				<div class="floor_head">
					<h3>男士专区</h3>
					<ul class="fh_cate">
						<s:iterator value="nanshiEffectList">
						<li><a href="products_listAll?bigCategoryId=7&effectId=<s:property value="id"/>" target="_blank" rel="nofollow"><s:property value="name"/></a></li>	
						</s:iterator>
					</ul>
					<a href="products_listAll?bigCategoryId=7" class="more" target="_blank">去男士馆</a>
				</div>
				<div class="floor_con"style="min-height:200px;">
					<div id="J_CardListBox" class="cardlist-wrap">
						<ul class="cardlist largecard">
							<s:iterator value="nanshiGoodsList">
							<li class="carditem card-story-large">
								<div class="card-main">
									<div class="card-hd">
										<a href="good_goods?id=<s:property value="id"/>" target="_blank" title="<s:property value="name"/>">
											<img class="story-image" width="283" height="283" src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>">
										</a>
										<span class="commodity-price">￥<s:if test="discount==1"><s:property value="nowPrice"/></s:if><s:if test="discount<1"><span style="text-decoration:line-through;"><s:property value="price"/></span>&nbsp;&nbsp;<s:property value="discountPrice"/></s:if> </span>
										
									</div>
									<div class="card-bd">
										<h2 class="story-title" title=" ">
										    <a target="_blank" href="good_goods?id=<s:property value="id"/>"> <s:property value="name"/>(<s:property value="capacity"/>)</a>
										</h2>
										<div class="story-info">
											<span class="info-pinglun">评论:<s:property value="reviewNumber"/>&nbsp;&nbsp;收藏：<s:property value="collectionNumber"/></span>
											<span class="info-xiaoliang">销量:<s:property value="salesVolume+salesVolume2"/></span>
										</div>
									</div>
									<div class="card-extra">
										<div class="card-actions">
											<a class="J_AddToDoulist btn-doulist" href="carts_add?goodsId=<s:property value="id"/>&number=1">加入购物车</a>
											<a class="J_CommodityLikeBtn btn-carditem-like" href="javascript:void(0)">
												加入收藏
											</a>
										</div>
									</div>
								</div>
								
							</li>
							</s:iterator>
							
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				
			</div>
			
			
			
			<!--  右侧导航  -->
			<div id="home_nav_bar" style="display: block;">
				<a href="index_index#skincare" class="nav_floor nf1"></a> 
				<a href="index_index#color" class="nav_floor nf2"></a> 
				 
				<a href="index_index#Body_floor" class="nav_floor nf4"></a> 
				<a href="index_index#Man_floor" class="nav_floor nf5"></a> 
				 
				<!-- <a href="#" class="nav_feedback"></a>--> 
				<a href="javascript:ib_wopen();" rel="nofollow" target="_blank"
					class="nav_service"></a>
			</div>
			<!--  右侧导航 end  -->
		</div>
	</div>
	<!--  contanter end  -->
	<div class="clear"></div>
	
	<div id="footer_container">
		<%@include file="pianduan/footer1.jsp" %>
	</div>
	
	<a id="ibangkf" style="display:none;" href="http://www.ibangkf.com">在线客服</a>
<script language="javascript" src="http://c.ibangkf.com/i/c-laisaohuo.js"></script>

<script>

				//顶部菜单
				$('.top_nav_item').mouseover(function(){
					$(this).children('.header_list').show();
				});
				$('.top_nav_item').mouseout(function(){
					$(this).children('.header_list').hide()
				})
				//顶部轮播部分
				$('.mall_dot').mouseover(function(){
					var t=$(this).html()
					$(this).parent().children().removeClass('mall_dot_hover');
					$(this).addClass('mall_dot_hover')
					$('.bannerWrap').children().hide()
					$('.bannerWrap').children().eq(t-1).show()
					
				});
				$(window).ready(function(){
					setInterval(function(){
						var t=$('.slide_control').children('.mall_dot_hover').html();
						if(t==5){t=1}else{t++}
						$('.mall_dot').eq(t-1).trigger('mouseover')
					},5000);
				})
				</script>
<script type="text/javascript">
				//品牌墙
					var length=$('.af_con ul').children().length
					length/2==0?$('.af_con ul').width(200*(length/2)):$('.af_con ul').width(200*(length+1)/2);
					$('.af_con').mouseover(function(){
						$('#brandList-right').show()
						$('#brandList-left').show()
					})
					$('.af_con').mouseout(function(){
						$('#brandList-right').hide()
						$('#brandList-left').hide()
					})
					$('#brandList-right').click(function(){
						var left=parseInt($('.af_con ul').css('left'))
						var width=$('.af_con ul').width()
						if(left==1200-width){}else{$('.af_con ul').css('left',left-200)}
					})
					$('#brandList-left').click(function(){
						var left=parseInt($('.af_con ul').css('left'))
						var width=$('.af_con ul').width()
						if(left==0){}else{$('.af_con ul').css('left',left+200)}
					})
					</script>
<script>
//大家都喜欢买
$('.sr_list .item').mouseover(function(){
	$(this).parent().children().removeClass('hover')
	$(this).addClass('hover');
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
<script>
$('.card-main').mouseover(function(){
$(this).find('.card-extra').show()
})
$('.card-main').mouseout(function(){
$(this).find('.card-extra').hide()})
</script>
</body>
</html>