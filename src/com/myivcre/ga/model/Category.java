package com.myivcre.ga.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * 商品二级类别
 * @author freepander
 *
 */
@Entity(name="category")
public class Category {
	@Id@GeneratedValue
	private int id;
	private String name;
	@ManyToOne
	private BigCategory parentCategory;
	//推荐品牌
	@OneToMany
	private List<Brand> brandList;
	@OneToMany
	private List<TwoCategory> towCategoryList;
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
	public BigCategory getParentCategory() {
		return parentCategory;
	}
	public void setParentCategory(BigCategory parentCategory) {
		this.parentCategory = parentCategory;
	}
	public List<Brand> getBrandList() {
		return brandList;
	}
	public void setBrandList(List<Brand> brandList) {
		this.brandList = brandList;
	}
	public boolean isDelete() {
		return deletes;
	}
	public void setDelete(boolean delete) {
		this.deletes = delete;
	}
	public List<TwoCategory> getTowCategoryList() {
		return towCategoryList;
	}
	public void setTowCategoryList(List<TwoCategory> towCategoryList) {
		this.towCategoryList = towCategoryList;
	}
	public boolean isDeletes() {
		return deletes;
	}
	public void setDeletes(boolean deletes) {
		this.deletes = deletes;
	}
	
}
