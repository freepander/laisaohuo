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
	<link rel="stylesheet" type="text/css" href="fontassets/css/base.css">
	<link rel="stylesheet" type="text/css" href="fontassets/css/style.css">
	<link rel="stylesheet" type="text/css" href="fontassets/css/jumei_home.min.css">
	<link rel="stylesheet" type="text/css" href="fontassets/css/jumei.min.css">
</head>
<body class="body_all body_w960">
	<div id="header_container">
    <div id="logo">
    	<a href="index_index" id="home" title="" style="background:url(fontassets/img/logo_new_v1.jpg) no-repeat top left;"> </a>
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
       		<div class="top_nav_item"><a href="index_index" class="nav_link">美妆商城</a></div>
            <div class="top_nav_item  selected"><a href="group_groupList" class="nav_link">今日团购</a></div>
			<div class="top_nav_item"><a href="articles_getArticle?id=1" class="nav_link">用户须知</a></div>
			<div class="top_search_wrap">
				<form action="#" method="get" id="mall_search_form">
					<input name="search" type="text" class="top_search_input" id="mall_search_input" lang="zh">
					<button type="submit" id="btn_global_search">搜索</button>
				</form>
			</div>
        </div>
    </div>
</div><!-- end  heander_container  -->
	<div id="container" class="grid_v2" style="width: 1020px;">
		<div id="body" style="width: 1100px;">
			<div id="main" class="deals home_deal_list leftAll" >
				<div class="sort_all old png" id="sort_top">
	            </div>
				<div id="toady_deal_list" class="home_deal_list_container">
					<s:iterator value="groupBuyList">
					<div class="deal_box   deal_diaoxing ">
						<div class="img_box">
							<a href="group_groupBuy?id=<s:property value="id"/>" target='_blank' rel="nofollow">
								<img src="upload/groupbuy/<s:property value="logo"/>" alt="<s:property value="name"/>" />
		                    </a>
		                </div>
		                <a href="group_groupBuy?id=<s:property value="id"/>" target='_blank' class="deal_link" rel="nofollow">            
		                	<p class="title_box">
		                		<span class="pink"><s:property value="discount"/>折/ </span><s:property value="description"/>
		                	</p>
		                	<div class="price_box">
	                			<span class="go">去看看</span>
	                			<em>¥</em><span class="pnum" style="font-size:30px;"><s:property value="price"/></span>
	                			<span style="text-decoration: line-through;color:#999;">¥<s:property value="goods.price"/></span>
	                		</div>
	            			<div class="numtimer_box">
	            				<div class="num_box">
	            					<span class="buy_num"><s:property value="slaeNumber"/></span>人已经购买&nbsp;                
	            				</div>
	            			</div>
	            		</a>
	            	</div>
					</s:iterator>
	            	<div class="clear"></div>
				</div><!--  end toady_deal_list  -->
			</div><!--  end main  -->
		</div><!--  end body -->
	</div><!-- end  container  -->
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
<a id="ibangkf" style="display:none;" href="http://www.ibangkf.com">在线客服</a>
<script language="javascript" src="http://c.ibangkf.com/i/c-laisaohuo.js"></script>
</body>
</html>