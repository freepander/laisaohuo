package com.myivcre.ga.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.BigCategory;
import com.myivcre.ga.model.Brand;
import com.myivcre.ga.model.Goods;

@Component("bigCategoryAction")
@Scope("prototype")
public class BigCategoryAction extends BaseAction {
	private String name;
	private List<Brand> brandList;

	private BigCategory bigCategory;
	
	public String list(){
		try{
			q.add("deletes = ?");
			a.add(false);
			this.pageModel=this.baseService.getPageModel("bigcategory", pageNum, 20,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/bigCategory_list?pageNum=");
		return "success";
	}
	public String input(){
		if(id!=0){
			this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, id);
		}
		return "success";
	}
	public String add(){
		this.bigCategory=new BigCategory();
		this.bigCategory.setName(name);
		this.bigCategory.setDeletes(false);
		this.baseService.save(this.bigCategory);
		return "list";
	}
	public String update(){
		this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, id);
		this.bigCategory.setName(name);
		this.baseService.update(this.bigCategory);
		return "list";
	}
	public String delete(){
		this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, id);
		this.bigCategory.setDeletes(false);
		this.baseService.update(this.bigCategory);
		return "list";
	}
	public String qianglist(){
		try{
			q.add("deletes = ?");
			a.add(false);
			this.pageModel=this.baseService.getPageModel("bigcategory", pageNum, 20,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/bigCategory_list?pageNum=");
		return "success";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Brand> getBrandList() {
		return brandList;
	}
	public void setBrandList(List<Brand> brandList) {
		this.brandList = brandList;
	}
	public BigCategory getBigCategory() {
		return bigCategory;
	}
	public void setBigCategory(BigCategory bigCategory) {
		this.bigCategory = bigCategory;
	}
		
	
}
