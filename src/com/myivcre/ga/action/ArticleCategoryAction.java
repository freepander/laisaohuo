package com.myivcre.ga.action;

import java.util.Date;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.ArticleCategoryOne;
import com.myivcre.ga.model.ArticleCategoryThree;
import com.myivcre.ga.model.ArticleCategoryTwo;

@Component("articleAction")
@Scope("prototype")
public class ArticleCategoryAction extends BaseAction {
	private String name;
	private int categoryId;
	private ArticleCategoryOne articleCategoryOne;
	private ArticleCategoryTwo articleCategoryTwo;
	private ArticleCategoryThree articleCategoryThree;
	private String content;
	
	public String oneList(){
		this.list=this.baseService.getByHal("from articlecategoryone where deletes=false");
		return "success";
	}
	public String twoList(){
		this.list=this.baseService.getByHal("from articlecategorytwo where deletes=false");
		return "success";
	}
	public String threeList(){
		this.list=this.baseService.getByHal("from articlecategorythree where deletes=false");
		return "success";
	}
	public String oneInput(){
		if(id!=0){
			this.articleCategoryOne=(ArticleCategoryOne)this.baseService.get(ArticleCategoryOne.class, id);
		}
		return "success";
	}
	public String twoInput(){
		if(id!=0){
			this.articleCategoryTwo=(ArticleCategoryTwo)this.baseService.get(ArticleCategoryTwo.class, id);
		}
		this.list=this.baseService.getByHal("from articlecategoryone where deletes=false");
		return "success";
	}
	public String threeInput(){
		if(id!=0){
			this.articleCategoryThree=(ArticleCategoryThree)this.baseService.get(ArticleCategoryThree.class, id);
		}
		this.list=this.baseService.getByHal("from articlecategorytwo where deletes=false");
		return "success";
	}
	public String oneAdd(){
		this.articleCategoryOne=new ArticleCategoryOne();
		this.articleCategoryOne.setDeletes(false);
		this.articleCategoryOne.setName(name);
		this.baseService.save(this.articleCategoryOne);
		return "oneList";
	}
	public String twoAdd(){
		this.articleCategoryTwo=new ArticleCategoryTwo();
		this.articleCategoryTwo.setName(name);
		this.articleCategoryTwo.setDeletes(false);
		ArticleCategoryOne o=(ArticleCategoryOne)this.baseService.get(ArticleCategoryOne.class, categoryId);
		this.articleCategoryTwo.setCategory(o);
		this.baseService.save(this.articleCategoryTwo);
		o.getList().add(this.articleCategoryTwo);
		this.baseService.update(o);
		return "twoList";
	}
	public String threeAdd(){
		this.articleCategoryThree=new ArticleCategoryThree();
		ArticleCategoryTwo o=(ArticleCategoryTwo)this.baseService.get(ArticleCategoryTwo.class, categoryId);
		this.articleCategoryThree.setCategory(o);
		this.articleCategoryThree.setContent(content);
		this.articleCategoryThree.setDate(new Date());
		this.articleCategoryThree.setDeletes(false);
		this.articleCategoryThree.setName(name);
		this.baseService.save(this.articleCategoryThree);
		o.getList().add(this.articleCategoryThree);
		this.baseService.update(o);
		return "threeList";
	}
	public String oneDelete(){
		ArticleCategoryOne o=(ArticleCategoryOne)this.baseService.get(ArticleCategoryOne.class, categoryId);
		o.setDeletes(true);
		this.baseService.update(o);
		return "oneList";
	}
	public String towDelete(){
		ArticleCategoryTwo o=(ArticleCategoryTwo)this.baseService.get(ArticleCategoryTwo.class, categoryId);
		o.setDeletes(true);
		this.baseService.update(o);
		o.getCategory().getList().remove(o);
		this.baseService.update(o.getCategory());
		return "twoList";
	}
	public String threeDelete(){
		ArticleCategoryThree o=(ArticleCategoryThree)this.baseService.get(ArticleCategoryThree.class, categoryId);
		o.setDeletes(true);
		this.baseService.update(o);
		o.getCategory().getList().remove(o);
		this.baseService.update(o.getCategory());
		return "threeList";
	}
	public String oneUpdate(){
		ArticleCategoryOne o=(ArticleCategoryOne)this.baseService.get(ArticleCategoryOne.class, id);
		o.setName(name);
		this.baseService.update(o);
		return "oneList";
	}
	public String twoUpdate(){
		ArticleCategoryTwo o=(ArticleCategoryTwo)this.baseService.get(ArticleCategoryTwo.class, id);
		o.setName(name);
		ArticleCategoryOne o2=(ArticleCategoryOne)this.baseService.get(ArticleCategoryOne.class, categoryId);
		this.articleCategoryTwo.setCategory(o2);
		this.baseService.update(o);
		return "twoList";
	}
	public String threeUpdate(){
		ArticleCategoryThree o=(ArticleCategoryThree)this.baseService.get(ArticleCategoryThree.class, id);
		ArticleCategoryTwo o2=(ArticleCategoryTwo)this.baseService.get(ArticleCategoryTwo.class, categoryId);
		this.articleCategoryThree.setCategory(o2);
		this.articleCategoryThree.setContent(content);
		this.articleCategoryThree.setName(name);
		this.baseService.update(o);
		return "threeList";
		
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
	public ArticleCategoryOne getArticleCategoryOne() {
		return articleCategoryOne;
	}
	public void setArticleCategoryOne(ArticleCategoryOne articleCategoryOne) {
		this.articleCategoryOne = articleCategoryOne;
	}
	public ArticleCategoryTwo getArticleCategoryTwo() {
		return articleCategoryTwo;
	}
	public void setArticleCategoryTwo(ArticleCategoryTwo articleCategoryTwo) {
		this.articleCategoryTwo = articleCategoryTwo;
	}
	public ArticleCategoryThree getArticleCategoryThree() {
		return articleCategoryThree;
	}
	public void setArticleCategoryThree(ArticleCategoryThree articleCategoryThree) {
		this.articleCategoryThree = articleCategoryThree;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	

}
