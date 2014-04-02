package com.myivcre.ga.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Brand;
import com.myivcre.ga.model.BrandCategory;

@Component("brandAction")
@Scope("prototype")
public class BrandAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private boolean visible;
	private Brand brand;
	
	public String list(){
		try{
			q.add("deletes = ?");
			a.add(false);
			this.pageModel=this.baseService.getPageModel("brand", pageNum, 20,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/brand_list?pageNum=");
		return "success";
	}
	public String input(){
		if(id!=0){
			this.brand=(Brand)this.baseService.get(Brand.class, id);
		}
		return "success";
	}
	public String add(){
		this.brand=new Brand();
		this.brand.setName(name);
		this.brand.setDeletes(false);
		this.baseService.save(this.brand);
		return "list";
	}
	public String update(){
		this.brand=(Brand)this.baseService.get(Brand.class, id);
		this.brand.setName(name);
		this.baseService.update(this.brand);
		return "list";
	}
	public String delete(){
		this.brand=(Brand)this.baseService.get(Brand.class, id);
		this.brand.setDeletes(true);
		this.baseService.update(this.brand);
		return "list";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isVisible() {
		return visible;
	}
	public void setVisible(boolean visible) {
		this.visible = visible;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
