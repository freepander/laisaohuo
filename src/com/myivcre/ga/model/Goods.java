package com.myivcre.ga.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity(name = "goods")
public class Goods {
	@Id
	@GeneratedValue
	private int id;
	// 商品名称
	private String name;
	// 编号
	private String number;
	// 所属类别
	@ManyToOne
	private Category category;
	// 类别集合
	@OneToMany
	private List<TwoCategory> categoryList;
	// 所属品牌
	@ManyToOne
	private Brand brand;
	// 功效
	@ManyToOne
	private Effect effect;
	// 现价
	private double nowPrice;
	// 原价
	private double price;
	// 赠送积分
	private int integral;
	// 商品图片
	private String logo;
	// 详细描述
	@Column(length = 100000)
	private String description;
	// 商品重量
	private double weight;
	// 库存
	private int stock;
	// 销量
	private int salesVolume;
	// 是否上架
	private boolean visible;
	// 上架时间
	private Date date;
	// 访问量
	private long pageView;
	// 评分
	private double score;
	// 收藏数量
	private int collectionNumber;
	// 产品规格
	private String specifications;
	// 生产地区
	private String area;
	// 保质期限
	private String shelfLife;
	// 适用人群
	private String crowd;
	// 产品包装
	private String packaging;
	// 商品详情
	@Column(length = 100000)
	private String details;
	// 使用方法
	@Column(length = 100000)
	private String usages;
	// 商品实拍
	@Column(length = 100000)
	private String photos;
	// 是否删除
	private boolean deletes;

	public Goods() {
		this.collectionNumber = 0;
		this.score=1;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public long getPageView() {
		return pageView;
	}

	public void setPageView(long pageView) {
		this.pageView = pageView;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
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

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public List<TwoCategory> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(List<TwoCategory> categoryList) {
		this.categoryList = categoryList;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Effect getEffect() {
		return effect;
	}

	public void setEffect(Effect effect) {
		this.effect = effect;
	}

	public double getNowPrice() {
		return nowPrice;
	}

	public void setNowPrice(double nowPrice) {
		this.nowPrice = nowPrice;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getIntegral() {
		return integral;
	}

	public void setIntegral(int integral) {
		this.integral = integral;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public boolean isVisible() {
		return visible;
	}

	public void setVisible(boolean visible) {
		this.visible = visible;
	}


	public boolean isDelete() {
		return deletes;
	}

	public void setDelete(boolean delete) {
		this.deletes = delete;
	}

	public int getSalesVolume() {
		return salesVolume;
	}

	public void setSalesVolume(int salesVolume) {
		this.salesVolume = salesVolume;
	}

	public int getCollectionNumber() {
		return collectionNumber;
	}

	public void setCollectionNumber(int collectionNumber) {
		this.collectionNumber = collectionNumber;
	}

	public boolean isDeletes() {
		return deletes;
	}

	public void setDeletes(boolean deletes) {
		this.deletes = deletes;
	}

	public String getSpecifications() {
		return specifications;
	}

	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getShelfLife() {
		return shelfLife;
	}

	public void setShelfLife(String shelfLife) {
		this.shelfLife = shelfLife;
	}

	public String getCrowd() {
		return crowd;
	}

	public void setCrowd(String crowd) {
		this.crowd = crowd;
	}

	public String getPackaging() {
		return packaging;
	}

	public void setPackaging(String packaging) {
		this.packaging = packaging;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getUsages() {
		return usages;
	}

	public void setUsages(String usages) {
		this.usages = usages;
	}

	public String getPhotos() {
		return photos;
	}

	public void setPhotos(String photos) {
		this.photos = photos;
	}

}