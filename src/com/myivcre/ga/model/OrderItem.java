package com.myivcre.ga.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * 订单项
 * @author freepander
 *
 */
@Entity(name="orderitem")
public class OrderItem {
	@Id@GeneratedValue
	private int id;
	//购买的商品
	@ManyToOne
	private Goods goods;
	//购买数量
	private int count;
	//优惠信息
	private String messagae;
	//优惠价格
	private double discount;
	//原始价格
	private double price;
	//最终价格
	private double nowPrice;
	public OrderItem(){
		this.goods=null;
		this.count=1;
		this.messagae="";
		this.discount=0;
		this.price=0;
		this.nowPrice=0;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getMessagae() {
		return messagae;
	}
	public void setMessagae(String messagae) {
		this.messagae = messagae;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getNowPrice() {
		return nowPrice;
	}
	public void setNowPrice(double nowPrice) {
		this.nowPrice = nowPrice;
	}
	

}
