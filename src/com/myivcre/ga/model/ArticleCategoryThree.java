package com.myivcre.ga.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity(name="articlecategorythree")
public class ArticleCategoryThree {
	@Id@GeneratedValue
	private int id;
	private String name;
	private String content;
	private Date date;
	private boolean deletes;
	@ManyToOne
	private ArticleCategoryTwo category;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public ArticleCategoryTwo getCategory() {
		return category;
	}
	public void setCategory(ArticleCategoryTwo category) {
		this.category = category;
	}
	

}
