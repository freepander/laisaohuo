package com.myivcre.ga.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * 购物车
 * @author freepander
 *
 */
@Entity(name="cart")
public class Cart {
	@Id@GeneratedValue
	private int id;
	@OneToMany
	private List<CartItem> list=new ArrayList<CartItem>();
	@ManyToOne
	private ShopUser user;
	private double price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<CartItem> getList() {
		return list;
	}
	public void setList(List<CartItem> list) {
		this.list = list;
	}
	public ShopUser getUser() {
		return user;
	}
	public void setUser(ShopUser user) {
		this.user = user;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	

}
