package com.myivcre.ga.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Category;
import com.myivcre.ga.model.TwoCategory;

@Component("twoCategoryAction")
@Scope("prototype")
public class TwoCategoryAction extends BaseAction {
	private String name;
	private int categoryId;
	private TwoCategory twoCategory;
	private List categoryList;
	public String list(){
		try{
			q.add("deletes = ?");
			a.add(false);
			this.pageModel=this.baseService.getPageModel("twocategory", pageNum, 20,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/twoCategory_list?pageNum=");
		return "success";
	}
	public String input(){
		if(id!=0){
			this.twoCategory=(TwoCategory)this.baseService.get(TwoCategory.class, id);
		}
		this.categoryList=this.baseService.getByHal("from bigcategory where deletes=false");
		return "success";
	}
	public String add(){
		this.twoCategory=new TwoCategory();
		this.twoCategory.setName(name);
		Category category=(Category)this.baseService.get(Category.class, categoryId);
		this.twoCategory.setParentCategory(category);
		this.twoCategory.setDelete(false);
		category.getTowCategoryList().add(this.twoCategory);
		this.baseService.save(this.twoCategory);
		this.baseService.update(category);
		return "list";
	}
	public String update(){
		this.twoCategory=(TwoCategory)this.baseService.get(TwoCategory.class, id);
		this.twoCategory.setName(name);
		Category category=(Category)this.baseService.get(Category.class, categoryId);
		this.twoCategory.setParentCategory(category);
		this.baseService.update(this.twoCategory);
		return "list";
	}
	public String delete(){
		this.twoCategory=(TwoCategory)this.baseService.get(TwoCategory.class, id);
		this.twoCategory.setDelete(true);
		this.baseService.update(this.twoCategory);
		return "list";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public TwoCategory getTwoCategory() {
		return twoCategory;
	}
	public void setTwoCategory(TwoCategory twoCategory) {
		this.twoCategory = twoCategory;
	}
	public List getCategoryList() {
		return categoryList;
	}
	public void setCategoryList(List categoryList) {
		this.categoryList = categoryList;
	}
	
}
