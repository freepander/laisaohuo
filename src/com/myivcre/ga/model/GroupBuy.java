package com.myivcre.ga.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
/**
 * 团购
 * @author freepander
 *
 */
@Entity(name="groupbuy")
public class GroupBuy {
	@Id@GeneratedValue
	private int id;
	//名称
	private String name;
	//价格
	private double price;
	//创建时间
	private Date createDate;
	//开始时间
	private Date startDate;
	//结束时间
	private Date endDate;
	//收藏人数
	private int collectionNumber;
	//购买人数
	private int slaeNumber;
	//商品图片
	private String logo;
	//折扣
	private double discount;
	//团购商品
	@ManyToOne
	private Goods goods;
	//简单描述
	private String description;
	
	private boolean deletes;
	
	public GroupBuy(){
		this.deletes=false;
		this.createDate=new Date();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getCollectionNumber() {
		return collectionNumber;
	}
	public void setCollectionNumber(int collectionNumber) {
		this.collectionNumber = collectionNumber;
	}
	public int getSlaeNumber() {
		return slaeNumber;
	}
	public void setSlaeNumber(int slaeNumber) {
		this.slaeNumber = slaeNumber;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public boolean isDeletes() {
		return deletes;
	}
	public void setDeletes(boolean deletes) {
		this.deletes = deletes;
	}
	
	
	

}
