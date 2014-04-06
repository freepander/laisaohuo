package com.myivcre.ga.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.BigCategory;
import com.myivcre.ga.model.Brand;
import com.myivcre.ga.model.Category;
import com.myivcre.ga.model.Effect;
import com.myivcre.ga.model.Goods;
import com.myivcre.ga.model.TwoCategory;

/**
 * 商品后台管理
 * @author freepander
 *
 */
@Component("goodsAction")
@Scope("prototype")
public class GoodsAction extends BaseAction {
	private String name;
	private String numbers;
	private int bigCategoryId;
	private int categoryId;
	private int twoCategoryId;
	private int brandId;
	private int[] effectId;
	private double price;
	private double originalPrice;
	private double nowPrice;
	private double profit;
	private String capacity;
	private String spec;
	private String logo;
	private int stock;
	private int salesVolume;
	private int salesVolume2;
	private boolean visible;
	private long pageView;
	private double score;
	private int collectionNumber;
	private String area;
	private String shelfLife;
	private String crowd;
	private String baoCunMethod;
	private String luanMa;
	private String teBieShengMing;
	private String details;
	private String usages;
	private String photos;
	private boolean deletes;
	private boolean onIndex;
	
	private Goods goods;
	private List bigCategoryList;
	private List brandList;
	//用于编辑商品详情
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
		System.out.println(effectId.length);
		for(int i=0;i<this.effectId.length;i++){
			Effect e=(Effect)this.baseService.get(Effect.class, effectId[i]);
			System.out.println(e.getId());
		}
		this.goods=new Goods();
		this.goods.setName(name);
		this.goods.setNumbers(numbers);
		this.goods.setLogo(logo);
		BigCategory bigc=(BigCategory)this.baseService.get(BigCategory.class, bigCategoryId);
		this.goods.setBigCategory(bigc);
		Category category=(Category)this.baseService.get(Category.class, categoryId);
		this.goods.setCategory(category);
		if(twoCategoryId!=0){
			TwoCategory twoC=(TwoCategory)this.baseService.get(TwoCategory.class, twoCategoryId);
			this.goods.setTwoCategory(twoC);
		}
		Brand brand=(Brand)this.baseService.get(Brand.class, brandId);
		this.goods.setEffectList(new ArrayList<Effect>());
		this.goods.setBrand(brand);
		for(int i=0;i<this.effectId.length;i++){
			Effect e=(Effect)this.baseService.get(Effect.class, effectId[i]);
			this.goods.getEffectList().add(e);
		}
		this.goods.setSpec(spec);
		this.goods.setPrice(price);
		this.goods.setNowPrice(nowPrice);
		this.goods.setOriginalPrice(originalPrice);
		this.goods.setCapacity(capacity);
		this.goods.setSalesVolume2(salesVolume2);
		this.goods.setArea(area);
		this.goods.setShelfLife(shelfLife);
		this.goods.setCrowd(crowd);
		this.goods.setBaoCunMethod(baoCunMethod);
		this.goods.setLuanMa(luanMa);
		this.goods.setTeBieShengMing(teBieShengMing);
		this.goods.setDeletes(false);
		this.goods.setVisible(true);
		this.goods.setOnIndex(onIndex);
		
		this.goods.setSalesVolume(0);
		this.baseService.save(this.goods);
		return "list";
	}
	public String update(){
		
		return "list";
	}
	public String delete(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		this.goods.setDeletes(true);
		this.baseService.update(this.goods);
		return "list";
	}
	//编辑商品详细内容
	public String bianjiInput(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		if(method.equals("shangpinxiangqing")){
			this.content=this.goods.getDetails();
		}else if(method.equals("shiyongfangfa")){
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
		}else if(method.equals("shiyongfangfa")){
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
	public void setName(String name) {
		this.name = name;
	}
	public String getNumbers() {
		return numbers;
	}
	public void setNumbers(String numbers) {
		this.numbers = numbers;
	}
	public int getBigCategoryId() {
		return bigCategoryId;
	}
	public void setBigCategoryId(int bigCategoryId) {
		this.bigCategoryId = bigCategoryId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getTwoCategoryId() {
		return twoCategoryId;
	}
	public void setTwoCategoryId(int twoCategoryId) {
		this.twoCategoryId = twoCategoryId;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public int[] getEffectId() {
		return effectId;
	}
	public void setEffectId(int[] effectId) {
		this.effectId = effectId;
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
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public List getBigCategoryList() {
		return bigCategoryList;
	}
	public void setBigCategoryList(List bigCategoryList) {
		this.bigCategoryList = bigCategoryList;
	}
	public List getBrandList() {
		return brandList;
	}
	public void setBrandList(List brandList) {
		this.brandList = brandList;
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
	public boolean isOnIndex() {
		return onIndex;
	}
	public void setOnIndex(boolean onIndex) {
		this.onIndex = onIndex;
	}
	
}
