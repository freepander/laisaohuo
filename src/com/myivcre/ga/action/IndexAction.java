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
	List shentihuliCategoryList;
	List meironggongjuCategoryList;
	List tongxuehuiCategoryList;
	List nanshizhuanquCategoryList;
	List shipinbaojianCategoryList;
	List brandList;
	List hufuGoodsList;
	List caizhuangGoodsList;
	List huliGoodsList;
	List nanshiGoodsList;
	
	public String index() throws Exception {
		this.mallCarousel = (MallCarousel) this.baseService.get(MallCarousel.class, 1);
		
		this.hufuCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=1");
		this.caizhuangCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=2");
		this.shentihuliCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=4");
		this.meironggongjuCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=5");
		this.tongxuehuiCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=9");
		this.nanshizhuanquCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=7");
		this.shipinbaojianCategoryList=this.baseService.getByHal("from category where deletes=false and parentCategory.id=8");
		
		q.add("deletes=?");
		a.add(false);
		q.add("category.parentCategory.id=?");
		a.add(1);
		q.add("onIndex=?");
		a.add(true);
//		q.add("stock>?");
//		a.add(0);
		this.hufuGoodsList=this.baseService.getObjectList("goods", 1, 10, orderby, q, a);
		
		q.clear();
		a.clear();
		q.add("deletes=?");
		a.add(false);
		q.add("category.parentCategory.id=?");
		a.add(2);
		q.add("onIndex=?");
		a.add(true);
//		q.add("stock>?");
//		a.add(0);
		this.caizhuangGoodsList=this.baseService.getObjectList("goods", 1, 10, orderby, q, a);
		
		q.clear();
		a.clear();
		q.add("deletes=?");
		a.add(false);
		q.add("category.parentCategory.id=?");
		a.add(4);
		q.add("onIndex=?");
		a.add(true);
//		q.add("stock>?");
//		a.add(0);
		this.huliGoodsList=this.baseService.getObjectList("goods", 1, 10, orderby, q, a);
		
		q.clear();
		a.clear();
		q.add("deletes=?");
		a.add(false);
		q.add("category.parentCategory.id=?");
		a.add(7);
		q.add("onIndex=?");
		a.add(true);
//		q.add("stock>?");
//		a.add(0);
		this.nanshiGoodsList=this.baseService.getObjectList("goods", 1, 10, orderby, q, a);
		
		this.brandList=this.baseService.getByHal("from brand where deletes=false and visible=true");
		
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

	public List getTongxuehuiCategoryList() {
		return tongxuehuiCategoryList;
	}

	public void setTongxuehuiCategoryList(List tongxuehuiCategoryList) {
		this.tongxuehuiCategoryList = tongxuehuiCategoryList;
	}

	public List getBrandList() {
		return brandList;
	}

	public void setBrandList(List brandList) {
		this.brandList = brandList;
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

	public List getCaizhuangGoodsList() {
		return caizhuangGoodsList;
	}

	public void setCaizhuangGoodsList(List caizhuangGoodsList) {
		this.caizhuangGoodsList = caizhuangGoodsList;
	}

	public List getHuliGoodsList() {
		return huliGoodsList;
	}

	public void setHuliGoodsList(List huliGoodsList) {
		this.huliGoodsList = huliGoodsList;
	}

	public List getNanshiGoodsList() {
		return nanshiGoodsList;
	}

	public void setNanshiGoodsList(List nanshiGoodsList) {
		this.nanshiGoodsList = nanshiGoodsList;
	}

	
}
