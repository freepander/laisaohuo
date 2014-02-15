package com.myivcre.ga.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Goods;
import com.myivcre.ga.service.BaseService;
import com.opensymphony.xwork2.ActionSupport;

@Component("goodAction")
@Scope("prototype")
public class GoodAction extends ActionSupport {
	private int id;
	private Goods goods;
	@Resource
	BaseService baseService;
	public String goods(){
		this.goods=(Goods)this.baseService.get(Goods.class, id);
		this.goods.setPageView(this.goods.getPageView()+1);
		this.baseService.update(this.goods);
		return "success";
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

}
