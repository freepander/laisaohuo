package com.myivcre.ga.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Cart;
import com.myivcre.ga.model.CartItem;
import com.myivcre.ga.model.Goods;
import com.myivcre.ga.service.BaseService;
import com.opensymphony.xwork2.ActionSupport;

@Component("cartsAction")
@Scope("prototype")
public class CartsAction extends ActionSupport {
	@Resource
	BaseService baseService;
	private int goodsId;
	private int number;
	private Cart cart;
	/**
	 * 添加商品到购物车
	 * @return
	 */
	public String add(){
		Map<String, Object> session=ServletActionContext.getContext().getSession();
		this.cart=(Cart)session.get("cart");
		if(this.cart==null){
			this.cart=new Cart();
		}
		boolean flag=false;
		for(CartItem item:this.cart.getList()){
			if(item.getGoods().getId()==this.goodsId){
				item.setCount(item.getCount()+this.number);
				item.setPrice(item.getPrice()+this.number*item.getGoods().getNowPrice());
				flag=true;
			}
		}
		if(!flag){
			CartItem item=new CartItem();
			item.setCount(this.number);
			Goods goods=(Goods)this.baseService.get(Goods.class, goodsId);
			item.setGoods(goods);
			item.setPrice(this.number*item.getGoods().getNowPrice());
			this.cart.getList().add(item);
		}
		double sum=0;
		for(CartItem item:this.cart.getList()){
			sum+=item.getPrice();
		}
		this.cart.setPrice(sum);
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
		this.cart=(Cart)session.get("cart");
		for(int i=0;i<this.cart.getList().size();i++){
			if(this.cart.getList().get(i).getGoods().getId()==this.goodsId){
				this.cart.getList().remove(i);
			}
		}
		double sum=0;
		for(CartItem item:this.cart.getList()){
			sum+=item.getPrice();
		}
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
	public BaseService getBaseService() {
		return baseService;
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

}
