package com.myivcre.ga.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.conf.AlipayConfig;
import com.myivcre.ga.model.Address;
import com.myivcre.ga.model.Cart;
import com.myivcre.ga.model.Goods;
import com.myivcre.ga.model.Order;
import com.myivcre.ga.model.OrderItem;
import com.myivcre.ga.model.ShopUser;
import com.myivcre.ga.service.BaseService;
import com.myivcre.ga.util.AlipaySubmit;
import com.myivcre.ga.util.Billing;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Component("cartsAction")
@Scope("prototype")
public class CartsAction extends ActionSupport {
	@Resource
	BaseService baseService;
	private int goodsId;
	private int number;
	private Cart cart;
	private ShopUser user;
	private Order order;
	private int addressId;
	private String deliverytime;
	private String userMessage;
	//添加一个新地址
	private String addressee;
	private String province;
	private String city;
	private String district;
	private String street;
	private String zipCode;
	private String telphone;
	//支付宝表单
	private String alipay_forms;
	/**
	 * 添加一件商品到购物车
	 * @return
	 */
	public String add(){
		Map<String, Object> session=ServletActionContext.getContext().getSession();
		//从session中获得购物车内容
		this.cart=(Cart)session.get("cart");
		//如果购物车为空则重新创建购物车
		if(this.cart==null){
			this.cart=new Cart();
		}
		boolean flag=false;
		//遍历购物车内商品，购物车内已经存在该商品，则只更改数量
		for(OrderItem item:this.cart.getList()){
			if(item.getGoods().getId()==this.goodsId){
				item.setCount(this.number+item.getCount());
				//传入计费系统
				Billing.orderItem(item);
				flag=true;
			}
		}
		//购物车中不存在该商品，将新的商品添加到购物车中
		if(!flag){
			OrderItem item=new OrderItem();
			Goods goods=(Goods)this.baseService.get(Goods.class, goodsId);
			item.setGoods(goods);
			item.setCount(this.number);
			//传入计费系统
			Billing.orderItem(item);
			this.cart.getList().add(item);
		}
		//计算价格
		Billing.cart(this.cart);
		//将新的购物车放入session中
		session.put("cart", this.cart);
		return "cart";
	}
	/**
	 * 查看购物车
	 * @return
	 */
	public String list(){
		Map<String, Object> session=ServletActionContext.getContext().getSession();
		this.cart=(Cart)session.get("cart");
		if(cart==null){
			this.cart=new Cart();
		}
		return "cart";
	}
	/**
	 * 从购物车中删除一件商品
	 * @return
	 */
	public String deleteOneById(){
		Map<String, Object> session=ServletActionContext.getContext().getSession();
		//从session中获得商品
		this.cart=(Cart)session.get("cart");
		//找到指定商品，删除
		for(int i=0;i<this.cart.getList().size();i++){
			if(this.cart.getList().get(i).getGoods().getId()==this.goodsId){
				this.cart.getList().remove(i);
			}
		}
		//计算价格
		double sum=0;
		Billing.cart(this.cart);
		this.cart.setPrice(sum);
		session.put("cart", this.cart);
		return "cart";
	}
	/**
	 * 清空购物车
	 * @return
	 */
	public String removeAll(){
		Map<String, Object> session=ServletActionContext.getContext().getSession();
		this.cart=(Cart)session.get("cart");
		this.cart.setList(new ArrayList());
		this.cart.setPrice(0);
		session.put("cart", this.cart);
		return "cart";
	}
	/**
	 * 生成订单
	 * @return
	 */
	public String createOrder(){
		Map<String, Object> session=ServletActionContext.getContext().getSession();
		//从session中获得购物车
		this.cart=(Cart)session.get("cart");
		//从session中获得user
		this.user=(ShopUser)session.get("user");
		//重新从数据库中查找user，放置缓存造成错误
		this.user=(ShopUser)this.baseService.get(ShopUser.class, this.user.getId());
		//对购物车进行计费
		return "order";
	}
	
	/**
	 * 完善订单信息，准备支付
	 * @return
	 */
	public String orderSuccess(){
		Map<String, Object> session=ServletActionContext.getContext().getSession();
		//从session中获得user
		this.user=(ShopUser)session.get("user");
		//重新从数据库中查找user，放置缓存造成错误
		this.user=(ShopUser)this.baseService.get(ShopUser.class, this.user.getId());
		//创建订单对象
		this.order=new Order();
		this.cart=(Cart)session.get("cart");
		for(OrderItem item: this.cart.getList()){
			this.order.getItemList().add(item);
			this.baseService.save(item);
		}
		this.order.setNumber(String.valueOf(new Date().getTime()));
		Address address=(Address)this.baseService.get(Address.class , addressId);
		this.order.setAddressee(address.getAddressee());
		this.order.setProvince(address.getProvince());
		this.order.setCity(address.getCity());
		this.order.setDistrict(address.getDistrict());
		this.order.setStreet(address.getStreet());
		this.order.setZipCode(address.getZipCode());
		this.order.setTelphone(address.getTelphone());
		this.order.setDeliverytime(deliverytime);
		this.order.setUserMessage(userMessage);
		this.order.setFreight(5);
		this.order.setState(1);
		this.order.setShopUser(this.user);
		this.order.setIntegral(10);
		this.order.setCreateDate(new Date());
		Billing.order(this.order);
		this.baseService.save(this.order);
		//清空购物车
		session.put("cart", null);
		
		
//		//支付类型
//		String payment_type = "1";
//		//必填，不能修改
//		//服务器异步通知页面路径
//		String notify_url = "http://www.xxx.com/create_partner_trade_by_buyer-JAVA-UTF-8/notify_url.jsp";
//		//需http://格式的完整路径，不能加?id=123这类自定义参数
//
//		//页面跳转同步通知页面路径
//		String return_url = "http://www.xxx.com/create_partner_trade_by_buyer-JAVA-UTF-8/return_url.jsp";
//		//需http://格式的完整路径，不能加?id=123这类自定义参数，不能写成http://localhost/
//		//卖家支付宝帐户
//		String seller_email ="laisaohuo@163.com";
//		//必填
//
//		//商户订单号
//		String out_trade_no =this.order.getNumber();
//		//商户网站订单系统中唯一订单号，必填
//
//		//订单名称
//		String subject ="来扫货商城";
//		//必填
//
//		//付款金额
//		String price = String.valueOf(this.order.getNowPrice());
//		//必填
//
//		//商品数量
//		String quantity = "1";
//		//必填，建议默认为1，不改变值，把一次交易看成是一次下订单而非购买一件商品
//		//物流费用
//		String logistics_fee = "0.00";
//		//必填，即运费
//		//物流类型
//		String logistics_type = "EXPRESS";
//		//必填，三个值可选：EXPRESS（快递）、POST（平邮）、EMS（EMS）
//		//物流支付方式
//		String logistics_payment = "SELLER_PAY";
//		//必填，两个值可选：SELLER_PAY（卖家承担运费）、BUYER_PAY（买家承担运费）
//		//订单描述
//
//		String body = "来扫货商城";
//		//商品展示地址
//		String show_url ="http://www.laisaohuo.com";
//		//需以http://开头的完整路径，如：http://www.xxx.com/myorder.html
//
//		//收货人姓名
//		String receive_name = this.order.getAddressee();
//		//如：张三
//
//		//收货人地址
//		String receive_address = this.order.getProvince()+this.order.getCity()+this.order.getDistrict()+this.order.getStreet();
//		//如：XX省XXX市XXX区XXX路XXX小区XXX栋XXX单元XXX号
//
//		//收货人邮编
//		String receive_zip = this.order.getZipCode();
//		//如：123456
//
//		//收货人电话号码
//		String receive_phone = "";
//		//如：0571-88158090
//
//		//收货人手机号码
//		String receive_mobile = this.order.getTelphone();
//		//如：13312341234
//		//把请求参数打包成数组
//		Map<String, String> sParaTemp = new HashMap<String, String>();
//		sParaTemp.put("service", "create_partner_trade_by_buyer");
//        sParaTemp.put("partner", AlipayConfig.partner);
//        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
//		sParaTemp.put("payment_type", payment_type);
//		sParaTemp.put("notify_url", notify_url);
//		sParaTemp.put("return_url", return_url);
//		sParaTemp.put("seller_email", seller_email);
//		sParaTemp.put("out_trade_no", out_trade_no);
//		sParaTemp.put("subject", subject);
//		sParaTemp.put("price", price);
//		sParaTemp.put("quantity", quantity);
//		sParaTemp.put("logistics_fee", logistics_fee);
//		sParaTemp.put("logistics_type", logistics_type);
//		sParaTemp.put("logistics_payment", logistics_payment);
//		sParaTemp.put("body", body);
//		sParaTemp.put("show_url", show_url);
//		sParaTemp.put("receive_name", receive_name);
//		sParaTemp.put("receive_address", receive_address);
//		sParaTemp.put("receive_zip", receive_zip);
//		sParaTemp.put("receive_phone", receive_phone);
//		sParaTemp.put("receive_mobile", receive_mobile);
//		//建立请求
//		this.alipay_forms = AlipaySubmit.buildRequest(sParaTemp,"get","确认");
		return "pay";
	}
	public String addAddress(){
		Map<String, Object> session=ServletActionContext.getContext().getSession();
		this.user=(ShopUser)session.get("user");
		this.user=(ShopUser)this.baseService.get(ShopUser.class, this.user.getId());
		//创建新的地址
		Address address=new Address();
		address.setAddressee(addressee);
		address.setProvince(province);
		address.setCity(city);
		address.setDistrict(district);
		address.setStreet(street);
		address.setZipCode(zipCode);
		address.setTelphone(telphone);
		if(this.user.getAddressList()==null){
			this.user.setAddressList(new ArrayList<Address>());
		}
		this.user.getAddressList().add(address);
		//更新user对象
		this.baseService.update(this.user);
		//获得购物车对象
		this.cart=(Cart)session.get("cart");
		return "order";
	}
	public BaseService getBaseService() {
		return baseService;
	}
	public ShopUser getUser() {
		return user;
	}
	public void setUser(ShopUser user) {
		this.user = user;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public void setBaseService(BaseService baseService) {
		this.baseService = baseService;
	}
	
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public String getDeliverytime() {
		return deliverytime;
	}
	public void setDeliverytime(String deliverytime) {
		this.deliverytime = deliverytime;
	}
	public String getUserMessage() {
		return userMessage;
	}
	public void setUserMessage(String userMessage) {
		this.userMessage = userMessage;
	}
	public String getAddressee() {
		return addressee;
	}
	public void setAddressee(String addressee) {
		this.addressee = addressee;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public String getAlipay_forms() {
		return alipay_forms;
	}
	public void setAlipay_forms(String alipay_forms) {
		this.alipay_forms = alipay_forms;
	}

}
