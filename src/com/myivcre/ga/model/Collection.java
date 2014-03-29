package com.myivcre.ga.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * 用户收藏商品表
 * @author freepander
 *
 */
@Entity(name="collection")
public class Collection {
	@Id@GeneratedValue
	private long id;
	//用户
	@ManyToOne
	private ShopUser shopUser;
	//商品
	@ManyToOne
	private Goods goods;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public ShopUser getShopUser() {
		return shopUser;
	}
	public void setShopUser(ShopUser shopUser) {
		this.shopUser = shopUser;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	

}
