package com.myivcre.ga.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * 品牌
 * @author freepander
 *
 */
@Entity(name="brand")
public class Brand {
	@Id@GeneratedValue
	private int id;
	private String name;
	@ManyToOne
	private BrandCategory category;
	//被删除？
	private boolean deletes;
	//是否出现在首页
	private boolean visible;
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
	public BrandCategory getCategory() {
		return category;
	}
	public void setCategory(BrandCategory category) {
		this.category = category;
	}
	public boolean isDelete() {
		return deletes;
	}
	public void setDelete(boolean delete) {
		this.deletes = delete;
	}
	public boolean isVisible() {
		return visible;
	}
	public void setVisible(boolean visible) {
		this.visible = visible;
	}
	
	

}
