<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!doctype html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<title>确认订单</title>
	<link rel="stylesheet" type="text/css" href="fontassets/css/jumei.css">
	<link rel="stylesheet" type="text/css" href="fontassets/css/jumei_cart_new.css">
	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
	<style>
    .editAddressForm{
        position: relative;
        background: #fff;
        display:none;
    }
	
	</style>
</head>
<body style="background:#EEE7E1;">
<div id="header_container" style="background:#fff;">
    <div id="logo">
        <a href="index_index" target="_blank" id="home">
            <img src="fontassets/img/cart_logo_new.jpg">
        </a>
        <div id="user_header">
            <ul class="login_header">
				<li class="login_li"><a href="user_order?id=<s:property value="#session.user.id"/>" rel="nofollow">个人中心</a><em>|</em></li>
				<li class="user">欢迎您，<span style="color: #ED145B;"><s:property value="#session.user.username"/></span><span style="padding:0 5px;">[<a href="user_signOut" style="padding:0;">退出</a>]</span><em>|</em></li>
            </ul>
            <div class="clear"></div>
            <div class="header_logo_all">
                <div style="float:right;">
                	<img src="fontassets/img/cart_step1_v1.jpg">
                </div>
            </div>
        </div>
    </div>
	<div class="clear"></div>
</div><!--  header_container end  -->

<div id="container">
	<div id="cart">
		<div class="countdown_time_wrap" style="display:none;">
        	<span class="click_icon"></span> 
        	<strong>提示信息</strong>
        </div>
        <form action="carts_orderSuccess" method="post" id="check_pay_form" style="display:inline-block;">
        	<div class="cart_left" style="*overflow: hidden">
				<div class="option" id="address_selector">
					<div class="title">1 地址选择</div>
					<div id="first_add_address_wrap" style="display:none">
    					<table id="address_table02" class="order-table">
    						<tbody>
    							<tr>
            						<td style="text-align:right"><span class="pink">*</span>收件人</td>
            						<td style="text-align:left"><input type="text" size="20" name="receiver_name" id="receiver_name_new" class="f-input" maxlength="14"></td>
            					</tr>
            					<tr>
            						<td style="text-align:right"><span class="pink">*</span>所在地区</td>
            						<td style="text-align:left">
            							<select class="f-input editProvince" id="province_new" name="province">
            								<option value="">请选择</option>
            								<option value="110000">北京市</option>
            								<option value="120000">天津市</option>
            								<option value="130000">河北省</option>
            								<option value="140000">山西省</option>
            								<option value="150000">内蒙古自治区</option>
            								<option value="210000">辽宁省</option>
            								<option value="220000">吉林省</option>
            								<option value="230000">黑龙江省</option>
            								<option value="310000">上海市</option>
            								<option value="320000">江苏省</option>
            								<option value="330000">浙江省</option>
            								<option value="340000">安徽省</option>
            								<option value="350000">福建省</option>
            								<option value="360000">江西省</option>
            								<option value="370000">山东省</option>
            								<option value="410000">河南省</option>
            								<option value="420000">湖北省</option>
            								<option value="430000">湖南省</option>
            								<option value="440000">广东省</option>
            								<option value="450000">广西壮族自治区</option>
            								<option value="460000">海南省</option>
            								<option value="500000">重庆市</option>
            								<option value="510000">四川省</option>
            								<option value="520000">贵州省</option>
            								<option value="530000">云南省</option>
            								<option value="540000">西藏自治区</option>
            								<option value="610000">陕西省</option>
            								<option value="620000">甘肃省</option>
            								<option value="630000">青海省</option>
            								<option value="640000">宁夏回族自治区</option>
            								<option value="650000">新疆维吾尔自治区</option>
            							</select>
            							<select class="f-input editCity" id="city" name="city">
            								<option value="" selected="selected">请选择</option>
            							</select>
            							<select class="f-input editCounty" id="county" name="county">
            								<option value="" selected="selected">请选择</option>
            							</select>
            						</td>
            					</tr>
            					<tr>
            						<td style="text-align:right"><span class="pink">*</span>街道地址</td>
            						<td>
            							<input type="text" size="70" name="address_" id="address_new" class="f-input" maxlength="50">
            						</td>
            					</tr>
            					<tr>
            						<td style="text-align:right">邮编</td>
            						<td style="text-align:left" colspan="5"><input type="text" size="10" name="postalcode" id="postalcode_new" class="f-input" maxlength="6"></td>
            					</tr>
            					<tr>
            						<td style="text-align:right"><span class="pink">*</span>手机号码</td>
            						<td style="text-align:left"><input type="text" size="20" name="hp" id="hp_new" class="f-input" maxlength="11">&nbsp;&nbsp;&nbsp;&nbsp;或固定电话
                						<input type="text" size="5" name="phone_area" id="phone_area_new" class="f-input" maxlength="4"> -
                						<input type="text" size="10" name="phone_number" id="phone_number_new" class="f-input" maxlength="8"> -
                						<input type="text" size="5" name="phone_ext" id="phone_ext_new" class="f-input" maxlength="8">
                					</td>
                				</tr>
                				<tr>
                					<td style="text-align:right;"></td>
                					<td style="text-align:left;color:#999;">两者至少填一项</td>
                				</tr>
                				<tr>
                					<td></td>
                					<td>
                						<div class="act" style="font-size: 14px; padding: 5px;padding-left: 0px;">
                							<input type="submit" value="确定" name="commit" id="new_address_submit_new" class="formbutton">
                						</div>
                					</td>
                				</tr>
                			</tbody>
                		</table>
                	</div>
                	<div id="default_address_wrap">
						<div class="content" id="address_wrap">
						<s:iterator value="user.addressList" status="st">
							<div class="option_box <s:if test="#st.index==0">selected</s:if>">
								<label class="address_lbl">
									<!--<span class="btnEditAddress_new" title="修改地址">修改</span>
									<span class="btnEditAddress_del" title="删除地址">删除</span>-->
									<p>
										<span class="addr_name"><s:property value="addressee"/></span>
                						<span class="addr_con"><s:property value="province"/>-<s:property value="city"/>-<s:property value="district"/>-<s:property value="street"/>,<s:property value="zipCode"/>黑龙江省-哈尔滨市-南岗区 黑龙江大学,150080</span>
                						<span class="addr_num"><s:property value="telphone"/></span>
                					</p>
                				</label>
                				<div class="clear"></div>
                			</div>
                		</s:iterator>
                		</div>
						<div class="address_btns_wrap">
							<a class="add_address_btn" href="javascript:void(0)">使用新地址</a>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="num_border"></div>
			<div class="cart_left">
    			<div class="option" id="prefer_delivery_day">
        			<div class="title">2 送货时间 <span style="color:#666666;font-size:12px;font-weight:normal;font-family:'宋体';">送货时间仅作参考，快递公司会尽量满足您的要求</span>        </div>
       				<div class="content">
       					<div class="option_box selected">
       						<input id="delivery_day_weekday" name="prefer_delivery_day" type="radio" value="仅工作日送货" checked>
       						<label for="delivery_day_weekday">仅工作日送货</label>
       						<div class="clear"></div>
       					</div>
       					<div class="option_box">
       						<input id="delivery_day_weekend" name="prefer_delivery_day" type="radio" value="仅周末送货">
       						<label for="delivery_day_weekend">仅周末送货</label>
       						<div class="clear"></div>
       					</div>
       					<div class="option_box now_hover">
       						<input id="delivery_day_" name="prefer_delivery_day" type="radio" value="工作日/周末/假日均可">
       						<label for="delivery_day_">工作日/周末/假日均可</label>
       						<div class="clear"></div>
       					</div>
       					<div class="clb"></div>
       				</div>
        		</div>
				<div class="num_border"></div>
				<div class="cart_left" style="*z-index: 5">
   					<div class="option cart_products">
       					<div class="title">3 商品清单</div>
       						<div class="cart_products_v2">
       							<h2>
       								<!--<span>此订单将从 <b>聚美优品</b> 发出</span>-->
       								<a href="carts_list" style="float: right">返回修改购物车</a>
       							</h2>
       							<table border="0" cellpadding="1" cellspacing="0" id="cart_products" width="100%">
       								<colgroup>
       									<col>
       									<col>
                   						<col class="align_right">
                   						<col class="align_right">
               						</colgroup>
               						<tbody>
               							<tr>
                   							<th width="400" class="text_left padd_left">商品</th>
                   							<th width="110">数量</th>
                   							<th width="140">单价</th>
                   							<th width="140">小计</th>
               							</tr>
               							<s:iterator value="cart.list">
                               			<tr class="cart_item">
                   							<td class="name text_left padd_left">
                       							<div style="width:320px;position: relative;line-height: 21px">
                       								<a href="good_goods?id=<s:property value="goods.id"/>" target="_blank" class="name_hover"><s:property value="goods.name"/></a>
                                                       <div class="pic_hover">
                                                       	<img src="upload/goods/<s:property value="goods.logo"/>" alt="<s:property value="goods.name"/>">
                                                       </div>
                                                   </div>
                                               </td>
                                               <td class="number_box"><s:property value="count"/></td>
                                               <td class="price_box">¥<span id="item-buy-price-1029748_"><s:property value="goods.nowPrice"/></span></td>
                                               <td class="count_price_box bold">¥<span id="item-buy-total-1029748_"><s:property value="nowPrice"/></span></td>
                                        </tr>
                                        </s:iterator>
                                        <tr>
                                           	<td colspan="4" class="count" style="padding:10px 0 10px 30px;">
                                           		<div class="content">
                                           			<div class="option_box">
                                           				<input name="express" id="Express_product/804/" type="radio" value="Express" class="choose_delivery J_Express" checked="checked">
                                           				<label for="Express_product/804/" id="label_express" class="J_label_express">快递（5元，系统自动判断选择快递）</label>
                                           				<div class="clear"></div>
                                           			</div>
                                           			<!--
                                           			<div class="option_box" style="">
                                           				<input name="express" id="EMS_product/804/" type="radio" value="EMS" class="choose_delivery J_EMS" name="logistic_preference[product/804/]" delivery_fee="15">
                                           				<label for="EMS_product/804/">EMS（15元，可能需要较长时间送达，新疆、西藏、宁夏、青海、内蒙古只支持EMS）</label>
                                           				<div class="clear"></div>
                                           			</div>
                                           			 -->
                                           			<span class="express_num">¥<span class="exp_num J_Final_Delivery">5</span></span>
                                           			<span class="express_tit">运费：</span>
                                           		</div>
                                           	</td>
                                        </tr>
                                        <tr class="order_amount">
                                            	<td colspan="4" style="padding:0;">
                                            		<div class="order_amount_container">
                                            			<div class="price_count express_num">
                                            				<div class="price">
                                            					¥<span id="total_amount_product/804/" class="total_amount"><s:property value="cart.price"/></span>
                                            				</div>
                                            			</div>
                                            			<span class="express_tit">本单应付：</span>
                                            			<div class="clear"></div>
                                            		</div>
                                            	</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="orders_total_amount">
                            	应付总额：<span class="total_count">¥<span id="cart_total"><s:property value="cart.price"/></span></span>
                            </div>
                        </div>
                    </div>
                    <div class="num_border"></div>
                    <div class="cart_left cart_left_last">
							<div class="option">
								<div class="paytype">
									<div id="paytype_gateway" class="paytype_gateway_after">
									</div>
								</div>
							</div>
					</div>
				</div>
				<div class="sure_payinfo_wrap">
						<div class="confirm_pay_box">
							<div class="confirm_pay">
								<a  href="carts_list" class="btn_grey_small">返回修改购物车</a>
								<input type="submit" id="btn_confirm_pay" class="btn_pink_big" value="确认订单">
								<div class="price_sum">
									应付总额：<span class="total_count">¥<span id="cart_total2"><s:property value="cart.price"/></span></span>
								</div>
							</div>
						</div>
				</div>
		</form>
	</div>
</div><!--  container end  -->

<div id="footer_container">
		<%@include file="pianduan/footer1.jsp" %>
</div><!--  footer_textarea  -->

<script>
//验证信息是否正确
function check_pay(){
	return true;
}
</script>
</body>
</html>