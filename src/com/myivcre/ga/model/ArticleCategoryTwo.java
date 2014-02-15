package com.myivcre.ga.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity(name="articlecategorytwo")
public class ArticleCategoryTwo {
	@Id@GeneratedValue
	private int id;
	private String name;
	@ManyToOne
	private ArticleCategoryOne category;
	private boolean deletes;
	@OneToMany
	private List<ArticleCategoryThree> list;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public boolean isDeletes() {
		return deletes;
	}
	public void setDeletes(boolean deletes) {
		this.deletes = deletes;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<ArticleCategoryThree> getList() {
		return list;
	}
	public void setList(List<ArticleCategoryThree> list) {
		this.list = list;
	}
	public ArticleCategoryOne getCategory() {
		return category;
	}
	public void setCategory(ArticleCategoryOne category) {
		this.category = category;
	}
	

}
