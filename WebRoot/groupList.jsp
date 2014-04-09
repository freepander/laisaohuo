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
	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
</head>
<body class="body_all body_w960">
	<div id="header_container">
    	<%@include file="pianduan/header2.jsp" %>
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
	<%@include file="pianduan/footer1.jsp" %>
</div>
<a id="ibangkf" style="display:none;" href="http://www.ibangkf.com">在线客服</a>
<script language="javascript" src="http://c.ibangkf.com/i/c-laisaohuo.js"></script>
<script type="text/javascript">
//顶部菜单
				$('.top_nav_item').mouseover(function(){
					$(this).children('.header_list').show();
				});
				$('.top_nav_item').mouseout(function(){
					$(this).children('.header_list').hide()
				})
</script>
</body>
</html>