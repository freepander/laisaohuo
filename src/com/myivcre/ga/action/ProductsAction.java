package com.myivcre.ga.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.BigCategory;
import com.myivcre.ga.model.Brand;
import com.myivcre.ga.model.Category;
import com.myivcre.ga.model.Effect;
import com.myivcre.ga.model.PageModel;
import com.myivcre.ga.service.BaseService;
import com.opensymphony.xwork2.ActionSupport;

@Component("productsAction")
@Scope("prototype")
public class ProductsAction extends ActionSupport{
	List<String> q = new ArrayList<String>();
	List<Object> a = new ArrayList<Object>();
	List<String> orderby = new ArrayList<String>();
	PageModel pageModel;
	int pageNum = 1;
	Object o ;
	@Resource
	BaseService baseService;
	List hufuCategoryList;
	List caizhuangCategoryList;
	List xiangFenCategoryList;
	List shentihuliCategoryList;
	List meironggongjuCategoryList;
	List muyingzhuanquCategoryList;
	List nanshizhuanquCategoryList;
	List shipinbaojianCategoryList;
	
	int bigCategoryId;
	BigCategory bigCategory;
	List categoryList;
	List twoCategoryList;
	List brandList;
	List effectList;
	List goodsList;
	int method=1;
	//goodsList
	int brandId;
	int categoryId;
	int effectId;
	Brand brand;
	Category category;
	Effect effect;
	public String listAll(){
		this.hufuCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=1");
		this.caizhuangCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=2");
		this.xiangFenCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=3");
		this.shentihuliCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=4");
		this.meironggongjuCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=5");
		this.muyingzhuanquCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=6");
		this.nanshizhuanquCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=7");
		this.shipinbaojianCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=8");
		
		if(bigCategoryId!=0){
			this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, bigCategoryId);
			this.categoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id="+bigCategoryId);
			this.brandList=this.baseService.getByHal("from brand where deletes=false");
			this.effectList=this.baseService.getByHal("from effect where deletes=false and bigCategory.id="+bigCategoryId);
		}else {
			this.categoryList=this.baseService.getByHal("from category where deletes=false");
			this.brandList=this.baseService.getByHal("from brand where deletes=false");
			this.effectList=this.baseService.getByHal("from effect where deletes=false");
		}
		
		if(effectId!=0){
			this.effect=(Effect)this.baseService.get(Effect.class, effectId);
		}
		if(brandId!=0){
			this.brand=(Brand)this.baseService.get(Brand.class, brandId);
		}
		if(categoryId!=0){
			this.category=(Category)this.baseService.get(Category.class, categoryId);
		}
		return "products";
	}
	public String goodsList() throws Exception{
		if(effectId!=0){
			String hql="";
			if(bigCategoryId!=0){
				if(categoryId!=0){
					if(brandId!=0){
						hql="from goods g  where "+effectId+" = some elements(g.effectList) and g.bigCategory.id="+bigCategoryId+" and g.category.id="+categoryId+" and brand.id="+brandId+" and deletes=false and stock>0";
					}else{
						hql="from goods g  where "+effectId+" = some elements(g.effectList) and g.bigCategory.id="+bigCategoryId+" and g.category.id="+categoryId+" and deletes=false and stock>0";
					}
				}else{
					if(brandId!=0){
						hql="from goods g  where "+effectId+" = some elements(g.effectList) and g.bigCategory.id="+bigCategoryId+" and g.brand.id="+brandId+" and deletes=false and stock>0";
					}else{
						hql="from goods g  where "+effectId+" = some elements(g.effectList) and g.bigCategory.id="+bigCategoryId+" and deletes=false and stock>0";
					}
					
				}
			}else{
				if(categoryId!=0){
					if(brandId!=0){
						hql="from goods g  where "+effectId+" = some elements(g.effectList) and g.category.id="+categoryId+" and brand.id="+brandId+" and deletes=false and stock>0";
					}else{
						hql="from goods g  where "+effectId+" = some elements(g.effectList) and g.category.id="+categoryId+" and deletes=false and stock>0";
					}
				}else{
					if(brandId!=0){
						hql="from goods g  where "+effectId+" = some elements(g.effectList) and brand.id="+brandId+" and deletes=false and stock>0";
					}else{
						hql="from goods g  where "+effectId+" = some elements(g.effectList)"+" and deletes=false and stock>0";
					}
					
				}
			}
			this.pageModel=new PageModel();
			this.pageModel.setObjects(this.baseService.getByHal(hql));
			return "success";
		}else{
			q.add("deletes=?");
			a.add(false);
			q.add("stock>?");
			a.add(0);
			if(bigCategoryId!=0){
				q.add("bigCategory.id=?");
				a.add(bigCategoryId);
			}
			
			if(brandId!=0){
				q.add("brand.id=?");
				a.add(brandId);
			}
			if(categoryId!=0){
				q.add("category.id=?");
				a.add(categoryId);
			}
			
			if(method==1){
				
			}else if(method==2){
				orderby.add("nowPrice desc");//降序
			}else if(method==3){
				orderby.add("nowPrice asc");//升序
			}else if(method==4){
				orderby.add("pageView desc");
			}else if(method==5){
				orderby.add("pageView asc");
			}else if(method==6){
				orderby.add("date desc");
			}else if(method==7){
				orderby.add("date asc");
			}
			
			this.pageModel=this.baseService.getPageModel("goods", pageNum, 10, orderby, q, a);
			
			return "success";
		}
		
	}
	public List<String> getQ() {
		return q;
	}
	public void setQ(List<String> q) {
		this.q = q;
	}
	public List<Object> getA() {
		return a;
	}
	public void setA(List<Object> a) {
		this.a = a;
	}
	public List<String> getOrderby() {
		return orderby;
	}
	public void setOrderby(List<String> orderby) {
		this.orderby = orderby;
	}
	public BaseService getBaseService() {
		return baseService;
	}
	public void setBaseService(BaseService baseService) {
		this.baseService = baseService;
	}
	public List getHufuCategoryList() {
		return hufuCategoryList;
	}
	public void setHufuCategoryList(List hufuCategoryList) {
		this.hufuCategoryList = hufuCategoryList;
	}
	public List getCaizhuangCategoryList() {
		return caizhuangCategoryList;
	}
	public void setCaizhuangCategoryList(List caizhuangCategoryList) {
		this.caizhuangCategoryList = caizhuangCategoryList;
	}
	public List getXiangFenCategoryList() {
		return xiangFenCategoryList;
	}
	public void setXiangFenCategoryList(List xiangFenCategoryList) {
		this.xiangFenCategoryList = xiangFenCategoryList;
	}
	public List getShentihuliCategoryList() {
		return shentihuliCategoryList;
	}
	public void setShentihuliCategoryList(List shentihuliCategoryList) {
		this.shentihuliCategoryList = shentihuliCategoryList;
	}
	public List getMeironggongjuCategoryList() {
		return meironggongjuCategoryList;
	}
	public void setMeironggongjuCategoryList(List meironggongjuCategoryList) {
		this.meironggongjuCategoryList = meironggongjuCategoryList;
	}
	public List getMuyingzhuanquCategoryList() {
		return muyingzhuanquCategoryList;
	}
	public void setMuyingzhuanquCategoryList(List muyingzhuanquCategoryList) {
		this.muyingzhuanquCategoryList = muyingzhuanquCategoryList;
	}
	public List getNanshizhuanquCategoryList() {
		return nanshizhuanquCategoryList;
	}
	public void setNanshizhuanquCategoryList(List nanshizhuanquCategoryList) {
		this.nanshizhuanquCategoryList = nanshizhuanquCategoryList;
	}
	public List getShipinbaojianCategoryList() {
		return shipinbaojianCategoryList;
	}
	public void setShipinbaojianCategoryList(List shipinbaojianCategoryList) {
		this.shipinbaojianCategoryList = shipinbaojianCategoryList;
	}
	public List getGoodsList() {
		return goodsList;
	}
	public void setGoodsList(List goodsList) {
		this.goodsList = goodsList;
	}
	public int getBigCategoryId() {
		return bigCategoryId;
	}
	public void setBigCategoryId(int bigCategoryId) {
		this.bigCategoryId = bigCategoryId;
	}
	public BigCategory getBigCategory() {
		return bigCategory;
	}
	public void setBigCategory(BigCategory bigCategory) {
		this.bigCategory = bigCategory;
	}
	public List getCategoryList() {
		return categoryList;
	}
	public void setCategoryList(List categoryList) {
		this.categoryList = categoryList;
	}
	public List getTwoCategoryList() {
		return twoCategoryList;
	}
	public void setTwoCategoryList(List twoCategoryList) {
		this.twoCategoryList = twoCategoryList;
	}
	public List getBrandList() {
		return brandList;
	}
	public void setBrandList(List brandList) {
		this.brandList = brandList;
	}
	public List getEffectList() {
		return effectList;
	}
	public void setEffectList(List effectList) {
		this.effectList = effectList;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getEffectId() {
		return effectId;
	}
	public void setEffectId(int effectId) {
		this.effectId = effectId;
	}
	public PageModel getPageModel() {
		return pageModel;
	}
	public void setPageModel(PageModel pageModel) {
		this.pageModel = pageModel;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public Object getO() {
		return o;
	}
	public void setO(Object o) {
		this.o = o;
	}
	public int getMethod() {
		return method;
	}
	public void setMethod(int method) {
		this.method = method;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Effect getEffect() {
		return effect;
	}
	public void setEffect(Effect effect) {
		this.effect = effect;
	}

}
