package com.myivcre.ga.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.BigCategory;
import com.myivcre.ga.model.MallCarousel;
import com.myivcre.ga.service.BaseService;
import com.opensymphony.xwork2.ActionSupport;

@Component("indexAction")
@Scope("prototype")
public class IndexAction extends ActionSupport {
	List<String> q = new ArrayList<String>();
	List<Object> a = new ArrayList<Object>();
	List<String> orderby = new ArrayList<String>();
	@Resource
	BaseService baseService;
	MallCarousel mallCarousel;
	List hufuCategoryList;
	List caizhuangCategoryList;
	List xiangFenCategoryList;
	List shentihuliCategoryList;
	List meironggongjuCategoryList;
	List muyingzhuanquCategoryList;
	List nanshizhuanquCategoryList;
	List shipinbaojianCategoryList;
	List brandCategoryList;
	BigCategory hufu;
	List hufuEffectList;
	List hufuGoodsList;
	BigCategory caizhuang;
	List caizhuangEffectList;
	List caizhuangGoodsList;
	BigCategory xiangfen;
	List xiangfenEffectList;
	List xiangfenGoodsList;
	BigCategory huli;
	List huliEffectList;
	List huliGoodsList;
	BigCategory nanshi;
	List nanshiEffectList;
	List nanshiGoodsList;
	BigCategory muying;
	List muyingEffectList;
	List muyingGoodsList;
	
	public String index() throws Exception {
		this.mallCarousel = (MallCarousel) this.baseService.get(MallCarousel.class, 1);
		
		this.hufuCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=1");
		this.caizhuangCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=2");
		this.xiangFenCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=3");
		this.shentihuliCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=4");
		this.meironggongjuCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=5");
		this.muyingzhuanquCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=6");
		this.nanshizhuanquCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=7");
		this.shipinbaojianCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=8");
		
		this.brandCategoryList=this.baseService.getByHal("from brandcategory where deletes=false");
		
		this.hufu=(BigCategory)this.baseService.get(BigCategory.class, 1);
		this.hufuEffectList=this.baseService.getByHal("from effect where deletes=false and category.id=1");
		orderby.add("salesVolume desc");
		q.add("deletes=?");
		a.add(false);
		q.add("category.parentCategory.id=?");
		a.add(1);
		this.hufuGoodsList=this.baseService.getObjectList("goods", 1, 10, orderby, q, a);
		
		this.caizhuang=(BigCategory)this.baseService.get(BigCategory.class, 2);
		this.caizhuangEffectList=this.baseService.getByHal("from effect where deletes=false and category.id=2");
		q.clear();
		a.clear();
		q.add("deletes=?");
		a.add(false);
		q.add("category.parentCategory.id=?");
		a.add(2);
		this.caizhuangGoodsList=this.baseService.getObjectList("goods", 1, 10, orderby, q, a);
		
		this.xiangfen=(BigCategory)this.baseService.get(BigCategory.class, 3);
		this.xiangfenEffectList=this.baseService.getByHal("from effect where deletes=false and category.id=3");
		q.clear();
		a.clear();
		q.add("deletes=?");
		a.add(false);
		q.add("category.parentCategory.id=?");
		a.add(3);
		this.xiangfenGoodsList=this.baseService.getObjectList("goods", 1, 10, orderby, q, a);
		
		this.huli=(BigCategory)this.baseService.get(BigCategory.class, 4);
		this.huliEffectList=this.baseService.getByHal("from effect where deletes=false and category.id=4");
		q.clear();
		a.clear();
		q.add("deletes=?");
		a.add(false);
		q.add("category.parentCategory.id=?");
		a.add(4);
		this.huliGoodsList=this.baseService.getObjectList("goods", 1, 10, orderby, q, a);
		
		this.nanshi=(BigCategory)this.baseService.get(BigCategory.class, 5);
		this.nanshiEffectList=this.baseService.getByHal("from effect where deletes=false and category.id=5");
		q.clear();
		a.clear();
		q.add("deletes=?");
		a.add(false);
		q.add("category.parentCategory.id=?");
		a.add(5);
		this.nanshiGoodsList=this.baseService.getObjectList("goods", 1, 10, orderby, q, a);
		
		this.muying=(BigCategory)this.baseService.get(BigCategory.class, 6);
		this.muyingEffectList=this.baseService.getByHal("from effect where deletes=false and category.id=6");
		q.clear();
		a.clear();
		q.add("deletes=?");
		a.add(false);
		q.add("category.parentCategory.id=?");
		a.add(6);
		this.muyingGoodsList=this.baseService.getObjectList("goods", 1, 10, orderby, q, a);
		
		return "index";
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

	public MallCarousel getMallCarousel() {
		return mallCarousel;
	}

	public void setMallCarousel(MallCarousel mallCarousel) {
		this.mallCarousel = mallCarousel;
	}

	public List getBrandCategoryList() {
		return brandCategoryList;
	}

	public void setBrandCategoryList(List brandCategoryList) {
		this.brandCategoryList = brandCategoryList;
	}

	public BigCategory getHufu() {
		return hufu;
	}

	public void setHufu(BigCategory hufu) {
		this.hufu = hufu;
	}

	public List getHufuEffectList() {
		return hufuEffectList;
	}

	public void setHufuEffectList(List hufuEffectList) {
		this.hufuEffectList = hufuEffectList;
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

	public List getHufuGoodsList() {
		return hufuGoodsList;
	}

	public void setHufuGoodsList(List hufuGoodsList) {
		this.hufuGoodsList = hufuGoodsList;
	}

	public BigCategory getCaizhuang() {
		return caizhuang;
	}

	public void setCaizhuang(BigCategory caizhuang) {
		this.caizhuang = caizhuang;
	}

	public List getCaizhuangEffectList() {
		return caizhuangEffectList;
	}

	public void setCaizhuangEffectList(List caizhuangEffectList) {
		this.caizhuangEffectList = caizhuangEffectList;
	}

	public List getCaizhuangGoodsList() {
		return caizhuangGoodsList;
	}

	public void setCaizhuangGoodsList(List caizhuangGoodsList) {
		this.caizhuangGoodsList = caizhuangGoodsList;
	}

	public BigCategory getXiangfen() {
		return xiangfen;
	}

	public void setXiangfen(BigCategory xiangfen) {
		this.xiangfen = xiangfen;
	}

	public List getXiangfenEffectList() {
		return xiangfenEffectList;
	}

	public void setXiangfenEffectList(List xiangfenEffectList) {
		this.xiangfenEffectList = xiangfenEffectList;
	}

	public List getXiangfenGoodsList() {
		return xiangfenGoodsList;
	}

	public void setXiangfenGoodsList(List xiangfenGoodsList) {
		this.xiangfenGoodsList = xiangfenGoodsList;
	}

	public BigCategory getHuli() {
		return huli;
	}

	public void setHuli(BigCategory huli) {
		this.huli = huli;
	}

	public List getHuliEffectList() {
		return huliEffectList;
	}

	public void setHuliEffectList(List huliEffectList) {
		this.huliEffectList = huliEffectList;
	}

	public List getHuliGoodsList() {
		return huliGoodsList;
	}

	public void setHuliGoodsList(List huliGoodsList) {
		this.huliGoodsList = huliGoodsList;
	}

	public BigCategory getNanshi() {
		return nanshi;
	}

	public void setNanshi(BigCategory nanshi) {
		this.nanshi = nanshi;
	}

	public List getNanshiEffectList() {
		return nanshiEffectList;
	}

	public void setNanshiEffectList(List nanshiEffectList) {
		this.nanshiEffectList = nanshiEffectList;
	}

	public List getNanshiGoodsList() {
		return nanshiGoodsList;
	}

	public void setNanshiGoodsList(List nanshiGoodsList) {
		this.nanshiGoodsList = nanshiGoodsList;
	}

	public BigCategory getMuying() {
		return muying;
	}

	public void setMuying(BigCategory muying) {
		this.muying = muying;
	}

	public List getMuyingEffectList() {
		return muyingEffectList;
	}

	public void setMuyingEffectList(List muyingEffectList) {
		this.muyingEffectList = muyingEffectList;
	}

	public List getMuyingGoodsList() {
		return muyingGoodsList;
	}

	public void setMuyingGoodsList(List muyingGoodsList) {
		this.muyingGoodsList = muyingGoodsList;
	}

}
