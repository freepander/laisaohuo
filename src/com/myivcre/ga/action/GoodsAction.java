package com.myivcre.ga.action;

import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.BigCategory;
import com.myivcre.ga.model.Brand;
import com.myivcre.ga.model.Category;
import com.myivcre.ga.model.Effect;
import com.myivcre.ga.model.Goods;
import com.myivcre.ga.model.TwoCategory;


@Component("goodsAction")
@Scope("prototype")
public class GoodsAction extends BaseAction {
	private String name;
	private String number;
	private int bigCategoryId;
	private int twoCategoryId;
	private int categoryId;
	private int brandId;
	private int[] effectId;
	private double nowPrice;
	private double price;
	private String logo;
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
	private String photos;
	private List brandList;
	private String rongLiang;
	private String baoCunMethod;
	private String luanMa;
	private String teBieShengMing;
	private String numbers;
	private String spec;
	private List<BigCategory> bigCategoryList;
	private String method;
	private String content;
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
		this.bigCategoryList=this.baseService.getByHal("from bigcategory where deletes=false");
		this.brandList=this.baseService.getByHal("from brand where deletes=false");
		return "success";
	}
	public String add(){
		System.out.println(this.effectId.length);
		this.goods=new Goods();
		this.goods.setName(name);
		this.goods.setNumbers(numbers);
		BigCategory bigc=(BigCategory)this.baseService.get(BigCategory.class, bigCategoryId);
		this.goods.setBigCategory(bigc);
		Category category=(Category)this.baseService.get(Category.class, categoryId);
		this.goods.setCategory(category);
		TwoCategory twoC=(TwoCategory)this.baseService.get(TwoCategory.class, twoCategoryId);
		this.goods.setTwoCategory(twoC);
		Brand brand=(Brand)this.baseService.get(Brand.class, brandId);
		this.goods.setBrand(brand);
		for(int i=0;i<this.effectId.length;i++){
			Effect e=(Effect)this.baseService.get(Effect.class, effectId[i]);
			this.goods.getEffectList().add(e);
		}
		this.goods.setPrice(price);
		this.goods.setLogo(logo);
		this.goods.setSpec(spec);
		this.goods.setArea(area);
		this.goods.setShelfLife(shelfLife);
		this.goods.setCrowd(crowd);
		this.goods.setBaoCunMethod(baoCunMethod);
		this.goods.setLuanMa(luanMa);
		this.goods.setDate(new Date());
		this.goods.setDeletes(false);
		
		this.baseService.save(this.goods);
		return "list";
	}
	public String update(){
//		this.goods=(Goods)this.baseService.get(Goods.class, id);
//		this.goods.setName(name);
//		this.goods.setNumber(number);
//		Category category=(Category)this.baseService.get(Category.class, categoryId);
//		this.goods.setCategory(category);
//		Brand brand=(Brand)this.baseService.get(Brand.class, brandId);
//		Effect effect=(Effect)this.baseService.get(Effect.class, effectId);
//		this.goods.setEffect(effect);
//		this.goods.setBrand(brand);
//		this.goods.setNowPrice(nowPrice);
//		this.goods.setPrice(price);
//		this.goods.setLogo(logo);
//		this.goods.setWeight(weight);
//		this.goods.setStock(stock);
//		this.goods.setVisible(true);
//		this.goods.setDate(new Date());
//		
//		this.goods.setArea(area);
//		this.goods.setSpecifications(specifications);
//		this.goods.setShelfLife(shelfLife);
//		this.goods.setPackaging(packaging);
//		this.goods.setUsages(usages);
//		this.goods.setPhotos(photos);
//		this.goods.setCrowd(crowd);
//		this.goods.setDetails(details);
//		this.goods.setRongLiang(rongLiang);
//		this.goods.setBaoCunMethod(baoCunMethod);
//		this.goods.setLuanMa(luanMa);
//		this.goods.setTeBieShengMing(teBieShengMing);
//		this.baseService.update(this.goods);
		return "list";
	}
	public String delete(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		this.goods.setVisible(true);
		this.baseService.update(this.goods);
		return "list";
	}
	//编辑商品详细内容
	public String bianjiInput(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		if(method.equals("shangpinxiangqing")){
			this.content=this.goods.getDetails();
		}else if(method.equals("shiyongfafang")){
			this.content=this.goods.getUsages();
		}else if(method.equals("shangpinshipai")){
			this.content=this.goods.getPhotos();
		}
		return "success";
	}
	public String bianji(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		if(method.equals("shangpinxiangqing")){
			goods.setDetails(content);
		}else if(method.equals("shiyongfafang")){
			goods.setUsages(content);
		}else if(method.equals("shangpinshipai")){
			goods.setPhotos(content);
		}
		this.baseService.update(this.goods);
		return "list";
	}
	public String getName() {
		return name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
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
	public int getIntegral() {
		return integral;
	}
	public void setIntegral(int integral) {
		this.integral = integral;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
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
	public List getBrandList() {
		return brandList;
	}
	public void setBrandList(List brandList) {
		this.brandList = brandList;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPackaging() {
		return packaging;
	}
	public void setPackaging(String packaging) {
		this.packaging = packaging;
	}
	public String getPhotos() {
		return photos;
	}
	public void setPhotos(String photos) {
		this.photos = photos;
	}
	public String getRongLiang() {
		return rongLiang;
	}
	public void setRongLiang(String rongLiang) {
		this.rongLiang = rongLiang;
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
	public int getBigCategoryId() {
		return bigCategoryId;
	}
	public void setBigCategoryId(int bigCategoryId) {
		this.bigCategoryId = bigCategoryId;
	}
	public int getTwoCategoryId() {
		return twoCategoryId;
	}
	public void setTwoCategoryId(int twoCategoryId) {
		this.twoCategoryId = twoCategoryId;
	}
	public int[] getEffectId() {
		return effectId;
	}
	public void setEffectId(int[] effectId) {
		this.effectId = effectId;
	}
	public String getNumbers() {
		return numbers;
	}
	public void setNumbers(String numbers) {
		this.numbers = numbers;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public List<BigCategory> getBigCategoryList() {
		return bigCategoryList;
	}
	public void setBigCategoryList(List<BigCategory> bigCategoryList) {
		this.bigCategoryList = bigCategoryList;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

}
