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
    <link rel="stylesheet" type="text/css" href="fontassets/css/jumei_usercenter.min.css">
	<style type="text/css">
	.top_nav_hot{ position: absolute;left:81px;top:-4px;}
    
    .tishi a{font-size:16px;color:#fa1160;}
    .tishi{background-color:#fefded;height: 30px;text-align: center;font-weight: bold;line-height: 30px;width: 758px;border: 1px solid #f9f2a7;margin: 15px 0;}

	</style>
</head>
<body>
<div id="header_container">
	<%@ include file="pianduan/user_header.jsp" %>
</div><!-- end  heander_container  -->

<div class="profile">
    <%@ include file="pianduan/user_nav.jsp" %>
    <div class="content">
    	
    	
    	
    	<form id="settings-form" method="post" action="user_messageUpdate">
    		<input type="hidden" name="jm_form_hash" value="">
    		<div class="input_container">
    			<label for="settings-email-address">Email</label>
    			<input type="text" name="email" id="settings-email-address" class="t_input readonly" readonly="" value="876667380@qq.com" disabled="disabled">
   				<a href="#" target="_blank" style="margin:0 10px;">修改</a>
   				<a href="/i/account/verify_current_email" class="btn_mid_pink">验证邮箱</a>
    		</div>
    		<div class="input_container">
    			<label for="settings-username"><span class="spark">*</span>用户名</label>
    			<input required="" type="text" size="30" name="username" id="settings-username" class="t_input" value="frepander">
    			<span class="valueMissing">请填写您的用户名</span>
    		</div>
    		<div class="input_container">
				<label>选择头像</label>
				<img src="http://p0.jmstatic.com/product_report/default/avatar/avatar_small.png?1392454094" alt="小头像">
				<a href="/i/account/avatar" class="changeavatar">更换头像</a>
			</div>
			<div class="input_container">
				<label>性别</label>
				<label class="radio">
					<span class="radio_ui">
						<input name="gender" type="radio" id="gender_f" autocomplete="off" value="2" checked="checked">
						<b></b>
					</span>女
				</label>
				<label class="radio">
					<span class="radio_ui">
						<input name="gender" type="radio" id="gender_m" autocomplete="off" value="1">
						<b></b>
					</span>男
				</label>
			</div>
			<div class="input_container">
				<label><span class="spark">*</span>生日</label>
				<span class="select_ui">
					<div class="select_arrow"></div>
					<div class="select_text_ui" style="min-width: 2.5em;">&nbsp;</div>
					<select name="birthday_year" required="true">
						<option label="" value=""></option>
						<option label="2010" value="2010">2010</option>
						<option label="2009" value="2009">2009</option>
						<option label="2008" value="2008">2008</option>
						<option label="2007" value="2007">2007</option>
						<option label="2006" value="2006">2006</option>
						<option label="2005" value="2005">2005</option>
						<option label="2004" value="2004">2004</option>
						<option label="2003" value="2003">2003</option>
						<option label="2002" value="2002">2002</option>
						<option label="2001" value="2001">2001</option>
						<option label="2000" value="2000">2000</option>
						<option label="1999" value="1999">1999</option>
						<option label="1998" value="1998">1998</option>
						<option label="1997" value="1997">1997</option>
						<option label="1996" value="1996">1996</option>
						<option label="1995" value="1995">1995</option>
						<option label="1994" value="1994">1994</option>
						<option label="1993" value="1993">1993</option>
						<option label="1992" value="1992">1992</option>
						<option label="1991" value="1991">1991</option>
						<option label="1990" value="1990">1990</option>
						<option label="1989" value="1989">1989</option>
						<option label="1988" value="1988">1988</option>
						<option label="1987" value="1987">1987</option>
						<option label="1986" value="1986">1986</option>
						<option label="1985" value="1985">1985</option>
						<option label="1984" value="1984">1984</option>
						<option label="1983" value="1983">1983</option>
						<option label="1982" value="1982">1982</option>
						<option label="1981" value="1981">1981</option>
						<option label="1980" value="1980">1980</option>
						<option label="1979" value="1979">1979</option>
						<option label="1978" value="1978">1978</option>
						<option label="1977" value="1977">1977</option>
						<option label="1976" value="1976">1976</option>
						<option label="1975" value="1975">1975</option>
						<option label="1974" value="1974">1974</option>
						<option label="1973" value="1973">1973</option>
						<option label="1972" value="1972">1972</option>
						<option label="1971" value="1971">1971</option>
						<option label="1970" value="1970">1970</option>
						<option label="1969" value="1969">1969</option>
						<option label="1968" value="1968">1968</option>
						<option label="1967" value="1967">1967</option>
						<option label="1966" value="1966">1966</option>
						<option label="1965" value="1965">1965</option>
						<option label="1964" value="1964">1964</option>
						<option label="1963" value="1963">1963</option>
						<option label="1962" value="1962">1962</option>
						<option label="1961" value="1961">1961</option>
						<option label="1960" value="1960">1960</option>
						<option label="1959" value="1959">1959</option>
						<option label="1958" value="1958">1958</option>
						<option label="1957" value="1957">1957</option>
						<option label="1956" value="1956">1956</option>
						<option label="1955" value="1955">1955</option>
						<option label="1954" value="1954">1954</option>
						<option label="1953" value="1953">1953</option>
						<option label="1952" value="1952">1952</option>
						<option label="1951" value="1951">1951</option>
						<option label="1950" value="1950">1950</option>
						<option label="1949" value="1949">1949</option>
					</select>
				</span>
				<span class="text">年</span>
				<span class="select_ui">
					<div class="select_arrow"></div>
					<div class="select_text_ui" style="min-width: 1.5em;">&nbsp;</div>
					<select name="birthday_month" required="true">
						<option label="" value=""></option>
						<option label="1" value="1">1</option>
						<option label="2" value="2">2</option>
						<option label="3" value="3">3</option>
						<option label="4" value="4">4</option>
						<option label="5" value="5">5</option>
						<option label="6" value="6">6</option>
						<option label="7" value="7">7</option>
						<option label="8" value="8">8</option>
						<option label="9" value="9">9</option>
						<option label="10" value="10">10</option>
						<option label="11" value="11">11</option>
						<option label="12" value="12">12</option>
					</select>
				</span>
				<span class="text">月</span>
				<span class="select_ui">
					<div class="select_arrow"></div>
					<div class="select_text_ui" style="min-width: 1.5em;">&nbsp;</div>
					<select name="birthday_day" required="true">
						<option label="" value=""></option>
						<option label="1" value="1">1</option>
						<option label="2" value="2">2</option>
						<option label="3" value="3">3</option>
						<option label="4" value="4">4</option>
						<option label="5" value="5">5</option>
						<option label="6" value="6">6</option>
						<option label="7" value="7">7</option>
						<option label="8" value="8">8</option>
						<option label="9" value="9">9</option>
						<option label="10" value="10">10</option>
						<option label="11" value="11">11</option>
						<option label="12" value="12">12</option>
						<option label="13" value="13">13</option>
						<option label="14" value="14">14</option>
						<option label="15" value="15">15</option>
						<option label="16" value="16">16</option>
						<option label="17" value="17">17</option>
						<option label="18" value="18">18</option>
						<option label="19" value="19">19</option>
						<option label="20" value="20">20</option>
						<option label="21" value="21">21</option>
						<option label="22" value="22">22</option>
						<option label="23" value="23">23</option>
						<option label="24" value="24">24</option>
						<option label="25" value="25">25</option>
						<option label="26" value="26">26</option>
						<option label="27" value="27">27</option>
						<option label="28" value="28">28</option>
						<option label="29" value="29">29</option>
						<option label="30" value="30">30</option>
						<option label="31" value="31">31</option>
					</select>
				</span>
				<span class="text">日</span>
				<span class="otherError">请填写您的生日</span>
				<div class="act">
					<span class="status_red">准确填写生日，有机会获得更多惊喜哦！</span>
				</div>
			</div>
			<div class="input_container">
				<label>隐私</label>
				<label class="checkbox">
					<span class="checkbox_ui">
						<input type="checkbox" value="1" id="hide_privacy" name="hide_privacy">
						<b></b>
					</span>不显示我的年龄
				</label>
				<label class="checkbox">
					<span class="checkbox_ui">
						<input type="checkbox" value="1" id="show_my_products" name="show_my_products">
						<b></b>
					</span>
					在口碑中心显示我的美妆
				</label>
			</div>
			<div class="input_container selectwidth">
				<label for="skin_type"><span class="spark">*</span>你的皮肤属于</label>
				<span class="select_ui">
					<div class="select_arrow"></div>
					<div class="select_text_ui" style="min-width: 7.5em;">&nbsp;</div>
					<select name="skin_type" id="skin_type" required="true">
<option label="" value="" selected="selected"></option>
<option label="油性皮肤" value="油性皮肤">油性皮肤</option>
<option label="干性皮肤" value="干性皮肤">干性皮肤</option>
<option label="中性皮肤" value="中性皮肤">中性皮肤</option>
<option label="混合性皮肤" value="混合性皮肤">混合性皮肤</option>
<option label="敏感型皮肤" value="敏感型皮肤">敏感型皮肤</option>
<option label="敏感油性皮肤" value="敏感油性皮肤">敏感油性皮肤</option>
<option label="敏感干性皮肤" value="敏感干性皮肤">敏感干性皮肤</option>
<option label="敏感中性皮肤" value="敏感中性皮肤">敏感中性皮肤</option>
<option label="敏感混合性皮肤" value="敏感混合性皮肤">敏感混合性皮肤</option>
</select></span>

			<span class="valueMissing">请填写你的皮肤类型</span>
		</div>
		<div class="input_container selectwidth">
			<label for="hair_type"><span class="spark">*</span>你的发质属于</label>
			<span class="select_ui"><div class="select_arrow"></div><div class="select_text_ui" style="min-width: 5.5em;">&nbsp;</div><select name="hair_type" id="hair_type" required="true">
<option label="" value="" selected="selected"></option>
<option label="油性发质" value="油性发质">油性发质</option>
<option label="干性发质" value="干性发质">干性发质</option>
<option label="中性发质" value="中性发质">中性发质</option>
<option label="混合性发质" value="混合性发质">混合性发质</option>
<option label="受损发质" value="受损发质">受损发质</option>
<option label="头屑发质" value="头屑发质">头屑发质</option>
<option label="无生气发质" value="无生气发质">无生气发质</option>
<option label="脱落发质" value="脱落发质">脱落发质</option>
</select></span>

			<span class="valueMissing">请填写你的发质类型</span>
		</div>
		<div class="input_container selectwidth">
			<label for="purchasing_power"><span class="spark">*</span>美容品年消费</label>
			<span class="select_ui"><div class="select_arrow"></div><div class="select_text_ui" style="min-width: 6.5em;">&nbsp;</div><select name="purchasing_power" id="purchasing_power" required="true">
<option label="" value="" selected="selected"></option>
<option label="0-500" value="0-500">0-500</option>
<option label="500-1000" value="500-1000">500-1000</option>
<option label="1000-2999" value="1000-2999">1000-2999</option>
<option label="3000-4999" value="3000-4999">3000-4999</option>
<option label="5000-6999" value="5000-6999">5000-6999</option>
<option label="7000-10000" value="7000-10000">7000-10000</option>
<option label="20000-30000" value="20000-30000">20000-30000</option>
<option label="30000以上" value="30000以上">30000以上</option>
</select></span>

			<span class="valueMissing">请填写您的美容品年消费</span>
		</div>
		<div class="input_container">
			<label for="comment">美丽宣言</label>
			<textarea rows="8" cols="50" id="comment" name="comment"></textarea>
		</div>
		<div class="act">
			<input type="submit" value="保存修改" name="commit" id="settings-submit">
		</div>
	</form>
	
	
	
	
    </div>
</div>


<div class="clear"></div>
<div id="footer_container">
	<%@include file="pianduan/footer1.jsp" %>
</div>
</body>
</html>