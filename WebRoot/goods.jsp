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
	<link rel="stylesheet" href="fontassets/css/jumei_newproduct.min.css">
	<link rel="stylesheet" href="fontassets/css/jiathis_share.css">
    <link rel="stylesheet" href="fontassets/css/jumei_deal_report2.css">
    <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
	<style type="text/css">
	.top_nav_hot{ position: absolute;left:81px;top:-4px;}
	</style>
</head>
<body>
<div id="header_container">
    <div id="logo">
    	<a href="index_index" id="home" title="" style="background:url(fontassets/img/logo_new_v1.jpg) no-repeat top left;"> </a>
        <div id="user_header">
            <ul class="login_header">
					<s:if test="#session.gloablIsLogin==false">
				<li class="login_li"><a href="user_registerInput" rel="nofollow">注册</a><em>|</em></li>
               	<li class="login_li"><a href="user_loginInput" rel="nofollow">登录</a><em>|</em></li>
               	<li class="login_li"><em>|</em><a href="#" rel="nofollow">马上有礼</a></li>
				</s:if>
				<s:if test="#session.gloablIsLogin==true">
				<li class="login_li"><a href="user_order?id=<s:property value="#session.user.id"/>" rel="nofollow">个人中心</a><em>|</em></li>
				<li class="user">欢迎您，<span style="color: #ED145B;"><s:property value="#session.user.username"/></span><span style="padding:0 5px;">[<a href="user_signOut" style="padding:0;">退出</a>]</span><em>|</em></li>
				</s:if>
				</ul>
            <div class="clear"></div>
            <div class="header_logo_all">
					<div id="cart_box"><a id="cart" href="carts_list" rel="nofollow"> <span class="num png"></span> </a>
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
    		<div class="top_nav_item selected"><a href="index_index" class="nav_link">护理商城</a></div>
				<div class="top_nav_item "><a href="group_groupList" class="nav_link">买多成团</a></div>
				<div class="top_nav_item">
					<a href="javascript:void(0)" class="nav_link">会员独享</a>
					<div class="header_list" style="display: none;">
						<a href="#"><span class="newbanner">信息发布</span></a>
					</div>
				</div>
				<div class="top_nav_item"><a href="articles_getArticle?id=1" class="nav_link">用户须知</a></div>
				<div class="top_search_wrap">
					<form action="#" method="get" id="mall_search_form" pos="top">
						<input name="search" type="text" class="top_search_input" id="mall_search_input" lang="zh">
						<button type="submit" id="btn_global_search">搜索</button>
					</form>
				</div>
		</div>
    </div>
</div><!-- end  heander_container  -->

<div id="container">
    <div id="body">
        <div id="detail_top">
            <h1 class="title">
                <span><s:property value="goods.name"/></span>
            </h1>
            <div class="product_info">
                <!--左侧-->
                <div id="d_t_l">
                    <div id="albums">
                        <div class="jqzoom">
                            <img id="product_img" width="350" height="350" src="upload/goodslogo/<s:property value="goods.logo"/>" alt="<s:property value="goods.name"/>">
                            <i class="zoom_icon"></i>
                        </div>
                    </div>
                </div>
                <div class="info">
                    <p class="price">
                        <em class="yen">¥</em>
                        <span id="mall_price"><s:property value="goods.nowPrice"/></span>
                        <span class="label">聚美价</span>
                        <span style="color:#888888;" id="discount">(专柜价<del>￥<span id="info_market_price"><s:property value="goods.price"/></span></del>,为您节省<label>￥</label><s:property value="goods.price-goods.price"/>)</span>
                    </p>
                    <div>
                        <span class="discount" id="discount"></span>
                    </div>
                    <!--活动告知-->
                    <div class="actnotic">
                    	<p>此产品满100元立减30元</p>
                    </div>
                    <div class="sale_count">
                        <label>销量</label>最近<s:property value="goods.salesVolume"/>人已购买
                    </div>
                    <div class="koubei">
                        <label style="float: left;margin-right: 10px;">评分</label>
                        <div class="service_rating small">
                            <div class="rating">
                                <div style="width:<s:property value="goods.score"/>" class="value"><span class="value-title" title="<s:property value="goods.score*10"/>"></span></div>
                            </div>
                        </div>
                        <span>
                            <label style="color:#ed145b;">　<s:property value="goods.score*10"/></label>分&nbsp;(共<a href="#report_deal" title="查看所有口碑">841</a>篇口碑 
                            <a href="#" target="_blank" title="查看所有短评">30532</a>篇短评)
                        </span>
                        <div class="clear"></div>
                    </div>
                    <div class="size" id="product_size">
                        <div class="number_box">
                            <label class="caption">数量</label>
                            <div id="buy_number_input">
                                <span id="decrease_num" title="减少"></span>
                                <input id="buy_number" value="1">
                                <span id="increase_num" title="增加"></span>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="add_cart buyer_button">
                            <a href="javascript:void(0);" class="track_click" id="add_to_shoppingcart" title="加入购物车"></a>
                            <a href="javascript:void(0);" class="ilikewrap" id="btnilike">
                                <span id="ilike_text">收藏</span>
                                <span style="color: #999;">(<span id="ilike_num"><s:property value="goods.collectionNumber"/></span>)</span>
                            </a>
                        </div>
                        <div class="clear"></div>
                        <p class="detail_service">
                            <label>服务</label>
                            <a href="#" target="_blank" title="正品保证" class="con">正品保证</a>
                            <a href="#" target="_blank" title="30天退货" class="con">30天退货</a>
                            <a href="#" target="_blank" class="con" title="买二包邮">买二包邮</a>
                            <a href="#" target="_blank" class="con" title="闪电发货">闪电发货</a>
                            
                            <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
                        </p>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div><!--  detal_top end  -->
        <div id="detail_warp">
            <div id="warp_left" style="width: 100%;">
                <div class="mall_main" style="width: 100%;">
                    <div class="product_desc" style="width: 100%;">                    
                        <ul id="new_deal_tabs" class="new_tabs" style="width: 940px;">
                            <li><a href="good_goods?id=<s:property value="id"/>#specs">商品参数</a></li>
                            <li><a href="good_goods?id=<s:property value="id"/>#details">商品详情</a></li>
                            <li><a href="good_goods?id=<s:property value="id"/>#usage">使用方法</a></li>
                            <li><a href="good_goods?id=<s:property value="id"/>#photos">商品实拍</a></li>
                            <li><a href="good_goods?id=<s:property value="id"/>#reviews">用户口碑</a></li>
                            <li class="buy_tab ">
                                <span class="price"><em>¥</em><s:property value="goods.nowPrice"/></span>
                                <a href="#" target="_blank" class="buy_tab_a"></a>
                            </li>
                        </ul>
                        <div id="detail_info_box">
                            <div class="deal_contents" id="specs">
                                <div class="block_title" id="title_product_parameter">
                                    <img src="fontassets/img/tit_specs.jpg">
                                </div>
                                <s:property value="shop.description"/>
                                <table border="0" cellspacing="0" cellpadding="0" width="660">
                                    <tbody>
                                        <tr>
                                            <td width="85" valign="top"><b>商品名称：</b></td>
                                            <td width="250" valign="top"><span><s:property value="goods.specifications"/></span></td>
                                            <td rowspan="7" align="right" valign="bottom"><img width="307px" height="343px" src="upload/goodslogo/<s:property value="goods.logo"/>" alt="<s:property value="goods.name"/>" border="0"></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>品牌名称：</b></td>
                                            <td valign="top"><span><s:property value="goods.brand.name"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>产品功效：</b></td>
                                            <td valign="top"><span><s:property value="goods.effect.name"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>产品规格：</b></td>
                                            <td valign="top"><span><s:property value="goods.specifications"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>产品容量：</b></td>
                                            <td valign="top"><span><s:property value="goods.rongLiang"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>保存方法：</b></td>
                                            <td valign="top"><span><s:property value="goods.baoCunMethod"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>保质期限：</b></td>
                                            <td valign="top"><span><s:property value="goods.shelfLife"/>（具体日期以实物为准）</span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>生产国家：</b></td>
                                            <td valign="top"><span><s:property value="goods.area"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>乱码说明：</b></td>
                                            <td valign="top"><span><s:property value="goods.luanMa"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>特别声明：</b></td>
                                            <td valign="top"><span><s:property value="goods.teBieShengMing"/></span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="deal_contents" id="details">
                                <div class="block_title" id="title_story">
                                    <img src="fontassets/img/tit_detail.jpg">
                                </div>
                                ${goods.details }
                            </div>
                            <div class="deal_contents" id="usage">
                                <div class="block_title" id="title_usage">
                                    <img src="fontassets/img/tit_usa.jpg">
                                </div>
                                ${goods.usages }
                            </div>
                            <div class="deal_contents" id="photos">
                                <div class="block_title" id="title_real_photo">
                                    <img src="fontassets/img/tit_photo.jpg">
                                </div>
                                <div class="description_images">
                                    ${goods.photos }
                                </div>
                            </div>
                            <div class="deal_contents" id="reviews">
                                <div class="block_title" id="title_real_photo">
                                    <img src="fontassets/img/deal_reviews2.jpg">
                                </div>
                                <div class="description_images">
                                    用户口碑
                                </div>
                            </div>
                            <div class="deal_contents" style="width:920px;">
                            <!-- Duoshuo Comment BEGIN -->
	<div class="ds-thread"></div>
<script type="text/javascript">
var duoshuoQuery = {short_name:"laisaohuo"};
	(function() {
		var ds = document.createElement('script');
		ds.type = 'text/javascript';ds.async = true;
		ds.src = 'http://static.duoshuo.com/embed.js';
		ds.charset = 'UTF-8';
		(document.getElementsByTagName('head')[0] 
		|| document.getElementsByTagName('body')[0]).appendChild(ds);
	})();
	</script>
<!-- Duoshuo Comment END -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div><!--  detal_main  end  -->
    </div>
</div>



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
//将商品添加收藏
$('#btnilike').click(function(){
	var id=<s:property value="goods.id"/>
	var num=$(this).contents().find('#ilike_num').html();
	if(<s:property value="areLogin"/>){
		if(<s:property value="areCollection"/>){
			$.get("good_deleteCollection",{id:id},function(){alert("取消收藏成功。");location.reload()});
		}else{
			$.get("good_addCollection",{id:id},function(){alert("收藏成功。");location.reload()});
		}
	}else{
		alert("请登录");
	}
})
//更改购买数量
 $('#decrease_num').click(function(){
 	if($('#buy_number').val()!=1){
 		$('#buy_number').val(parseInt($('#buy_number').val())-1)
 	}
 });
 $('#increase_num').click(function(){
 	if($('#buy_number').val()!=10){
 		$('#buy_number').val(parseInt($('#buy_number').val())+1)
 	}
 });
</script>
<script type="text/javascript">
  (function(nav){
      var _defautlTop=$(nav).offset().top-$(window).scrollTop();
      var _defaultLeft=$(nav).offset().left-$(window).scrollLeft();
      var _position=$(nav).css('position');
      var _top=$(nav).css('top');
      var _left=$(nav).css('left');
      var _zIndex=$(nav).css('z-index');
      $(window).scroll(function(event) {
          if($(this).scrollTop() > _defautlTop){ 
              $(nav).css({'position':'fixed','top':0,'left':_defaultLeft,'z-index':99999});  
          }else{ 
              $(nav).css({'position':_position,'top':_top,'left':_left,'z-index':_zIndex}); 
          } 
      });
  })('#new_deal_tabs')
</script>
<form id="fun_post_form" style="display:none;" method="post" action="carts_add">
	<input name="goodsId" value="<s:property value="goods.id"/>">
	<input name="number" value="" id="fun_post_number">
</form>
<script>
$('#add_to_shoppingcart').click(function(){
	var number=$('#buy_number').val();
	$('#fun_post_number').val(number);
	$('#fun_post_form').submit();
});
</script>
</body>
</html>