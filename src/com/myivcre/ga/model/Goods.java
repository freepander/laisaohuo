package com.myivcre.ga.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * 商品
 * @author freepander
 *
 */
@Entity(name = "goods")
public class Goods {
	@Id
	@GeneratedValue
	private int id;
	// 商品名称
	private String name;
	//商品条码
	private String numbers;
	// 所属类别  一级
	@ManyToOne
	private BigCategory bigCategory;
	//所属类别  二级
	@ManyToOne
	private Category category;
	//所属类别  三级
	@ManyToOne
	private TwoCategory twoCategory;
	// 所属品牌
	@ManyToOne
	private Brand brand;
	//功效列表
	@OneToMany
	private List<Effect> effectList;
	// 进价
	private double price;
	//原价
	private double originalPrice;
	// 售价
	private double nowPrice;
	//利润
	private double profit;
	//商品容量
	private String capacity;
	//商品规格
	private String spec;
	// 商品图片
	private String logo;
	// 库存
	private int stock;
	// 销量
	private int salesVolume;
	// 伪销量
	private int salesVolume2;
	// 是否上架
	private boolean visible;
	// 访问量
	private long pageView;
	// 评分
	private double score;
	// 评分人数
	private int scoreNumber;
	// 收藏数量
	private int collectionNumber;
	// 生产国家
	private String area;
	// 保质期限
	private String shelfLife;
	// 适用人群
	private String crowd;
	//保存方法
	private String baoCunMethod;
	//挂码声明
	private String luanMa;
	//特别声明
	private String teBieShengMing;
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
	
	//是否出现在首页
	private boolean onIndex;
	//评论个数
	private int reviewNumber;
	//折扣 单个商品折扣
	private double discount;
	//打折后价格
	private double discountPrice;
	public Goods(){
		this.reviewNumber=0;
		this.discount=1;
	}
	/**
	 * 出货  减少库存
	 * @return
	 */
	public void deletestock(int c){
		this.stock=this.stock-c;
	}
	public boolean isOnIndex() {
		return onIndex;
	}

	public void setOnIndex(boolean onIndex) {
		this.onIndex = onIndex;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumbers() {
		return numbers;
	}

	public void setNumbers(String numbers) {
		this.numbers = numbers;
	}

	public BigCategory getBigCategory() {
		return bigCategory;
	}

	public void setBigCategory(BigCategory bigCategory) {
		this.bigCategory = bigCategory;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public int getReviewNumber() {
		return reviewNumber;
	}

	public void setReviewNumber(int reviewNumber) {
		this.reviewNumber = reviewNumber;
	}

	public TwoCategory getTwoCategory() {
		return twoCategory;
	}

	public void setTwoCategory(TwoCategory twoCategory) {
		this.twoCategory = twoCategory;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public List<Effect> getEffectList() {
		return effectList;
	}

	public void setEffectList(List<Effect> effectList) {
		this.effectList = effectList;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getOriginalPrice() {
		return originalPrice;
	}

	public void setOriginalPrice(double originalPrice) {
		this.originalPrice = originalPrice;
	}

	public double getNowPrice() {
		return nowPrice;
	}

	public void setNowPrice(double nowPrice) {
		this.nowPrice = nowPrice;
	}

	public double getProfit() {
		return profit;
	}

	public void setProfit(double profit) {
		this.profit = profit;
	}

	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getSalesVolume() {
		return salesVolume;
	}

	public void setSalesVolume(int salesVolume) {
		this.salesVolume = salesVolume;
	}

	public int getSalesVolume2() {
		return salesVolume2;
	}

	public void setSalesVolume2(int salesVolume2) {
		this.salesVolume2 = salesVolume2;
	}

	public boolean isVisible() {
		return visible;
	}

	public void setVisible(boolean visible) {
		this.visible = visible;
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


	public double getDiscountPrice() {
		return discountPrice;
	}
	public void setDiscountPrice(double discountPrice) {
		this.discountPrice = discountPrice;
	}
	public int getCollectionNumber() {
		return collectionNumber;
	}

	public void setCollectionNumber(int collectionNumber) {
		this.collectionNumber = collectionNumber;
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

	public String getBaoCunMethod() {
		return baoCunMethod;
	}

	public void setBaoCunMethod(String baoCunMethod) {
		this.baoCunMethod = baoCunMethod;
	}

	public String getLuanMa() {
		return luanMa;
	}

	public void setLuanMa(String luanMa) {
		this.luanMa = luanMa;
	}

	public String getTeBieShengMing() {
		return teBieShengMing;
	}

	public void setTeBieShengMing(String teBieShengMing) {
		this.teBieShengMing = teBieShengMing;
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

	public boolean isDeletes() {
		return deletes;
	}

	public void setDeletes(boolean deletes) {
		this.deletes = deletes;
	}

	public int getScoreNumber() {
		return scoreNumber;
	}

	public void setScoreNumber(int scoreNumber) {
		this.scoreNumber = scoreNumber;
	}
	

}
