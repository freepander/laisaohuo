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
	<%@include file="pianduan/header_common.jsp" %>
</div><!-- end  heander_container  -->

<div id="container">
    <div id="body">
        <div id="detail_top">
            <h1 class="title">
                <span><s:property value="goods.name"/>(<s:property value="goods.capacity"/>)</span>
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
                        <s:if test="goods.discount==1"><span id="mall_price"><s:property value="goods.nowPrice"/></span></s:if>
                        <s:if test="goods.discount<1"><span style="color:#FF9900;text-decoration:line-through;"><s:property value="goods.price"/></span>&nbsp;&nbsp;<span id="mall_price"><s:property value="goods.discountPrice"/></span></s:if> </span>
                        <span class="label">售价</span>
                        <span style="color:#888888;" id="discount"></span>
                    </p>
                    <div>
                        <span class="discount" id="discount"></span>
                    </div>
                    <!--活动告知-->
                    <!--
                    <div class="actnotic">
                    	<p>此产品满100元立减30元</p>
                    </div>
                  	-->
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
                            <label style="color:#ed145b;">　<s:property value="goods.score*10"/></label>分&nbsp;(共<a href="#report_deal" title="查看所有评论"><s:property value="goods.reviewNumber"/></a>个评论 )
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
                            <!--
                            <label>服务</label>
                            <a href="#" target="_blank" title="正品保证" class="con">正品保证</a>
                            <a href="#" target="_blank" title="30天退货" class="con">30天退货</a>
                            <a href="#" target="_blank" class="con" title="买二包邮">买二包邮</a>
                            <a href="#" target="_blank" class="con" title="闪电发货">闪电发货</a>
                             
                             -->
                            <div class="bdsharebuttonbox">
                            	<a href="#" class="bds_more" data-cmd="more"></a>
                            	<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                            	<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                            	<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
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
                            <s:if test='!goods.details==""'>
                            <li><a href="good_goods?id=<s:property value="id"/>#details">商品详情</a></li>
                            </s:if>
                            <s:if test='!goods.usages==""'>
                            <li><a href="good_goods?id=<s:property value="id"/>#usage">使用方法</a></li>
                            </s:if>
                            <s:if test='!goods.photos==""'>
                            <li><a href="good_goods?id=<s:property value="id"/>#photos">商品实拍</a></li>
                            </s:if>
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
                                            <td width="250" valign="top"><s:property value="goods.name"/>(<s:property value="goods.capacity"/>)</td>
                                            <td rowspan="7" align="right" valign="bottom"><img width="307px" height="343px" src="upload/goodslogo/<s:property value="goods.logo"/>" alt="<s:property value="goods.name"/>" border="0"></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>品牌名称：</b></td>
                                            <td valign="top"><span><s:property value="goods.brand.name"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>产品功效：</b></td>
                                            <td valign="top"><s:iterator value="goods.effectList">
                                            <span><s:property value="name"/></span>
                                            </s:iterator></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>产品规格：</b></td>
                                            <td valign="top"><span><s:property value="goods.spec"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>产品容量：</b></td>
                                            <td valign="top"><span><s:property value="goods.capacity"/></span></td>
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
                                        <s:if test='teBieShengMing!=""'>
                                        <tr>
                                            <td valign="top"><b>特别声明：</b></td>
                                            <td valign="top"><span><s:property value="goods.teBieShengMing"/></span></td>
                                        </tr>
                                        </s:if>
                                    </tbody>
                                </table>
                            </div>
                            <s:if test='!goods.details==""'>
                            <div class="deal_contents" id="details">
                                <div class="block_title" id="title_story">
                                    <img src="fontassets/img/tit_detail.jpg">
                                </div>
                                ${goods.details }
                            </div>
                            </s:if>
                            <s:if test='!goods.usages==""'>
                            <div class="deal_contents" id="usage">
                                <div class="block_title" id="title_usage">
                                    <img src="fontassets/img/tit_usa.jpg">
                                </div>
                                ${goods.usages }
                            </div>
                            </s:if>
                            <s:if test='!goods.photos==""'>
                            <div class="deal_contents" id="photos">
                                <div class="block_title" id="title_real_photo">
                                    <img src="fontassets/img/tit_photo.jpg">
                                </div>
                                <div class="description_images">
                                    ${goods.photos }
                                </div>
                            </div>
                            </s:if>
                            <div class="deal_contents" id="reviews">
                                <div class="block_title" id="title_real_photo">
                                    <img src="fontassets/img/deal_reviews2.jpg">
                                </div>
                                <div class="description_images">
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
    <%@include file="pianduan/footer1.jsp" %>
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