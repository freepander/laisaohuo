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
		<%@include file="pianduan/header1.jsp" %>
	</div>
	<!-- end  heander_container  -->
	<!--  contanter  -->
	<div id="container">
		<div id="body">
			<!--  lun bo  -->
			<div class="mtsBanner" id="mtsBanner" style="position: relative; z-index: 0; overflow: hidden; height: 410px;">
				<div class="slide_control">
					<s:if test='mallCarousel.logo1!=""'><a class="mall_dot mall_dot_hover">1</a></s:if>
					<s:if test='mallCarousel.logo2!=""'><a class="mall_dot">2</a></s:if>
					<s:if test='mallCarousel.logo3!=""'><a class="mall_dot">3</a></s:if>
					<s:if test='mallCarousel.logo4!=""'><a class="mall_dot">4</a></s:if>
					<s:if test='mallCarousel.logo5!=""'><a class="mall_dot">5</a></s:if>
				</div>
				<ul class="bannerWrap">
					<li style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; display: list-item; background-image: url(upload/mallcarousel/<s:property value="mallCarousel.logo1"/>);">
						<div class="banner_main_con"><a href="<s:property value="mallCarousel.name1"/>" target="_blank" class="main_banner_a"></a></div>
					</li>
					<li style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; display: none; background-image: url(upload/mallcarousel/<s:property value="mallCarousel.logo2"/>);">
						<div class="banner_main_con"><a href="<s:property value="mallCarousel.name1"/>" target="_blank" class="main_banner_a"></a></div>
					</li>
					<li style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; display: none; background-image: url(upload/mallcarousel/<s:property value="mallCarousel.logo3"/>);">
						<div class="banner_main_con"><a href="<s:property value="mallCarousel.name1"/>" target="_blank" class="main_banner_a"></a></div>
					</li>
					<li style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; display: none ; background-image: url(upload/mallcarousel/<s:property value="mallCarousel.logo4"/>);">
						<div class="banner_main_con"><a href="<s:property value="mallCarousel.name1"/>" target="_blank" class="main_banner_a"></a></div>
					</li>
					<li style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; display: none ; background-image: url(upload/mallcarousel/<s:property value="mallCarousel.logo5"/>);">
						<div class="banner_main_con"><a href="#" target="_blank" class="main_banner_a"></a></div>
					</li>
				</ul>
				
				<em class="slidearrow slidearrow_l">&lt;</em><em class="slidearrow slidearrow_r">&gt;</em>
			</div>
			<!--  lun bo end  -->
			<!--  中间分类    -->
			<div class="mallTopScreen">
				<div class="mtsCategory" id="mtsCategory">
					<div class="mtsCategory-con">
						<div class="mallCategory" id="mallCategory">
							<h2 class="mc_head">全部分类</h2>
							<div class="mc_content">
								<ul class="mc_items">
									<li class="item" style="border-top:none;"><span class="icon i1"></span>
										<h3><a href="products_listAll?bigCategoryId=1" target="_blank">护肤</a></h3>
										<p><s:iterator value="hufuCategoryList"><a href="products_listAll?bigCategoryId=1&categoryId=<s:property value="id"/>" target="_blank"><s:property value="name"/></a></s:iterator></p>
									</li>
									<li class="item" style="*margin-top: 0px;"><span class="icon i2"></span>
										<h3><a href="products_listAll?bigCategoryId=2" target="_blank">彩妆</a></h3>
										<p><s:iterator value="caizhuangCategoryList"><a href="products_listAll?bigCategoryId=2&categoryId=<s:property value="id"/>" target="_blank"><s:property value="name"/></a></s:iterator></p>
									</li>
									<li class="item"><span class="icon i3"></span>
										<h3><a href="products_listAll?bigCategoryId=3" target="_blank">香氛</a></h3>
										<p><s:iterator value="xiangFenCategoryList"><a href="products_listAll?bigCategoryId=3&categoryId=<s:property value="id"/>" target="_blank"><s:property value="name"/></a></s:iterator></p>
									</li>
									<li class="item"><span class="icon i4"></span>
										<h3><a href="products_listAll?bigCategoryId=4" target="_blank">身体护理</a></h3>
										<p><s:iterator value="shentihuliCategoryList"><a href="products_listAll?bigCategoryId=4&categoryId=<s:property value="id"/>" target="_blank"><s:property value="name"/></a></s:iterator></p>
									</li>
									<li class="item"><span class="icon i6"></span>
										<h3><a href="products_listAll?bigCategoryId=5" target="_blank">美容工具</a></h3>
										<p><s:iterator value="meironggongjuCategoryList"><a href="products_listAll?bigCategoryId=5&categoryId=<s:property value="id"/>" target="_blank"><s:property value="name"/></a></s:iterator></p>
									</li>
									<li class="item"><span class="icon i8"></span>
										<h3 style="position: relative;"><a href="products_listAll?bigCategoryId=6" target="_blank">母婴专区</a></h3>
										<p><s:iterator value="muyingzhuanquCategoryList"><a href="products_listAll?bigCategoryId=6&categoryId=<s:property value="id"/>" target="_blank"><s:property value="name"/></a></s:iterator></p>
									</li>
									<li class="item"><span class="icon i7"></span>
										<h3><a href="products_listAll?bigCategoryId=7" target="_blank">男士专区</a></h3>
										<p><s:iterator value="nanshizhuanquCategoryList"><a href="products_listAll?bigCategoryId=7&categoryId=<s:property value="id"/>" target="_blank"><s:property value="name"/></a></s:iterator></p>
									</li>
									<li class="item" style="border-bottom: none;"><span class="icon i9"></span>
										<h3><a href="products_listAll?bigCategoryId=8" target="_blank">食品保健</a></h3>
										<p><s:iterator value="shipinbaojianCategoryList"><a href="products_listAll?bigCategoryId=8&categoryId=<s:property value="id"/>" target="_blank"><s:property value="name"/></a></s:iterator></p>
									</li>
								</ul>
							</div>
						</div>
						<div class="subCategory" id="subCategory" style="top:28px; left: 240px;">
							<div class="subc_con" style="display:none;">
								<div class="fl sub_cat_con">
									<s:iterator value="hufuCategoryList">
									<div class="sub_row">
										<div class="sub_item">
											<h2>
												<a href="#" target="_blank">洁面</a>
											</h2>
											<p class="sub_item_cate">
												<a href="#" target="_blank">洁面乳</a>
                    						</p>
                						</div>
									</div>
									</s:iterator>
									<div class="sub_row">
						                <div class="sub_item">
						                    <h2>
						                        <a href="#" target="_blank">乳液</a>
						                    </h2>
						                    <p class="sub_item_cate">
						                        <a href="#" target="_blank">乳液</a>
						                    </p>
						                </div>
            						</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--正品联盟-->
				<div id="authorize_floor">
					<div class="floor_head clearfix">
						<div class="fl au_tabnav" id="fun_au_tabnav">
						<s:iterator value="brandCategoryList" status="st">
							<s:if test="#st.index==0"><span data-tab="<s:property value="#st.index"/>" class="hover"><s:property value="name"/><b class="arrow"></b></span></s:if>
							<s:if test="#st.index!=0"><span data-tab="<s:property value="#st.index"/>"><s:property value="name"/><b class="arrow"></b></span></s:if>
						</s:iterator>
						</div>
					</div>
					
					<div class="floor_con" id="fun_floor_con" style="height: 300px;">
						<s:iterator value="brandCategoryList" status="st">
						<div class="af_con"<s:if test="#st.index==0"> style="display: block;"</s:if><s:if test="#st.index!=0"> style="display: none;"</s:if>>
							<ul>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand1.id"/>"><img src="upload/brand/<s:property value="pic1"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand2.id"/>"><img src="upload/brand/<s:property value="pic2"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand3.id"/>"><img src="upload/brand/<s:property value="pic3"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand4.id"/>"><img src="upload/brand/<s:property value="pic4"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand5.id"/>"><img src="upload/brand/<s:property value="pic5"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand6.id"/>"><img src="upload/brand/<s:property value="pic6"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand7.id"/>"><img src="upload/brand/<s:property value="pic7"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand8.id"/>"><img src="upload/brand/<s:property value="pic8"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand9.id"/>"><img src="upload/brand/<s:property value="pic9"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand10.id"/>"><img src="upload/brand/<s:property value="pic10"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand11.id"/>"><img src="upload/brand/<s:property value="pic11"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand12.id"/>"><img src="upload/brand/<s:property value="pic12"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand13.id"/>"><img src="upload/brand/<s:property value="pic13"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand14.id"/>"><img src="upload/brand/<s:property value="pic14"/>" style="margin-left: 0px;"></a></li>
								<li><a target="_blank" href="products_listAll?brandId=<s:property value="brand15.id"/>"><img src="upload/brand/<s:property value="pic15"/>" style="margin-left: 0px;"></a></li>
							</ul>
						</div>
						</s:iterator>
					</div>
				</div>
				<!--正品联盟结束-->
				<div class="clear"></div>
			</div>
			<!--  护肤 start  -->
			<div id="skincare" class="floor">
				<div class="floor_head">
					<h3>SKINCARE 护肤</h3>
					<ul class="fh_cate">
						<s:iterator value="hufuEffectList">
						<li><a href="products_listAll?bigCategoryId=1&effectId=<s:property value="id"/>" target="_blank" rel="nofollow"><s:property value="name"/></a></li>	
						</s:iterator>
					</ul>
					<a href="products_listAll?bigCategoryId=1" class="more" target="_blank">去护肤馆</a>
				</div>
				<div class="floor_con" style="height: 590px;">
					<div class="fc_l fl">
						<div class="fc_sale_rank">
							<h3>大家都喜欢买</h3>
							<div class="sr_list">
								<ul>
								<s:iterator value="hufuGoodsList" status="st">
									<s:if test="#st.index==0">
									<li class="item hover">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>
									<s:if test="#st.index!=0">
									<li class="item">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>									
								</s:iterator>
								</ul>
							</div>
						</div>
					</div>
					<div class="fc_main fl" style="height: 570px;">
						<div style="left:0px; top: 0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="hufu.goods1.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic1"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:0px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="hufu.goods2.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic2"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="hufu.goods3.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic3"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:565px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="hufu.goods4.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic4"/>" class="lazy_img" style="width:185px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="hufu.goods5.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic5"/>" class="lazy_img" style="width:380px; height: 380px;"> </a>
						</div>
						<div style="left:0px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="hufu.goods6.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic6"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="hufu.goods7.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic7"/>" class="lazy_img" style="width:190px; height: 190px"> </a>
						</div>
						<div style="left:375px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="hufu.goods8.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic8"/>" class="lazy_img" style="width: 190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="hufu.goods9.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic9"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:0; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="hufu.goods10.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic10"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:190px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="hufu.goods11.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic11"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:380px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="hufu.goods12.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="hufu.pic12"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="floor_con_koubei koubei">
					<ul id="skincare_koubei_slider" class="koubei_slider" style="list-style: none; position: relative; overflow: hidden; padding: 0px; width: 1198px; height: 98px; display: block;">
						<li class="clearfix slide-node slide-node-0" style="">
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit"><a target="_blank" title="尊贵身份给予肌肤更好享受" href="#">尊贵身份给予肌肤更好享受</a></p>
									<p class="rat"><span style="width:94%"></span></p>
									<p class="con"><a target="_blank" href="#">作为海蓝之谜面霜家族中的一员，海蓝之谜精华乳液也蕴含同等...阅读全文</a></p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit"><a target="_blank" title="温和美白、快速补水王者" href="http://koubei.jumei.com/review_U22b4325d4682412b.html?from=mall_index_skinkoubei_pos2">温和美白、快速补水王者</a></p>
									<p class="rat"><span style="width:94%"></span></p>
									<p class="con"><a target="_blank" href="#">使用兰芝臻白修护系列已经有两年多的时间了，起初是邻居家姐...阅读全文</a></p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/011/516/11516539-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit"><a target="_blank" title="姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事" href="#">姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事</a></p>
									<p class="rat"><span style="width:100%"></span></p>
									<p class="con"><a target="_blank" href="#">这篇报告原本是应该昨天写的&nbsp; 由于传错照片 八音就写的水...阅读全文</a></p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/005/924/5924304-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit"><a target="_blank" title="#聚美大咖秀之最In护肤秀#" 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！="" href="#">#聚美大咖秀之最In护肤秀# 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！</a></p>
									<p class="rat"><span style="width:100%"></span></p>
									<p class="con"><a target="_blank" href="#">人家晒幸福，我来晒订单，一样幸福 225g欣兰黑里透白冻...阅读全文</a></p>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="floor_bottom">
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand1.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="hufu.brandpic1"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand2.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="hufu.brandpic2"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand3.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="hufu.brandpic3"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand4.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="hufu.brandpic4"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand5.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="hufu.brandpic5"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand6.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="hufu.brandpic6"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand7.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="hufu.brandpic7"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand8.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="hufu.brandpic8"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand9.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="hufu.brandpic9"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand10.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="hufu.brandpic10"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=1&brandId=<s:property value="hufu.brand11.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="hufu.brandpic11"/>"> 
					</a> 
				</div>
			</div>
			<!--  彩妆  -->
			<div id="color" class="floor">
				<div class="floor_head">
					<h3>彩妆</h3>
					<ul class="fh_cate">
						<s:iterator value="caizhuangEffectList">
						<li><a href="products_listAll?bigCategoryId=2&effectId=<s:property value="id"/>" target="_blank" rel="nofollow"><s:property value="name"/></a></li>	
						</s:iterator>
					</ul>
					<a href="products_listAll?bigCategoryId=2" class="more" target="_blank">去彩妆馆</a>
				</div>
				<div class="floor_con" style="height: 590px;">
					<div class="fc_l fl">
						<div class="fc_sale_rank">
							<h3>大家都喜欢买</h3>
							<div class="sr_list">
								<ul>
								<s:iterator value="caizhuangGoodsList" status="st">
									<s:if test="#st.index==0">
									<li class="item hover">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>
									<s:if test="#st.index!=0">
									<li class="item">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>									
								</s:iterator>
								</ul>
							</div>
						</div>
					</div>
					<div class="fc_main fl" style="height: 570px;">
						<div style="left:0px; top: 0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="caizhuang.goods1.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic1"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:0px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="caizhuang.goods2.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic2"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="caizhuang.goods3.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic3"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:565px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="caizhuang.goods4.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic4"/>" class="lazy_img" style="width:185px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="caizhuang.goods5.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic5"/>" class="lazy_img" style="width:380px; height: 380px;"> </a>
						</div>
						<div style="left:0px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="caizhuang.goods6.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic6"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="caizhuang.goods7.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic7"/>" class="lazy_img" style="width:190px; height: 190px"> </a>
						</div>
						<div style="left:375px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="caizhuang.goods8.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic8"/>" class="lazy_img" style="width: 190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="caizhuang.goods9.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic9"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:0; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="caizhuang.goods10.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic10"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:190px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="caizhuang.goods11.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic11"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:380px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="caizhuang.goods12.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="caizhuang.pic12"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="floor_con_koubei koubei">
					<ul id="skincare_koubei_slider" class="koubei_slider" style="list-style: none; position: relative; overflow: hidden; padding: 0px; width: 1198px; height: 98px; display: block;">
						<li class="clearfix slide-node slide-node-0" style="">
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="尊贵身份给予肌肤更好享受" href="#">尊贵身份给予肌肤更好享受</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">作为海蓝之谜面霜家族中的一员，海蓝之谜精华乳液也蕴含同等...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="温和美白、快速补水王者" href="http://koubei.jumei.com/review_U22b4325d4682412b.html?from=mall_index_skinkoubei_pos2">温和美白、快速补水王者</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">使用兰芝臻白修护系列已经有两年多的时间了，起初是邻居家姐...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/011/516/11516539-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事" href="#">姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">这篇报告原本是应该昨天写的&nbsp; 由于传错照片 八音就写的水...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ue6afee3a575f5d00" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/005/924/5924304-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="#聚美大咖秀之最In护肤秀#" 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！="" href="#">#聚美大咖秀之最In护肤秀# 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">人家晒幸福，我来晒订单，一样幸福 225g欣兰黑里透白冻...阅读全文</a>
									</p>
								</div>
							</div></li>
					</ul>
				</div>
				<div class="floor_bottom">
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand1.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic1"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand2.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic2"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand3.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic3"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand4.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic4"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand5.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic5"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand6.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic6"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand7.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic7"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand8.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic8"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand9.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic9"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand10.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic10"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=2&brandId=<s:property value="hufu.brand11.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="caizhuang.brandpic11"/>"> 
					</a> 
				</div>
			</div>
			<!--  彩妆 end  -->
			<div id="ferfuem_floor" class="floor">
				<div class="floor_head">
					<h3>香氛</h3>
					<ul class="fh_cate">
						<s:iterator value="xiangfenEffectList">
						<li><a href="products_listAll?bigCategoryId=3&effectId=<s:property value="id"/>" target="_blank" rel="nofollow"><s:property value="name"/></a></li>	
						</s:iterator>
					</ul>
					<a href="products_listAll?bigCategoryId=3" class="more" target="_blank">去护肤馆</a>
				</div>
				<div class="floor_con" style="height: 590px;">
					<div class="fc_l fl">
						<div class="fc_sale_rank">
							<h3>大家都喜欢买</h3>
							<div class="sr_list">
								<ul>
									<s:iterator value="xiangfenGoodsList" status="st">
									<s:if test="#st.index==0">
									<li class="item hover">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>
									<s:if test="#st.index!=0">
									<li class="item">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>									
								</s:iterator>
								</ul>
							</div>
						</div>
					</div>
					<div class="fc_main fl" style="height: 570px;">
						<div style="left:0px; top: 0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="xiangfen.goods1.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic1"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:0px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="xiangfen.goods2.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic2"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="xiangfen.goods3.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic3"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:565px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="xiangfen.goods4.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic4"/>" class="lazy_img" style="width:185px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="xiangfen.goods5.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic5"/>" class="lazy_img" style="width:380px; height: 380px;"> </a>
						</div>
						<div style="left:0px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="xiangfen.goods6.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic6"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="xiangfen.goods7.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic7"/>" class="lazy_img" style="width:190px; height: 190px"> </a>
						</div>
						<div style="left:375px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="xiangfen.goods8.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic8"/>" class="lazy_img" style="width: 190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="xiangfen.goods9.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic9"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:0; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="xiangfen.goods10.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic10"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:190px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="xiangfen.goods11.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic11"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:380px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="xiangfen.goods12.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="xiangfen.pic12"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="floor_con_koubei koubei">
					<ul id="skincare_koubei_slider" class="koubei_slider" style="list-style: none; position: relative; overflow: hidden; padding: 0px; width: 1198px; height: 98px; display: block;">
						<li class="clearfix slide-node slide-node-0" style="">
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="尊贵身份给予肌肤更好享受" href="#">尊贵身份给予肌肤更好享受</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">作为海蓝之谜面霜家族中的一员，海蓝之谜精华乳液也蕴含同等...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="温和美白、快速补水王者" href="http://koubei.jumei.com/review_U22b4325d4682412b.html?from=mall_index_skinkoubei_pos2">温和美白、快速补水王者</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">使用兰芝臻白修护系列已经有两年多的时间了，起初是邻居家姐...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/011/516/11516539-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事" href="#">姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">这篇报告原本是应该昨天写的&nbsp; 由于传错照片 八音就写的水...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ue6afee3a575f5d00" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/005/924/5924304-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="#聚美大咖秀之最In护肤秀#" 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！="" href="#">#聚美大咖秀之最In护肤秀# 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">人家晒幸福，我来晒订单，一样幸福 225g欣兰黑里透白冻...阅读全文</a>
									</p>
								</div>
							</div></li>
					</ul>
				</div>
				<div class="floor_bottom">
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand1.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic1"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand2.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic2"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand3.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic3"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand4.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic4"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand5.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic5"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand6.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic6"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand7.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic7"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand8.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic8"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand9.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic9"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand10.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic10"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=3&brandId=<s:property value="hufu.brand11.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="xiangfen.brandpic11"/>"> 
					</a> 
				</div>
			</div>
			<!--  身体护理 start  -->
			<div id="Body_floor" class="floor">
				<div class="floor_head">
					<h3>身体护理</h3>
					<ul class="fh_cate">
						<s:iterator value="huliEffectList">
						<li><a href="products_listAll?bigCategoryId=4&effectId=<s:property value="id"/>" target="_blank" rel="nofollow"><s:property value="name"/></a></li>	
						</s:iterator>
					</ul>
					<a href="products_listAll?bigCategoryId=4" class="more" target="_blank">去身体护理馆</a>
				</div>
				<div class="floor_con" style="height: 590px;">
					<div class="fc_l fl">
						<div class="fc_sale_rank">
							<h3>大家都喜欢买</h3>
							<div class="sr_list">
								<ul>
									<s:iterator value="huliGoodsList" status="st">
									<s:if test="#st.index==0">
									<li class="item hover">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>
									<s:if test="#st.index!=0">
									<li class="item">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>									
								</s:iterator>
								</ul>
							</div>
						</div>
					</div>
					<div class="fc_main fl" style="height: 570px;">
						<div style="left:0px; top: 0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="huli.goods1.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic1"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:0px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="huli.goods2.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic2"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="huli.goods3.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic3"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:565px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="huli.goods4.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic4"/>" class="lazy_img" style="width:185px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="huli.goods5.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic5"/>" class="lazy_img" style="width:380px; height: 380px;"> </a>
						</div>
						<div style="left:0px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="huli.goods6.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic6"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="huli.goods7.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic7"/>" class="lazy_img" style="width:190px; height: 190px"> </a>
						</div>
						<div style="left:375px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="huli.goods8.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic8"/>" class="lazy_img" style="width: 190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="huli.goods9.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic9"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:0; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="huli.goods10.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic10"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:190px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="huli.goods11.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic11"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:380px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="huli.goods12.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="huli.pic12"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="floor_con_koubei koubei">
					<ul id="skincare_koubei_slider" class="koubei_slider" style="list-style: none; position: relative; overflow: hidden; padding: 0px; width: 1198px; height: 98px; display: block;">
						<li class="clearfix slide-node slide-node-0" style="">
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="尊贵身份给予肌肤更好享受" href="#">尊贵身份给予肌肤更好享受</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">作为海蓝之谜面霜家族中的一员，海蓝之谜精华乳液也蕴含同等...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="温和美白、快速补水王者" href="http://koubei.jumei.com/review_U22b4325d4682412b.html?from=mall_index_skinkoubei_pos2">温和美白、快速补水王者</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">使用兰芝臻白修护系列已经有两年多的时间了，起初是邻居家姐...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/011/516/11516539-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事" href="#">姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">这篇报告原本是应该昨天写的&nbsp; 由于传错照片 八音就写的水...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ue6afee3a575f5d00" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/005/924/5924304-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="#聚美大咖秀之最In护肤秀#" 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！="" href="#">#聚美大咖秀之最In护肤秀# 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">人家晒幸福，我来晒订单，一样幸福 225g欣兰黑里透白冻...阅读全文</a>
									</p>
								</div>
							</div></li>
					</ul>
				</div>
				<div class="floor_bottom">
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand1.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="huli.brandpic1"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand2.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="huli.brandpic2"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand3.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="huli.brandpic3"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand4.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="huli.brandpic4"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand5.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="huli.brandpic5"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand6.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="huli.brandpic6"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand7.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="huli.brandpic7"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand8.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="huli.brandpic8"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand9.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="huli.brandpic9"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand10.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="huli.brandpic10"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=4&brandId=<s:property value="hufu.brand11.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="huli.brandpic11"/>"> 
					</a> 
				</div>
			</div>
			<!--  男士专区 start  -->
			<div id="Man_floor" class="floor">
				<div class="floor_head">
					<h3>男士专区</h3>
					<ul class="fh_cate">
						<s:iterator value="nanshiEffectList">
						<li><a href="products_listAll?bigCategoryId=7&effectId=<s:property value="id"/>" target="_blank" rel="nofollow"><s:property value="name"/></a></li>	
						</s:iterator>
					</ul>
					<a href="products_listAll?bigCategoryId=7" class="more" target="_blank">去男士馆</a>
				</div>
				<div class="floor_con" style="height: 590px;">
					<div class="fc_l fl">
						<div class="fc_sale_rank">
							<h3>大家都喜欢买</h3>
							<div class="sr_list">
								<ul>
									<s:iterator value="nanshiGoodsList" status="st">
									<s:if test="#st.index==0">
									<li class="item hover">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>
									<s:if test="#st.index!=0">
									<li class="item">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>									
								</s:iterator>
								</ul>
							</div>
						</div>
					</div>
					<div class="fc_main fl" style="height: 570px;">
						<div style="left:0px; top: 0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="nanshi.goods1.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic1"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:0px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="nanshi.goods2.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic2"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="nanshi.goods3.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic3"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:565px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="nanshi.goods4.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic4"/>" class="lazy_img" style="width:185px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="nanshi.goods5.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic5"/>" class="lazy_img" style="width:380px; height: 380px;"> </a>
						</div>
						<div style="left:0px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="nanshi.goods6.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic6"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="nanshi.goods7.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic7"/>" class="lazy_img" style="width:190px; height: 190px"> </a>
						</div>
						<div style="left:375px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="nanshi.goods8.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic8"/>" class="lazy_img" style="width: 190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="nanshi.goods9.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic9"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:0; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="nanshi.goods10.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic10"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:190px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="nanshi.goods11.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic11"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:380px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="nanshi.goods12.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="nanshi.pic12"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="floor_con_koubei koubei">
					<ul id="skincare_koubei_slider" class="koubei_slider" style="list-style: none; position: relative; overflow: hidden; padding: 0px; width: 1198px; height: 98px; display: block;">
						<li class="clearfix slide-node slide-node-0" style="">
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="尊贵身份给予肌肤更好享受" href="#">尊贵身份给予肌肤更好享受</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">作为海蓝之谜面霜家族中的一员，海蓝之谜精华乳液也蕴含同等...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="温和美白、快速补水王者" href="http://koubei.jumei.com/review_U22b4325d4682412b.html?from=mall_index_skinkoubei_pos2">温和美白、快速补水王者</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">使用兰芝臻白修护系列已经有两年多的时间了，起初是邻居家姐...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/011/516/11516539-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事" href="#">姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">这篇报告原本是应该昨天写的&nbsp; 由于传错照片 八音就写的水...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ue6afee3a575f5d00" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/005/924/5924304-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="#聚美大咖秀之最In护肤秀#" 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！="" href="#">#聚美大咖秀之最In护肤秀# 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">人家晒幸福，我来晒订单，一样幸福 225g欣兰黑里透白冻...阅读全文</a>
									</p>
								</div>
							</div></li>
					</ul>
				</div>
				<div class="floor_bottom">
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand1.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic1"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand2.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic2"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand3.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic3"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand4.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic4"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand5.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic5"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand6.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic6"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand7.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic7"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand8.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic8"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand9.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic9"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand10.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic10"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=7&brandId=<s:property value="hufu.brand11.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="nanshi.brandpic11"/>"> 
					</a> 
				</div>
			</div>
			<!--  母婴 start  -->
			<div id="milk_floor" class="floor">
				<div class="floor_head">
					<h3>母婴</h3>
					<ul class="fh_cate">
						<s:iterator value="muyingEffectList">
						<li><a href="products_listAll?bigCategoryId=6&effectId=<s:property value="id"/>" target="_blank" rel="nofollow"><s:property value="name"/></a></li>	
						</s:iterator>
					</ul>
					<a href="products_listAll?bigCategoryId=6" class="more" target="_blank">去母婴馆</a>
				</div>
				<div class="floor_con" style="height: 590px;">
					<div class="fc_l fl">
						<div class="fc_sale_rank">
							<h3>大家都喜欢买</h3>
							<div class="sr_list">
								<ul>
									<s:iterator value="muyingGoodsList" status="st">
									<s:if test="#st.index==0">
									<li class="item hover">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>
									<s:if test="#st.index!=0">
									<li class="item">
										<p class="clearfix tit">
											<em class="fl"><s:property value="#st.index+1"/></em> 
											<a target="_blank" title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="fl"><s:property value="name"/></a>
										</p>
										<div class="sr_con">
											<a title="<s:property value="name"/>" href="good_goods?id=<s:property value="id"/>" class="sr_img" target="_blank"> <img src="upload/goodslogo/<s:property value="logo"/>" alt="<s:property value="name"/>"> </a>
											<p class="text">
												￥<s:property value="nowPrice"/><span>48618篇评价</span>
											</p>
										</div>
									</li>
									</s:if>									
								</s:iterator>
								</ul>
							</div>
						</div>
					</div>
					<div class="fc_main fl" style="height: 570px;">
						<div style="left:0px; top: 0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="muying.goods1.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic1"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:0px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="muying.goods2.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic2"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="muying.goods3.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic3"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="left:565px; top:190px;" class="maskitem">
							<a href="good_goods?id=<s:property value="muying.goods4.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic4"/>" class="lazy_img" style="width:185px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:0px;" class="maskitem">
							<a href="good_goods?id=<s:property value="muying.goods5.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic5"/>" class="lazy_img" style="width:380px; height: 380px;"> </a>
						</div>
						<div style="left:0px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="muying.goods6.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic6"/>" class="lazy_img" style="width:190px; height: 190px;"> </a>
						</div>
						<div style="left:185px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="muying.goods7.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic7"/>" class="lazy_img" style="width:190px; height: 190px"> </a>
						</div>
						<div style="left:375px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="muying.goods8.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic8"/>" class="lazy_img" style="width: 190px; height: 190px;"> </a>
						</div>
						<div style="left:565px; top:380px;" class="maskitem">
							<a href="good_goods?id=<s:property value="muying.goods9.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic9"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:0; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="muying.goods10.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic10"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:190px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="muying.goods11.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic11"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
						<div style="top:380px; left:750px;" class="maskitem mall_hide">
							<a href="good_goods?id=<s:property value="muying.goods12.id"/>" target="_blank" class="layout"> <img src="upload/bigcategory/<s:property value="muying.pic12"/>" class="lazy_img" style="width:185px; height: 190px"> </a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="floor_con_koubei koubei">
					<ul id="skincare_koubei_slider" class="koubei_slider" style="list-style: none; position: relative; overflow: hidden; padding: 0px; width: 1198px; height: 98px; display: block;">
						<li class="clearfix slide-node slide-node-0" style="">
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="尊贵身份给予肌肤更好享受" href="#">尊贵身份给予肌肤更好享受</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">作为海蓝之谜面霜家族中的一员，海蓝之谜精华乳液也蕴含同等...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="温和美白、快速补水王者" href="http://koubei.jumei.com/review_U22b4325d4682412b.html?from=mall_index_skinkoubei_pos2">温和美白、快速补水王者</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">使用兰芝臻白修护系列已经有两年多的时间了，起初是邻居家姐...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/011/516/11516539-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事" href="#">姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">这篇报告原本是应该昨天写的&nbsp; 由于传错照片 八音就写的水...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ue6afee3a575f5d00" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/005/924/5924304-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="#聚美大咖秀之最In护肤秀#" 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！="" href="#">#聚美大咖秀之最In护肤秀# 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">人家晒幸福，我来晒订单，一样幸福 225g欣兰黑里透白冻...阅读全文</a>
									</p>
								</div>
							</div></li>
					</ul>
				</div>
				<div class="floor_bottom">
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand1.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="muying.brandpic1"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand2.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="muying.brandpic2"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand3.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="muying.brandpic3"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand4.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="muying.brandpic4"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand5.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="muying.brandpic5"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand6.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="muying.brandpic6"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand7.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="muying.brandpic7"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand8.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="muying.brandpic8"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand9.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="muying.brandpic9"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand10.id"/>" target="_blank">
						<img src="upload/bigcategory/<s:property value="muying.brandpic10"/>"> 
					</a> 
					<a href="products_listAll?bigCategoryId=6&brandId=<s:property value="hufu.brand11.id"/>" target="_blank"> 
						<img src="upload/bigcategory/<s:property value="muying.brandpic11"/>"> 
					</a> 
				</div>
			</div>
			<!-- 护肤心得  -->
			<div class="floor">
				<div class="floor_head">
					<h3 style="background: none; color: #000; text-indent: 0; font-size: 20px; line-height: 60px; padding-left: 20px;">护肤心得</h3>
					<ul class="fh_cate">

					</ul>
					<a href="http://mall.jumei.com/products/0-1-0.html?from=mall_index_skin" class="more" target="_blank">查看全部</a>
				</div>
				<div class="floor_con_koubei koubei">
					<ul id="skincare_koubei_slider" class="koubei_slider" style="list-style: none; position: relative; overflow: hidden; padding: 0px; width: 1198px; height: 98px; display: block;">
						<li class="clearfix slide-node slide-node-0" style="">
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="尊贵身份给予肌肤更好享受" href="#">尊贵身份给予肌肤更好享受</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">作为海蓝之谜面霜家族中的一员，海蓝之谜精华乳液也蕴含同等...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="温和美白、快速补水王者" href="http://koubei.jumei.com/review_U22b4325d4682412b.html?from=mall_index_skinkoubei_pos2">温和美白、快速补水王者</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">使用兰芝臻白修护系列已经有两年多的时间了，起初是邻居家姐...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/011/516/11516539-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事" href="#">姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">这篇报告原本是应该昨天写的&nbsp; 由于传错照片 八音就写的水...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ue6afee3a575f5d00" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/005/924/5924304-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="#聚美大咖秀之最In护肤秀#" 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！="" href="#">#聚美大咖秀之最In护肤秀# 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">人家晒幸福，我来晒订单，一样幸福 225g欣兰黑里透白冻...阅读全文</a>
									</p>
								</div>
							</div></li>
					</ul>
				</div>
			</div>
			<!--  生活窍门   -->
			<div class="floor">
				<div class="floor_head">
					<h3 style="background: none; color: #000; text-indent: 0; font-size: 20px; line-height: 60px; padding-left: 20px;">生活窍门</h3>
					<ul class="fh_cate">

					</ul>
					<a href="http://mall.jumei.com/products/0-1-0.html?from=mall_index_skin" class="more" target="_blank">查看全部</a>
				</div>
				<div class="floor_con_koubei koubei">
					<ul id="skincare_koubei_slider" class="koubei_slider" style="list-style: none; position: relative; overflow: hidden; padding: 0px; width: 1198px; height: 98px; display: block;">
						<li class="clearfix slide-node slide-node-0" style="">
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="尊贵身份给予肌肤更好享受" href="#">尊贵身份给予肌肤更好享受</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">作为海蓝之谜面霜家族中的一员，海蓝之谜精华乳液也蕴含同等...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ud5b593d0710127db" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/001/084/1084219-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="温和美白、快速补水王者" href="http://koubei.jumei.com/review_U22b4325d4682412b.html?from=mall_index_skinkoubei_pos2">温和美白、快速补水王者</a>
									</p>
									<p class="rat">
										<span style="width:94%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">使用兰芝臻白修护系列已经有两年多的时间了，起初是邻居家姐...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="#" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/011/516/11516539-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事" href="#">姐妹花报告——八音课堂开课啦~~兰蔻日霜与倩碧黄油的故事</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">这篇报告原本是应该昨天写的&nbsp; 由于传错照片 八音就写的水...阅读全文</a>
									</p>
								</div>
							</div>
							<div class="clearfix item">
								<a href="http://koubei.jumei.com/user/Ue6afee3a575f5d00" class="pic fl" target="_blank"> <img src="http://images2.jumei.com/user_avatar/005/924/5924304-64.jpg"> </a>
								<div class="fl fck_con">
									<p class="tit">
										<a target="_blank" title="#聚美大咖秀之最In护肤秀#" 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！="" href="#">#聚美大咖秀之最In护肤秀# 专门针对黑头毛孔粗大,肌肤暗黄的超强面膜，达人们的选择！</a>
									</p>
									<p class="rat">
										<span style="width:100%"></span>
									</p>
									<p class="con">
										<a target="_blank" href="#">人家晒幸福，我来晒订单，一样幸福 225g欣兰黑里透白冻...阅读全文</a>
									</p>
								</div>
							</div></li>
					</ul>
				</div>
			</div>
			<!--  生活窍门   end-->
			<!--  右侧导航  -->
			<div id="home_nav_bar" style="display: block;">
				<a href="index_index#skincare" class="nav_floor nf1"></a> <a href="index_index#color" class="nav_floor nf2"></a> <a href="index_index#ferfuem_floor" class="nav_floor nf3"></a> <a href="index_index#Body_floor" class="nav_floor nf4"></a> <a href="index_index#Man_floor" class="nav_floor nf5"></a> <a href="index_index#milk_floor" class="nav_floor nf6"></a> <!-- <a href="#" class="nav_feedback"></a>--> <a href="javascript:ib_wopen();" rel="nofollow" target="_blank"
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
					$('#fun_au_tabnav span').mouseover(function(){
						$(this).parent().children().removeClass('hover');
						$(this).addClass('hover')
						var i=$(this).attr('data-tab');
						$('#fun_floor_con').children().hide();
						$('#fun_floor_con').children().eq(i).show()
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
//顶部导航条
$('.fc_main .maskitem').mouseover(function(){
	$(this).parent().children().removeClass('hover')
	$(this).addClass('hover');
});
</script>
</body>
</html>