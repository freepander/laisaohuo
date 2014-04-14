package com.myivcre.ga.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Address;
import com.myivcre.ga.model.Cart;
import com.myivcre.ga.model.Goods;
import com.myivcre.ga.model.Order;
import com.myivcre.ga.model.OrderItem;
import com.myivcre.ga.model.ShopUser;
import com.myivcre.ga.service.BaseService;
import com.myivcre.ga.util.Billing;
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
				item.setCount(this.number);
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
		double sum=0;
		Billing.cart(this.cart);
		this.cart.setPrice(sum);
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
		this.order.setAddress(address);
		this.order.setDeliverytime(deliverytime);
		this.order.setUserMessage(userMessage);
		this.order.setPrice(1);
		this.order.setNowPrice(1);
		this.order.setFreight(5);
		this.order.setState(1);
		this.order.setShopUser(this.user);
		this.order.setIntegral(10);
		this.order.setCreateDate(new Date());
		this.baseService.save(this.order);
		return "pay";
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

}
