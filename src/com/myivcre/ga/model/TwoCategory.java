package com.myivcre.ga.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * 商品小类别
 * @author freepander
 *
 */
@Entity(name="twocategory")
public class TwoCategory {
	@Id@GeneratedValue
	private int id;
	private String name;
	@ManyToOne
	private Category parentCategory;
	private boolean deletes;
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
	public Category getParentCategory() {
		return parentCategory;
	}
	public void setParentCategory(Category parentCategory) {
		this.parentCategory = parentCategory;
	}
	public boolean isDelete() {
		return deletes;
	}
	public void setDelete(boolean delete) {
		this.deletes = delete;
	}
	

}
