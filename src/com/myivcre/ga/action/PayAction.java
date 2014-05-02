package com.myivcre.ga.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.conf.AlipayConfig;
import com.myivcre.ga.util.AlipaySubmit;

@Component("payAction")
@Scope("prototype")
public class PayAction extends BaseAction {
	private String WIDseller_email;
	private String WIDout_trade_no;
	private String WIDsubject;
	private String WIDprice;
	private String WIDbody;
	private String WIDshow_url;
	private String WIDreceive_name;;
	private String WIDreceive_address;
	private String WIDreceive_zip;
	private String WIDreceive_phone;
	private String WIDreceive_mobile;
	
	private String sHtmlText;
	public String alipayapi(){
		//支付类型
		String payment_type = "1";
		//必填，不能修改
		//服务器异步通知页面路径
		String notify_url = "http://www.laisaohuo.com/notify_notifyUrl";
		//需http://格式的完整路径，不能加?id=123这类自定义参数

		//页面跳转同步通知页面路径
		String return_url = "http://www.laisaohuo.com/notify_sreturn";
		//需http://格式的完整路径，不能加?id=123这类自定义参数，不能写成http://localhost/
		//卖家支付宝帐户
		String seller_email =WIDseller_email;
		//必填

		//商户订单号
		String out_trade_no =WIDout_trade_no;
		//商户网站订单系统中唯一订单号，必填

		//订单名称
		String subject =WIDsubject;
		//必填

		//付款金额
		String price = WIDprice;
		//必填

		//商品数量
		String quantity = "1";
		//必填，建议默认为1，不改变值，把一次交易看成是一次下订单而非购买一件商品
		//物流费用
		String logistics_fee = "0.00";
		//必填，即运费
		//物流类型
		String logistics_type = "EXPRESS";
		//必填，三个值可选：EXPRESS（快递）、POST（平邮）、EMS（EMS）
		//物流支付方式
		String logistics_payment = "SELLER_PAY";
		//必填，两个值可选：SELLER_PAY（卖家承担运费）、BUYER_PAY（买家承担运费）
		//订单描述

		String body = WIDbody;
		//商品展示地址
		String show_url =WIDshow_url;
		//需以http://开头的完整路径，如：http://www.xxx.com/myorder.html

		//收货人姓名
		String receive_name = WIDreceive_name;
		//如：张三

		//收货人地址
		String receive_address = WIDreceive_address;
		//如：XX省XXX市XXX区XXX路XXX小区XXX栋XXX单元XXX号

		//收货人邮编
		String receive_zip = WIDreceive_zip;
		//如：123456

		//收货人电话号码
		String receive_phone = WIDreceive_phone;
		//如：0571-88158090

		//收货人手机号码
		String receive_mobile = WIDreceive_mobile;
		//如：13312341234
		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("service", "create_partner_trade_by_buyer");
        sParaTemp.put("partner", AlipayConfig.partner);
        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
		sParaTemp.put("payment_type", payment_type);
		sParaTemp.put("notify_url", notify_url);
		sParaTemp.put("return_url", return_url);
		sParaTemp.put("seller_email", seller_email);
		sParaTemp.put("out_trade_no", out_trade_no);
		sParaTemp.put("subject", subject);
		sParaTemp.put("price", price);
		sParaTemp.put("quantity", quantity);
		sParaTemp.put("logistics_fee", logistics_fee);
		sParaTemp.put("logistics_type", logistics_type);
		sParaTemp.put("logistics_payment", logistics_payment);
		sParaTemp.put("body", body);
		sParaTemp.put("show_url", show_url);
		sParaTemp.put("receive_name", receive_name);
		sParaTemp.put("receive_address", receive_address);
		sParaTemp.put("receive_zip", receive_zip);
		sParaTemp.put("receive_phone", receive_phone);
		sParaTemp.put("receive_mobile", receive_mobile);
		
		//建立请求
		this.sHtmlText = AlipaySubmit.buildRequest(sParaTemp,"get","确认");
		
		return "paytoalipay";
	}
	public String getWIDseller_email() {
		return WIDseller_email;
	}
	public void setWIDseller_email(String wIDseller_email) {
		WIDseller_email = wIDseller_email;
	}
	public String getWIDout_trade_no() {
		return WIDout_trade_no;
	}
	public void setWIDout_trade_no(String wIDout_trade_no) {
		WIDout_trade_no = wIDout_trade_no;
	}
	public String getWIDsubject() {
		return WIDsubject;
	}
	public void setWIDsubject(String wIDsubject) {
		WIDsubject = wIDsubject;
	}
	public String getWIDprice() {
		return WIDprice;
	}
	public void setWIDprice(String wIDprice) {
		WIDprice = wIDprice;
	}
	public String getWIDbody() {
		return WIDbody;
	}
	public void setWIDbody(String wIDbody) {
		WIDbody = wIDbody;
	}
	public String getWIDshow_url() {
		return WIDshow_url;
	}
	public void setWIDshow_url(String wIDshow_url) {
		WIDshow_url = wIDshow_url;
	}
	public String getWIDreceive_name() {
		return WIDreceive_name;
	}
	public void setWIDreceive_name(String wIDreceive_name) {
		WIDreceive_name = wIDreceive_name;
	}
	public String getWIDreceive_address() {
		return WIDreceive_address;
	}
	public void setWIDreceive_address(String wIDreceive_address) {
		WIDreceive_address = wIDreceive_address;
	}
	public String getWIDreceive_zip() {
		return WIDreceive_zip;
	}
	public void setWIDreceive_zip(String wIDreceive_zip) {
		WIDreceive_zip = wIDreceive_zip;
	}
	public String getWIDreceive_phone() {
		return WIDreceive_phone;
	}
	public void setWIDreceive_phone(String wIDreceive_phone) {
		WIDreceive_phone = wIDreceive_phone;
	}
	public String getWIDreceive_mobile() {
		return WIDreceive_mobile;
	}
	public void setWIDreceive_mobile(String wIDreceive_mobile) {
		WIDreceive_mobile = wIDreceive_mobile;
	}
	public String getsHtmlText() {
		return sHtmlText;
	}
	public void setsHtmlText(String sHtmlText) {
		this.sHtmlText = sHtmlText;
	}

	
	
	
}
