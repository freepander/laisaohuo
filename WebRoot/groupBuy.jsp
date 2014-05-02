<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>化妆品商城</title>
	<link rel="stylesheet" type="text/css" href="fontassets/css/jumei.min.css">
	<link rel="stylesheet" type="text/css" href="fontassets/css/jumei_deal.min.css">
    <link rel="stylesheet" type="text/css" href="fontassets/css/jumei_productreport.min.css">
    <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
    <style type="text/css">
    #cboxContent{background: transparent;}
    #cboxLoadedContent{background: transparent;}
    #header_container{_zoom:1;}
    #container{width:100%;background:#ede7e1;}
    #body{width:960px;margin:0 auto;}
    .en{font-family: arial;}
    .newdeal_box{width:960px;margin:0 auto;font-family: "宋体";padding-bottom:50px;}
    .newdeal_top, .newdeal_center{width:960px;margin:20px auto 0;display:inline-block;}
    .newdeal_top{background:#FFF;border-bottom:1px solid #d5cfca;padding-bottom:20px;}
    .newdeal_deal_buyit, .timer_corn, .newdeal_sidebar_gift li a .corn, .deal_tabs_right, .newdeal_deal_ilike .ilike_corn,
    .newdeal_chengnuo_corn .corn, .memb_corn, .newdeal_policy .policy_corn, .newwish_deal .newdeal_deal_buyit, .newwish_deal .newwish_icon, .newwish_deal .newwish_allnum i{
        background:url(fontassets/img/newdeal_pic_v12.png) no-repeat;
    }
    .newdeal_breadcrumbs{height:40px;line-height:40px;border-bottom:1px solid #f0f0f0;box-shadow:0 2px 6px #f0f0f0;font-size: 12px;font-weight:bold;padding:0 40px;}
    .newdeal_breadcrumbs_wrap_a, .newdeal_breadcrumbs_line, .newdeal_breadcrumbs_wrap_b{color: #555555;float: left;padding-right:10px;}
    .newdeal_breadcrumbs_wrap_a a{color:#555555;}
    .newdeal_breadcrumbs_wrap_b{color:#ed145b;}

        /*newdeal_deal*/
    .newdeal_deal{padding:20px 0 0 40px;width:920px;display:inline-block;}
    .newdeal_deal_right{width:260px;float:right;background:#eeeeee;position:relative;display:inline-block;min-height:400px;_height:400px;}
    .newdeal_deal_buyit{width:298px;height:77px;background-position:0 0;position:absolute;right:-7px;top:0;overflow:hidden;z-index: 10;}
    .not_begin{background-position: 0 -232px;}
    .soldout{background-position: 0 -77px;}
    .newdeal_buyit_btn{width:95px;height:48px;float:right;margin:10px 17px 0 0;_display:inline;cursor:pointer;}
    .newdeal_deal_price{height:77px;_height:70px;line-height:73px;_line-height:77px;font-size:46px;color:#FFF;padding-left:40px;width:144px;overflow:hidden;float: left; display: inline;}
    .newdeal_deal_price em{font-size:24px;}
    .newdeal_deal_info{width:200px;padding:0px 30px;display:inline-block;position: relative;z-index: 10;zoom:1;}
    .newdeal_deal_sort{width:200px;padding:15px 0;border-bottom:1px solid #d5d5d5;display:inline-block;}
    .newdeal_deal_right_black .newdeal_deal_sort{border-bottom:1px solid #454545;}
    .newdeal_deal_right_black .no_border, .no_border{border:0;}
    table.price_table td{height:22px;}
    table.price_table .title{color:#0e0e0e;font-size:14px;}
    table.price_table .price{color:#ec1a5b;font-weight:bold;font-size:16px;}
    .timer_corn, .account_corn{display:inline-block;float:left;overflow:hidden;}
    .timer_corn{width:27px;height:27px;background-position: -300px 0;margin-top:3px;}
    .newdeal_status{width:160px;float:left;color:#0e0e0e;padding-left:8px;letter-spacing: 0.1em;}
    .newdeal_num{color:#0abede;font-size:20px;font-weight:bold;}
    .account_corn{width:32px;height:32px;background: url(fontassets/img/countdown.gif) no-repeat top center transparent;margin-top:6px;}
    .newdeal_deal_ilike{color:#959595;float:left;}
    .newdeal_deal_ilike .ilike_corn{width:15px;height:13px;display:inline-block;background-position: -364px 0;overflow: hidden;float:left;margin:1px 2px 0 0;}
    .newdeal_deal_ilike:hover, .jiathis_style .jtico_jiathis:hover{color:#ed145b;text-decoration:none;}
    .liked{color:#ed145b;}
    .liked .ilike_corn, .newdeal_deal_ilike:hover .ilike_corn{background-position: -364px -13px;}
    .newdeal_deal_info .size{margin-top:10px;}
    .newdeal_deal_left{width:620px;overflow:hidden;padding:0 40px;display:inline-block;_width:600px;background-color:#FFF;float:left;}
    .newdeal_title{color:#010305;font-size:18px;line-height:26px;font-family: "微软雅黑";}
    .newdeal_pic{background:url(font/assets/img/loading.gif) no-repeat center;}
    .newdeal_pic img{margin:20px auto;display:block;}

    .jiathis_style{float:right;}
    .jiathis_style .jtico_jiathis{background:none;background-position:0;padding-left:0px!important;color:#959595;}
    .newdeal_deal_boxed{display: inline-block;width: 260px;height: 77px;position: relative;margin-top: 40px;}
        /*black*/
    table.price_table .title_black, .newdeal_status_black{color:#959595;}
    .newdeal_deal, .newdeal_deal_title{padding:10px 0;width:960px;display:inline-block;}
    .newdeal_deal_title{position:relative;}
    .newdeal_logo{width:260px;height:90px;float:right;overflow:hidden;text-align:center;}
    .newdeal_title_black{padding:0 40px;width:620px;float:left;color:#010305;font-size:18px;line-height:26px;font-family: "微软雅黑";}
    .timer_corn_black{background-position: -335px 0;}
    .newdeal_black_imgbox{width:960px;height:400px;position:relative;}
    .newdeal_deal_left_black{width:960px;height:400px;overflow:hidden;position:relative;background:url(http://p0.jmstatic.com/templates/jumei/images/loading.gif) no-repeat 350px 200px;background-color:#FFF;}
        /*newdeal_deal end*/

        /* 组合购买 */
    .newdeal_fit{width:880px;padding:20px 40px;overflow:hidden;display:inline-block;}
    ul.newdeal_fit_title{width:880px;border-bottom:1px solid #e5e5e5;border-left:1px solid #e5e5e5;height:30px;display:inline-block;}
    ul.newdeal_fit_title li{height:30px;width:110px;line-height:30px;float:left;padding:0 20px;color:#2f2f2f;font-size:12px;border-top:1px solid #e5e5e5;border-right:1px solid #e5e5e5;cursor:pointer;text-align: center;overflow: hidden;}
    ul.newdeal_fit_title li.newdeal_fit_now{background:#ed145b;color:#FFF;border-top:1px solid #ed145b;border-right:1px solid #ed145b;}
    .newdeal_fit_combine{width:880px;padding-top:30px;}
    .newdeal_fit_singles{width:660px;float:left;overflow:hidden;}
    .newdeal_fit_single, .newdeal_fit_single_no{width:102px;padding:0 10px;float:left;overflow:hidden;}
    .newdeal_fit_single .pic, .newdeal_fit_single_no .pic{width:100px;height:100px;overflow:hidden;padding:1px;display:inline-block;}
    .newdeal_fit_single_no .pic{background:url(fontassets/img/newdeal_fitbg.jpg) no-repeat top center;cursor:default;}
    .newdeal_fit_single .name{padding-top:10px;}
    .newdeal_fit_single .name a{height:36px;line-height:18px;color:#2b2b2b;overflow: hidden;display:inline-block;}
    .newdeal_fit_single .checkbox{height:23px;padding-top:10px;}
    .newdeal_fit_single .checkbox input{float:left;margin-left:0px;_display:inline;*margin-top:-3px;}
    .newdeal_fit_single .check_price{color:#ed145b;font-weight:bold;line-height:13px;padding-left:5px;*padding:0;}
    .newdeal_fit_single_hover .pic{padding:0;border:1px solid #ed145b;text-align:center;}
    .newdeal_fit_single_hover .name a{color:#ed145b;text-decoration: none;}
    .newdeal_fit_add{height:175px;line-height:100px;color:#cccccc;font-size:60px;font-family: "微软雅黑";float:left;padding:0 5px;}
    .newdeal_fit_all{width:144px;float:right;line-height:18px;padding-left:15px;overflow:hidden;}
    .newdeal_fit_all .num{color:#ed145b;}
    .newdeal_fit_allinfo{padding:30px 0;}
    .newdeal_fit_allinfo .price{font-size:18px;color:#ed145b;font-weight:bold;}
    .newdeal_fit_single .type select{width:100px;display:inline-block;}
    .xiaomei_recommend{height:30px;line-height:30px;padding-left:10px;display:inline-block;overflow:hidden;}
    .xiaomei_recommend span.title{float:left;}
    .xiaomei_recommend .con{width:560px;overflow:hidden;float:left;}
        /* 组合购买 end */

        /* sidebar */
    .newdeal_sidebar{width:240px;float:right;}
    .newdeal_sidebar_con{width:240px;background:#FFF;margin-bottom:20px;display:inline-block;border-bottom:1px solid #d5cfca;}
    .newdeal_sidebar_con h1, .newdeal_sidebar #sidebar .box_v1 h1, #sidebar .box_v1 .title{width:220px;padding-left:20px;height:40px;line-height: 40px;background: #2b2b2b;color:#FFF;font-size:16px;font-family: "微软雅黑";font-weight:bold;}
    .newdeal_sidebar_con h1 em{font-size:10px;padding-left:5px;}
    .newdeal_sidebar_main{padding:20px;display:inline-block;}
    .newdeal_chengnuo_corn{float:left;width:68px;color:#666666;line-height:20px;text-align: center;}
    .newdeal_chengnuo_corn:hover{text-decoration: none;}
    .newdeal_chengnuo_corn .corn{width:47px;height:47px;display:inline-block;}
    .newdeal_chengnuo_corn .corn01{background-position: -299px -28px;}
    .newdeal_chengnuo_corn .corn02{background-position: -346px -27px;}
    .newdeal_chengnuo_corn .corn03{background-position: -393px -28px;}
    .newdeal_chengnuo_corn .corn04{background-position: -347px -153px;}
    .newdeal_chengnuo_corn .corn05{background-position: -394px -153px;}
    .newdeal_chengnuo_corn .corn011{background-position: -440px -28px;}

    .newdeal_sidebar_review{width:200px;display:inline-block;overflow:hidden;padding-bottom:10px;}
    .newdeal_sidebar_review .pic{width:60px;height:60px;float:left;overflow:hidden;}
    .newdeal_sidebar_review .info{width:130px;padding-left:10px;float:left;color:#6c6b6b;}
    .newdeal_sidebar_review .info .num{color:#ec1a5b;font-size:30px;}

    .deal_sidebar_rebox{width:200px;height:153px;overflow:hidden;display:inline-block;}
    .deal_sidebar_remain{height:5000px;display:inline-block;overflow:hidden;}
    .deal_sidebar_remain .item_box{display:inline-block;}
    .deal_sidebar_remain .item_single{width:200px;padding:12px 0 8px;height:30px;overflow:hidden;color:#696969;border-top:1px dotted #cccccc;}
    .deal_sidebar_remain .item_single .item_pic, .deal_sidebar_remain .item_single .item_pic img{width:30px;height:30px;display:inline-block;}
    .deal_sidebar_remain .item_single .item_pic{float:left;overflow:hidden;}
    .deal_sidebar_remain .item_single .item_name{width:160px;padding-left:10px;float:left;overflow:hidden;}
    .deal_sidebar_remain .item_single .item_name .name, .newdeal_sidebar_gift li a .open{color:#0abede;}
    .deal_sidebar_remain .item_single .item_name p{height:15px;line-height:15px;overflow:hidden;}

    .newdeal_sidebar_recommend{width:200px;border-bottom:1px dotted #cccccc;height:60px;padding:15px 0;overflow:hidden;}
    .newdeal_sidebar_recommend .pic{width:60px;height:60px;display:inline-block;overflow:hidden;float:left;padding:1px;margin-left:5px;_display:inline;}
    .newdeal_sidebar_recommend .info{width:125px;padding-left:8px;float:left;}
    .newdeal_sidebar_recommend .info p{height:16px;line-height:16px;overflow:hidden;}
    .newdeal_sidebar_recommend .info p.name{height:32px;line-height:16px;overflow:hidden;}
    .newdeal_sidebar_recommend .info p.name a{color:#333;word-break: break-all;white-space:normal;}
    .newdeal_sidebar_recommend .info .price{color:#ed145b;}
    .newdeal_sidebar_recommend .info .account{color:#a5a5a5;}
    .recomend_hover{background:#f0f0f0;}
    .recomend_hover .pic, .newdeal_sidebar_recommend .pic:hover{padding:0;border:1px solid #ed145b;}
    .recomend_hover .info p.name a, .newdeal_sidebar_recommend .info p.name a:hover{color:#a1a1a1;text-decoration: none;}

    .newdeal_sidebar_gift, .newdeal_sidebar_gift li{display:inline-block;}
    .newdeal_sidebar_gift li a{width:200px;height:25px;line-height:25px;display:inline-block;overflow:hidden;color:#333;}
    .newdeal_sidebar_gift li a .corn{width:4px;height:7px;display:inline-block;background-position:-327px 0;margin:0 5px;}
    .newdeal_sidebar_gift li a .open{padding-left:10px;}
    .newdeal_sidebar_gift li a:hover{background:#e9e9e9;text-decoration: none;}
    .newdeal_sidebar_gift li a:hover .corn{background-position:-331px 0;}
        /* sidebar end*/

        /* center */
    .deal_detail{width:960px;display:inline-block;overflow:hidden;padding:0;}
    .newdeal_menu_box{width:700px;height:40px;display:inline-block;}
    .deal_detail ul.new_tabs{width:940px;padding-left:20px;height:40px;background:#313131;z-index:1000;display:inline-block;border:none;}
    .deal_detail .new_tabs .deal_tabs_right{width:160px;height:40px;float:right;background-position: -299px -75px;}
    .deal_detail .new_tabs .deal_tabs_wish{background-position:-299px -201px;}
    .deal_detail .new_tabs .deal_tabs_right a.buy{width:57px;height:26px;float:right;margin:8px 10px 0 0;_display:inline;cursor: pointer;background:none;}
    .deal_detail .new_tabs .deal_tabs_wish a.buy{margin-right: 28px; width: 110px;}
    .deal_detail .new_tabs .deal_tabs_right span.price{width:64px;height:40px;line-height:40px;float:left;margin-left:19px;display:inline-block;overflow:hidden;_display:inline;color:#FFF;font-size:24px;font-weight: normal;}
    .deal_detail ul.new_tabs li, .deal_detail ul.new_tabs li a{width:80px;height:39px;text-align: center;}
    .deal_detail ul.new_tabs li{float:left;margin-top:2px;}
    .deal_detail ul.new_tabs li a{line-height:35px;font-size:14px;color:#FFF;font-family: "微软雅黑";display:inline-block;}
    .deal_detail ul.new_tabs li a:hover, .deal_detail ul.new_tabs li.on a, .deal_detail ul.new_tabs li a.selected{background:#FFF;color:#ec1a5b;text-decoration:none;}

    .newdeal_center_main{background:#FFF;border-bottom:1px solid #d5cfca;}

    #container.grid_v2 #sidebar{margin-top:0;}
    #sidebar .box_v1 .title .arrow{background:none;display:none;}
        /* center end*/

    .deal_detail .detail_info_box{padding:0;}
    .clear{height:0;clear:both;}
    #sidebar .box_v1 .content{border:none;border-bottom: 1px solid #ccc;}
    #sidebar .popular_products_box .info_content{margin-bottom: 0px; border-bottom: none; width:240px; left:0px;}
    .newdeal_deal_right .newdeal_brand{position: absolute;top:0px;left:0px;width: 260px;height: 97px;text-align: center;background: #fff;}
    .deal_detail .new_tabs .deal_tabs_right span.price em{font-size: 16px;}
    .charts_container{margin-top:0px;}
    #sidebar .product_function_box .content a:hover, #sidebar .hot_brands_box .list_container .list_content a:hover{background: #0abede;border-color:#ccc;}
    .newdeal_deal_right_black{z-index: 100;background: none;position:absolute;right:0;top:0;padding:0;}
    .newdeal_deal_right_black_bg{display: block;position: relative;top:10px;left:0px;width: 260px;height: 400px;background:#000;opacity: 0.8;_filter:alpha(opacity=80);_zoom:1;}
    .newdeal_deal_right_black_01{position:absolute;top:10px;right:0;}
    .newdeal_deal_end{font-size:14px;color:#fff;}
    .soldout_text{font-size:32px;font-weight: bold;color:#ed145b;}
    .soldout_text, .newdeal_deal_sort_soldout .newdeal_num{font-family: "微软雅黑","黑体";}
    #recent_deals_container .tips a{float:none;}
    .feedback {background-repeat: repeat-y;background-color: #fff;width: 25px;overflow: hidden;position: absolute;right: 5px;top: -50px;z-index: 90000;border: 1px solid #e8e8e8;border-radius: 2px;-webkit-border-radius: 2px;-moz-border-radius: 2px;_position: absolute; }
    .feedback span {display: block;}
    #home_nav_bar .feedback span a {display: block;word-wrap: break-word;word-break: normal;width: 13px;text-align: center;color: #666;padding: 8px 6px 10px;line-height: 1.1em;background: none;border-bottom:none;}
    #home_nav_bar .feedback span a:hover{text-decoration: none;color:#ed145b;}
    .feedback span s {width: 0;height: 0;border: 3px solid #19377f;display: block;position: relative;top: -1px;right: -1px;border-color: #fff #19377f #19377f #fff;margin: -6px 0 0 19px;overflow: hidden;_margin-left: 17px;zoom: 1;}
    /*会员*/
    .newdeal_membership_box{width:878px;padding:10px 40px;display:inline-block;}
    .newdeal_membership_man, .newdeal_member_box{height:16px;line-height:16px;font-size:12px;font-family: "宋体";overflow:hidden;}
    .newdeal_membership_man{width:300px;float:left;margin:4px 20px 4px 0;color:#333333;}
    .newdeal_membership_man{font-size:14px;font-weight: bold;}
    .newdeal_membership_man .man, .newdeal_member_box .man{height:16px;color:#FFF;display:inline-block;padding:0 3px;margin-right:5px;}
    .newdeal_membership_man .red{color:#ed145b;}
    .newdeal_membership_man .manfan{background:#0abede;}
    .newdeal_membership_man .manjian{background:#ff6f0f;}
    .newdeal_membership_man .manzeng, .newdeal_member_box .man{background:#ed145b;}
    .newdeal_membership_man .manzhe{background:#4799ff;}
    .newdeal_membership_man .dealseczhe{background:#ff7fb2;}
    .newdeal_membership_man .dealmorezhe{background:#ab65d7;}
    .newdeal_membership_man .dealduomian{background:#ff6f0f;}
    .newdeal_membership_sort{padding:8px 0 15px;height:16px;line-height:16px;}
    .newdeal_member_box{height:16px;line-height:16px;display:inline-block;color:#999999;}
    .newdeal_member_box a{color:#0abede;}
    .newdeal_member_box .memb_corn{width:18px;height:18px;display:inline-block;overflow:hidden;background-position: -380px 0;float:left;}
    .newdeal_member_box .memhj_corn{background-position: -380px 0;}
    .newdeal_member_box .membj_corn{background-position: -398px 0;}
    .newdeal_member_box .memzs_corn{background-position: -416px 0;}
    .newdeal_member_box .huiyuan{color:#FFF;padding:0 10px 0 3px;border-right:1px solid #999999;display:inline-block;margin-right:10px;}
    .newdeal_member_box .price_pt{color:#ed145b;font-family:arial;font-weight:bold;text-decoration:line-through;display:inline-block;}
    .newdeal_right_timer{display:inline-block;width:112px;overflow:hidden;float:left;}
    .newdeal_policy{width:88px;color:#000000;font-size:12px;overflow:hidden;float:left;padding-top:5px;}
    .newdeal_policy .policy_con{width:60px;padding:2px 0 0 4px;float:left;overflow:hidden;line-height:14px;}
    .newdeal_policy .policy_corn{width:24px;height:30px;overflow:hidden;background-position:-443px -122px;display:inline-block;text-align:center;line-height:30px;font-size:14px;color:#FFF;float:left;}
    .newdeal_deal_right_black .newdeal_policy .policy_corn{color:#cccccc;}
    .newdeal_deal_right_black .newdeal_policy{color:#959595;}
    .newdeal_title_black_zhenpin{width:540px;padding:0;}
    .newdeal_wish{font-size: 18px;line-height: 73px;_line-height: 79px;*height: 70px;font-family:'黑体';margin-left:-5px; padding-left: 25px;*display:inline-block;}
    .newwish_deal .newdeal_deal_buyit{background-position:0 -154px;}
    .newwish_deal .newdeal_buyit_btn{width:112px;}
    /*.newwish_deal .newdeal_deal_price{width: 110px;*margin-top:-9px}*/
    .newwish_deal .newdeal_deal_price{padding-left: 0px; width: 160px; text-align: center;*margin-top:-3px}
    .newwish_deal .newwish_icon{width:10px;height:14px;display:inline-block;overflow:hidden;background-position:-477px -148px;position:relative;left:-3px;top:3px;z-index:1;}
    .newwish_deal .newdeal_deal_sort{padding:10px 0;}
    .newwish_deal .timer_corn{width:19px;height:17px;background-position:-468px -130px;position:relative;top:2px;}
    .newwish_deal .timer_corn_black{background-position:-468px -112px;}
    .newwish_deal .newdeal_num{font-size:18px;position:relative;top:2px;}
    .newwish_deal .newdeal_status{width:auto;}
    .newwish_deal .newwish_allnum{overflow:hidden;}
    .newwish_deal .newwish_allnum i{width:22px;height:16px;display:inline-block;overflow:hidden;background-position:-465px -77px;position:relative;left:-2px;position:relative;top:4px;margin-right:5px;}
    .newwish_deal .newwish_white{color:#959595;}
    .newwish_deal .word{width:68px;display:inline-block;}
</style>
</head>
<body>
<div id="header_container">
    <div id="header_container">
    	<%@include file="pianduan/header_common.jsp" %>
	</div><!-- end  heander_container  -->
</div><!-- end  heander_container  -->

<div id="container">
    <div id="body">
        <div class="newdeal_box">
            <div class="newdeal_top">
                <div class="newdeal_deal ">
                    <div class="newdeal_deal_title">
                        <div class="newdeal_title_black">
                            <span style="color:#ed145b;">低价风暴</span>
                            <span class="share_title" style="color: black;"><s:property value="groupBuy.description"/></span>
                        </div>
                        
                    </div>
                    <div class="newdeal_membership_box">
                    </div>
                    <div class="newdeal_deal_title newdeal_black_imgbox">
                        <div class="newdeal_deal_left_black">
                            <img src="upload/groupbuy/<s:property value="groupBuy.logo"/>" style="width:700px;height:400px;">
                        </div>
                        <div class="newdeal_deal_right newdeal_deal_right_black">
                            <div class="newdeal_deal_right_black_bg"></div>
                            <div class="newdeal_deal_right_black_01">
                                <div class="newdeal_deal_boxed">
                                    <div class="newdeal_deal_buyit  ">
                                        <a href="javascript:void(0);" id="go_to_cart" target="_blank" rel="nofollow" class="newdeal_buyit_btn"></a>
                                        <span class="newdeal_deal_price en"><em>¥</em><s:property value="groupBuy.price"/></span>
                                    </div>
                                </div>
                                <div class="newdeal_deal_info" id="deal_info_new">
                                    <div class="newdeal_deal_sort">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%" class="price_table">
                                            <tbody>
                                            <tr>
                                                <td class="title title_black">原价</td>
                                                <td class="title title_black">为你节省</td>
                                            </tr>
                                            <tr>
                                                <td class="price en">¥<s:property value="groupBuy.goods.nowPrice"/></td>
                                                <td class="price en">¥<s:property value="groupBuy.goods.nowPrice-groupBuy.price"/></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="newdeal_deal_sort">
                                        <span class="timer_corn timer_corn_black"></span>
                                        <div class="newdeal_status newdeal_status_black">
                                            <p>结束时间</p>
                                            <p class="newdeal_num en"><span class="z"><s:date name="groupBuy.endDate" format="yyyy-MM-dd" nice="false" /></span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="newdeal_center">
                <div class="deal_detail">
                    <ul id="new_deal_tabs" class="new_tabs">
                        <div class="deal_tabs_right ">
                            <span class="price"><em>¥</em><s:property value="groupBuy.price"/></span>
                            <a class="buy tanchuduihuakuang" href="#"></a>
                        </div>
                        <li><a href="group_groupBuy?id=<s:property value="groupBuy.id"/>#specs">商品参数</a></li>
                        <li><a href="group_groupBuy?id=<s:property value="groupBuy.id"/>#details">商品详情</a></li>
                        <li><a href="group_groupBuy?id=<s:property value="groupBuy.id"/>#usage">使用方法</a></li>
                        <li><a href="group_groupBuy?id=<s:property value="groupBuy.id"/>#photos">商品实拍</a></li>
                        <li><a href="group_groupBuy?id=<s:property value="groupBuy.id"/>#reviews">用户口碑</a></li>
                        <div class="clear"></div>
                    </ul>
                    
                    <div id="detail_info_box" class="detail_info_box">
                        <div class="deal_sorts_main" style="background: #fff;">
                            <div class="clear"></div>
                            <div class="deal_con" id="specs">
                                <div class="block_title" id="title_specs">
                                    <img src="fontassets/img/tit_specs.jpg" width="100%">
                                </div>
                                <div class="deal_con_content">
                                    <table border="0" cellspacing="0" cellpadding="0" width="660">
                                    <tbody>
                                        <tr>
                                            <td width="85" valign="top"><b>商品名称：</b></td>
                                            <td width="250" valign="top"><s:property value="groupBuy.goods.name"/>(<s:property value="goods.capacity"/>)</td>
                                            <td rowspan="7" align="right" valign="bottom"><img width="307px" height="343px" src="upload/goodslogo/<s:property value="goods.logo"/>" alt="<s:property value="goods.name"/>" border="0"></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>品牌名称：</b></td>
                                            <td valign="top"><span><s:property value="groupBuy.goods.brand.name"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>产品功效：</b></td>
                                            <td valign="top"><s:iterator value="groupBuy.goods.effectList">
                                            <span><s:property value="name"/>/</span>
                                            </s:iterator></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>产品规格：</b></td>
                                            <td valign="top"><span><s:property value="groupBuy.goods.spec"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>产品容量：</b></td>
                                            <td valign="top"><span><s:property value="groupBuy.goods.capacity"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>保存方法：</b></td>
                                            <td valign="top"><span><s:property value="groupBuy.goods.baoCunMethod"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>保质期限：</b></td>
                                            <td valign="top"><span><s:property value="groupBuy.goods.shelfLife"/>（具体日期以实物为准）</span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>生产国家：</b></td>
                                            <td valign="top"><span><s:property value="groupBuy.goods.area"/></span></td>
                                        </tr>
                                        <tr>
                                            <td valign="top"><b>乱码说明：</b></td>
                                            <td valign="top"><span><s:property value="groupBuy.goods.luanMa"/></span></td>
                                        </tr>
                                        <s:if test='teBieShengMing!=""'>
                                        <tr>
                                            <td valign="top"><b>特别声明：</b></td>
                                            <td valign="top"><span><s:property value="groupBuy.goods.teBieShengMing"/></span></td>
                                        </tr>
                                        </s:if>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                            <div class="deal_con" id="details">
                                <div class="block_title" id="title_details">
                                    <img src="fontassets/img/tit_detail.jpg" width="100%">
                                </div>
                                <div class="deal_con_content">
                                    ${groupBuy.goods.details }
                                </div>
                            </div>
                            <div class="deal_con" id="usage">
                                <div class="block_title" id="title_usage">
                                    <img src="fontassets/img/tit_usa.jpg" width="100%">
                                </div>
                                <div class="deal_con_content">
                                    ${groupBuy.goods.usages }
                                </div>
                            </div>
                            <div class="deal_con" id="photos">
                                <div class="block_title" id="title_photos">
                                    <img src="fontassets/img/tit_photo.jpg" width="100%">
                                </div>
                                <div class="deal_con_content">
                                    ${groupBuy.goods.photos }
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="clear"></div>
<div id="footer_container">
	<%@include file="pianduan/footer1.jsp" %>
</div>
<script type="text/javascript">
$('#go_to_cart').click(function(){
	alert('扫描二维码即可购买。')
	return false;
})
$('.tanchuduihuakuang').click(function(){
	alert('扫描二维码即可购买。')
	return false;
})
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
</body>
</html>