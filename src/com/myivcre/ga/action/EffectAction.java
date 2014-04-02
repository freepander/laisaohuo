package com.myivcre.ga.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.BigCategory;
import com.myivcre.ga.model.Category;
import com.myivcre.ga.model.Effect;

@Component("effectAction")
@Scope("prototype")
public class EffectAction extends BaseAction {
	private String name;
	private int categoryId;
	private int bigCategoryId;
	private List bigCategoryList;
	private Effect effect;
	public String list(){
		try{
			q.add("deletes = ?");
			a.add(false);
			this.pageModel=this.baseService.getPageModel("effect", pageNum, 20,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/effect_list?pageNum=");
		return "success";
	}
	public String input(){
		if(id!=0){
			this.effect=(Effect)this.baseService.get(Effect.class, id);
		}
		this.bigCategoryList=this.baseService.getByHal("from bigcategory where deletes=false");
		return "success";
	}
	public String add(){
		this.effect=new Effect();
		this.effect.setName(name);
		BigCategory bigCategory=(BigCategory)this.baseService.get(BigCategory.class, bigCategoryId);
		this.effect.setBigCategory(bigCategory);
		Category c=(Category)this.baseService.get(Category.class, categoryId);
		this.effect.setCategory(c);
		this.effect.setDelete(false);
		this.baseService.save(this.effect);
		return "list";
	}
	public String update(){
		this.effect=(Effect)this.baseService.get(Effect.class, id);
		this.effect.setName(name);
		BigCategory bigCategory=(BigCategory)this.baseService.get(BigCategory.class, bigCategoryId);
		this.effect.setBigCategory(bigCategory);
		Category c=(Category)this.baseService.get(Category.class, categoryId);
		this.effect.setDelete(false);
		this.baseService.update(this.effect);
		return "list";
	}
	public String delete(){
		this.effect=(Effect)this.baseService.get(Effect.class, id);
		this.effect.setDelete(true);
		this.baseService.update(this.effect);
		return "list";
	}
	public String getListByCategory(){
		this.list=this.baseService.getByHal("from effect where deletes=false and category.id="+id);
		return "effectList";
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
	public int getBigCategoryId() {
		return bigCategoryId;
	}
	public void setBigCategoryId(int bigCategoryId) {
		this.bigCategoryId = bigCategoryId;
	}
	public List getBigCategoryList() {
		return bigCategoryList;
	}
	public void setBigCategoryList(List bigCategoryList) {
		this.bigCategoryList = bigCategoryList;
	}
	public Effect getEffect() {
		return effect;
	}
	public void setEffect(Effect effect) {
		this.effect = effect;
	}
		
}
