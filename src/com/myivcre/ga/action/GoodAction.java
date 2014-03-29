package com.myivcre.ga.action;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Collection;
import com.myivcre.ga.model.Goods;
import com.myivcre.ga.model.ShopUser;
import com.myivcre.ga.service.BaseService;
import com.opensymphony.xwork2.ActionSupport;

@Component("goodAction")
@Scope("prototype")
public class GoodAction extends ActionSupport {
	private int id;
	private Goods goods;
	@Resource
	BaseService baseService;
	//是否收藏
	private boolean areCollection=false;
	private boolean areLogin=false;
	/**
	 * 查看商品详情
	 * @return
	 */
	public String goods(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		this.goods.setPageView(this.goods.getPageView()+1);
		this.baseService.update(this.goods);
		HttpServletRequest request=ServletActionContext.getRequest();
		ShopUser user=(ShopUser) request.getSession().getAttribute("user");
		if(user!=null){
			this.areLogin=true;
			String hql="from collection where goods.id="+this.goods.getId()+" and shopUser.id="+user.getId()+"";
//			System.out.println(hql);
//			System.out.println(this.baseService.getByHal(hql).size());
			if(this.baseService.getByHal(hql).size()>0){
				areCollection=true;
			}
		}else{
			
		}
		return "success";
	}
	/**
	 * 将商品添加到用户收藏
	 * @return
	 */
	public String addCollection(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		HttpServletRequest request=ServletActionContext.getRequest();
		ShopUser user=(ShopUser) request.getSession().getAttribute("user");
		Collection collection=new Collection();
		collection.setGoods(goods);
		collection.setShopUser(user);
		this.baseService.save(collection);
		this.goods.setCollectionNumber(this.goods.getCollectionNumber()+1);
		this.baseService.update(this.goods);
		return null;
	}
	/**
	 * 用户取消商品收藏
	 * @return
	 */
	public String deleteCollection(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		HttpServletRequest request=ServletActionContext.getRequest();
		ShopUser user=(ShopUser) request.getSession().getAttribute("user");
		String hql="from collection where goods.id="+this.goods.getId()+" and shopUser.id="+user.getId()+"";
		Collection collection=(Collection) this.baseService.getByHal(hql).get(0);
		this.baseService.delete(collection);
		this.goods.setCollectionNumber(this.goods.getCollectionNumber()-1);
		this.baseService.update(this.goods);
		return null;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public BaseService getBaseService() {
		return baseService;
	}
	public void setBaseService(BaseService baseService) {
		this.baseService = baseService;
	}
	public boolean isAreCollection() {
		return areCollection;
	}
	public void setAreCollection(boolean areCollection) {
		this.areCollection = areCollection;
	}
	public boolean isAreLogin() {
		return areLogin;
	}
	public void setAreLogin(boolean areLogin) {
		this.areLogin = areLogin;
	}


}
