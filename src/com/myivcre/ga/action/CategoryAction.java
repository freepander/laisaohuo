package com.myivcre.ga.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.BigCategory;
import com.myivcre.ga.model.Category;

@Component("categoryAction")
@Scope("prototype")
public class CategoryAction extends BaseAction {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private int parentCategoryId;
	private List bigCategoryList;
	private Category category;
	public String list(){
		try{
			q.add("deletes = ?");
			a.add(false);
			this.pageModel=this.baseService.getPageModel("category", pageNum, 20,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/category_list?pageNum=");
		return "success";
	}
	public String input(){
		if(id!=0){
			this.category=(Category)this.baseService.get(Category.class, id);
		}
		this.list=this.baseService.getByHal("from bigcategory where deletes=false");
		return "success";
	}
	public String add(){
		this.category=new Category();
		this.category.setName(name);
		BigCategory bigCategory=(BigCategory)this.baseService.get(BigCategory.class, parentCategoryId);
		this.category.setParentCategory(bigCategory);
		this.category.setDelete(false);
		this.baseService.save(this.category);
		return "list";
	}
	public String update(){
		this.category=(Category) this.baseService.get(Category.class, id);
		this.category.setName(name);
		BigCategory bigCategory=(BigCategory)this.baseService.get(BigCategory.class, parentCategoryId);
		this.category.setParentCategory(bigCategory);
		this.baseService.update(this.category);
		return "list";
	}
	public String delete(){
		this.category=(Category) this.baseService.get(Category.class, id);
		this.category.setDelete(false);
		this.baseService.update(this.category);
		return "list";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getParentCategoryId() {
		return parentCategoryId;
	}
	public void setParentCategoryId(int parentCategoryId) {
		this.parentCategoryId = parentCategoryId;
	}
	public List getBigCategoryList() {
		return bigCategoryList;
	}
	public void setBigCategoryList(List bigCategoryList) {
		this.bigCategoryList = bigCategoryList;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
}
