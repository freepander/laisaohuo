package com.myivcre.ga.action;

import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Brand;
import com.myivcre.ga.model.Category;
import com.myivcre.ga.model.Effect;
import com.myivcre.ga.model.Goods;


@Component("goodsAction")
@Scope("prototype")
public class GoodsAction extends BaseAction {
	private String name;
	private String number;
	private int categoryId;
	private List towCategoryList;
	private int brandId;
	private int effectId;
	private double nowPrice;
	private double price;
	private String logo;
	private String description;
	private double weight;
	private int stock;
	private int salesVolume;
	private double score;
	private int integral;
	private Goods goods;
	private String specifications;
	private String area;
	private String shelfLife;
	private String crowd;
	private String packaging;
	private String details;
	private String usages;
	private String photos;
	private List categoryList;
	private List brandList;
	private List effectList;
	public String list(){
		try{
			q.add("deletes=?");
			a.add(false);
			//orderby.add("");
			this.pageModel=this.baseService.getPageModel("goods", pageNum, 20,orderby,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/goods_list?pageNum=");
		return "success";
	}
	public String input(){
		if(id!=0){
			this.goods=(Goods)this.baseService.get(Goods.class, id);
		}
		this.categoryList=this.baseService.getByHal("from category where deletes=false");
		this.brandList=this.baseService.getByHal("from brand where deletes=false");
		this.effectList=this.baseService.getByHal("from effect where deletes=false");
		return "success";
	}
	public String add(){
		this.goods=new Goods();
		this.goods.setName(name);
		this.goods.setNumber(number);
		Category category=(Category)this.baseService.get(Category.class, categoryId);
		this.goods.setCategory(category);
		Brand brand=(Brand)this.baseService.get(Brand.class, brandId);
		Effect effect=(Effect)this.baseService.get(Effect.class, effectId);
		this.goods.setEffect(effect);
		this.goods.setBrand(brand);
		this.goods.setNowPrice(nowPrice);
		this.goods.setPrice(price);
		this.goods.setLogo(logo);
		this.goods.setDescription(description);
		this.goods.setWeight(weight);
		this.goods.setStock(stock);
		this.goods.setVisible(true);
		this.goods.setDate(new Date());
		this.goods.setDelete(false);
		this.goods.setArea(area);
		this.goods.setSpecifications(specifications);
		this.goods.setShelfLife(shelfLife);
		this.goods.setPackaging(packaging);
		this.goods.setUsages(usages);
		this.goods.setPhotos(photos);
		this.goods.setCrowd(crowd);
		this.goods.setDetails(details);
		this.baseService.save(this.goods);
		return "list";
	}
	public String update(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		this.goods.setName(name);
		this.goods.setNumber(number);
		Category category=(Category)this.baseService.get(Category.class, categoryId);
		this.goods.setCategory(category);
		Brand brand=(Brand)this.baseService.get(Brand.class, brandId);
		Effect effect=(Effect)this.baseService.get(Effect.class, effectId);
		this.goods.setEffect(effect);
		this.goods.setBrand(brand);
		this.goods.setNowPrice(nowPrice);
		this.goods.setPrice(price);
		this.goods.setLogo(logo);
		this.goods.setDescription(description);
		this.goods.setWeight(weight);
		this.goods.setStock(stock);
		this.goods.setVisible(true);
		this.goods.setDate(new Date());
		this.goods.setDelete(false);
		this.goods.setArea(area);
		this.goods.setSpecifications(specifications);
		this.goods.setShelfLife(shelfLife);
		this.goods.setPackaging(packaging);
		this.goods.setUsages(usages);
		this.goods.setPhotos(photos);
		this.goods.setCrowd(crowd);
		this.goods.setDetails(details);
		this.baseService.update(this.goods);
		return "list";
	}
	public String delete(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		this.goods.setDelete(true);
		this.goods.setVisible(false);
		this.baseService.update(this.goods);
		return "list";
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
	public List getCategoryList() {
		return categoryList;
	}
	public void setCategoryList(List categoryList) {
		this.categoryList = categoryList;
	}
	public List getBrandList() {
		return brandList;
	}
	public void setBrandList(List brandList) {
		this.brandList = brandList;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public List getTowCategoryList() {
		return towCategoryList;
	}
	public void setTowCategoryList(List towCategoryList) {
		this.towCategoryList = towCategoryList;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public int getEffectId() {
		return effectId;
	}
	public void setEffectId(int effectId) {
		this.effectId = effectId;
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
	public int getSalesVolume() {
		return salesVolume;
	}
	public void setSalesVolume(int salesVolume) {
		this.salesVolume = salesVolume;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public List getEffectList() {
		return effectList;
	}
	public void setEffectList(List effectList) {
		this.effectList = effectList;
	}
	public int getIntegral() {
		return integral;
	}
	public void setIntegral(int integral) {
		this.integral = integral;
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
