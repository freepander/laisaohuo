<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>商城管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
<link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="header">
		<div class="dl-title">
			<a href="#" target="_blank"> <span class="lp-title-port">来扫货</span><span class="dl-title-text">商城管理系统</span> </a>
		</div>
		<div class="dl-log">
			欢迎您，<span class="dl-log-user">admin</span><a href="###" title="退出系统" class="dl-log-quit">[退出]</a>
		</div>
	</div>
	<div class="content">
		<div class="dl-main-nav">
			<div class="dl-inform"></div>
			<ul id="J_Nav" class="nav-list ks-clear">
				<li class="nav-item dl-selected"><div class="nav-item-inner nav-home">内容管理</div>
				</li>
				<li class="nav-item"><div class="nav-item-inner nav-order">商品管理</div>
				</li>
				<li class="nav-item"><div class="nav-item-inner nav-inventory">订单与用户</div>
				</li>
				<li class="nav-item"><div class="nav-item-inner nav-supplier">其他</div>
				</li>
			</ul>
		</div>
		<ul id="J_NavContent" class="dl-tab-conten">
		</ul>
	</div>
	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
	<script type="text/javascript" src="assets/js/bui-min.js"></script>
	<script type="text/javascript" src="./assets/js/config-min.js"></script>
	<script>
		BUI.use('common/main', function() {
			var config = [ {
				id : 'menu',
				homePage : 'dingbulunbo',
				menu : [ {
					text : '商城内容',
					items : [ {
						id : 'dingbulunbo',
						text : '顶部轮播',
						href : 'admin/mallCarousel_input'
					}]
				}, {
					text : '活动列表',
					items : [ {
						id : 'tuangouliebiao',
						text : '团购列表',
						href : 'admin/groupBuy_list'
					}, {
						id : 'tianjiatuangou',
						text : '添加团购',
						href : 'admin/groupBuy_input'
					}, {
						id : 'dazheliebiao',
						text : '打折商品列表',
						href : 'admin/goods_discountList'
					} , {
						id : 'tianjiadazheshangpin',
						text : '添加打折商品',
						href : 'admin/goods_discountInput'
					} ]
				}, {
					text : '文章内容',
					items : [ {
						id : 'yijileibie',
						text : '一级类别',
						href : 'admin2/article_oneList'
					}, {
						id : 'erjileibie',
						text : '二级类别',
						href : 'admin2/article_twoList'
					}, {
						id : 'wenzhangliebiao',
						text : '文章列表',
						href : 'admin2/article_threeList'
					}  ]
				} ]
			}, {
				id : 'form',
				menu : [ {
					text : '商品管理',
					items : [ {
						id : 'shangpinliebiao',
						text : '商品列表',
						href : 'admin/goods_list'
					}, {
						id : 'tianjiashangpin',
						text : '添加商品',
						href : 'admin/goods_input'
					}, {
						id : 'jinhuo',
						text : '进货',
						href : 'admin/purchaseShipment_pInput'
					}, {
						id : 'chuhuo',
						text : '出货',
						href : 'admin/purchaseShipment_sInput'
					} ]
				}, {
					text : '类别管理',
					items : [ {
						id : 'bigCategory',
						text : '第一级类别',
						href : 'admin/bigCategory_list'
					}, {
						id : 'category',
						text : '第二级类别',
						href : 'admin/category_list'
					},{
						id : 'category',
						text : '第三级类别',
						href : 'admin/twoCategory_list'
					} ]
				}, {
					text : '品牌管理',
					items : [{
						id : 'pinpailiebiao',
						text : '品牌列表',
						href : 'admin/brand_list'
					} ]
				}, {
					text : '化妆品功效',
					items : [ {
						id : 'gongxiaoliebiao',
						text : '功效列表',
						href : 'admin/effect_list'
					} ]
				}]
			}, {
				id : 'search',
				menu : [ {
					text : '会员管理',
					items : [ {
						id : 'huiyuanliebiao',
						text : '会员列表',
						href : 'admin/shopUser_list'
					}, {
						id : 'sousuohuiyuan',
						text : '搜索会员',
						href : 'c1/sousuohuiyuan.html'
					}, ]
				}, {
					text : '订单管理',
					items : [ {
						id : 'dingdanliebiao',
						text : '订单列表',
						href : 'admin/order_list.jsp'
					}, {
						id : 'dingdanchaxun',
						text : '订单查询',
						href : 'c2/dingdanchaxun.html'
					}, {
						id : 'hebingdingdan',
						text : '合并订单',
						href : 'c2/hebingdingdan.html'
					}, {
						id : 'dingdandayin',
						text : '订单打印',
						href : 'c2/dingdandayin.html'
					}, {
						id : 'quehuodengji',
						text : '缺货订单',
						href : 'c2/quehuodingdan.html'
					}, {
						id : 'tiajiadingdan',
						text : '添加订单',
						href : 'c2/tianjiadingdan.html'
					}, {
						id : 'fahuodanliebiao',
						text : '发货单列表',
						href : 'c2/fahuodingdan.html'
					}, {
						id : 'quehuodanliebiao',
						text : '退货单列表',
						href : 'c2/tuihuodingdan.html'
					} ]
				} ]
			}, {
				id : 'detail',
				menu : [ {
					text : '统计',
					items : [ {
						id : 'liulanfenxi',
						text : '浏览分析',
						href : 'd1/liulanfenxi.html'
					}, {
						id : 'xiaoshoufenxi',
						text : '销售分析',
						href : 'd1/xiaoshoufenxi.html'
					}, {
						id : 'kehutongji',
						text : '客户统计',
						href : 'd1/kehutongji.html'
					}, {
						id : 'xiaoshoupaihang',
						text : '销售排行',
						href : 'd1/xiaoshoupaihang.html'
					}, {
						id : 'shangpinliulanliang',
						text : '商品浏览量排行',
						href : 'd1/shangpinliulanliang.html'
					} ]
				}, {
					text : '管理员管理',
					items : [ {
						id : 'guanliyuanliebiao',
						text : '管理员列表',
						href : 'd2/guanliyuanliebiao.html'
					}, {
						id : 'tianjiaguanliyuan',
						text : '添加管理员',
						href : 'd2/tianjiaguanliyuan.html'
					}, {
						id : 'quanxianguanli',
						text : '权限管理',
						href : 'd2/quanxianguanli.html'
					} ]
				}, {
					text : '文章管理',
					items : [ {
						id : 'hufuxinde',
						text : '护肤心得',
						href : 'd3/hufuxinde.html'
					}, {
						id : 'shenghuoqiaomen',
						text : '生活窍门',
						href : 'd3/shenghuoqiaomen.html'
					}, {
						id : 'qitawenzhang',
						text : '其他文章',
						href : 'd3/qitawenzhang.html'
					} ]
				} ]
			} ];
			new PageUtil.MainPage({
				modulesConfig : config
			});
		});
	</script>
</body>
</html>
