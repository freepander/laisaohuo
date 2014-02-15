package com.myivcre.ga.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="articlecategoryone")
public class ArticleCategoryOne {
	@Id@GeneratedValue
	private int id;
	private String name;
	private boolean deletes;
	@OneToMany
	private List<ArticleCategoryTwo> list;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isDeletes() {
		return deletes;
	}
	public void setDeletes(boolean deletes) {
		this.deletes = deletes;
	}
	public List<ArticleCategoryTwo> getList() {
		return list;
	}
	public void setList(List<ArticleCategoryTwo> list) {
		this.list = list;
	}
	

}
