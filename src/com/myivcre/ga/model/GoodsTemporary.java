package com.myivcre.ga.model;

/**
 * 临时商品类
 * 不需要存储在数据库中
 * @author freepander
 *
 */
public class GoodsTemporary {
	public String name;
	public int id;
	public String price;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}

}
