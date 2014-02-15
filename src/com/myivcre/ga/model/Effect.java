package com.myivcre.ga.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * 产品功效
 * @author freepander
 *
 */
@Entity(name="effect")
public class Effect {
	@Id@GeneratedValue
	private int id;
	private String name;
	private boolean deletes;
	//所属类别
	@ManyToOne
	private BigCategory category;
	//是否出现在首页上
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
	public boolean isDelete() {
		return deletes;
	}
	public void setDelete(boolean delete) {
		this.deletes = delete;
	}
	public boolean isDeletes() {
		return deletes;
	}
	public void setDeletes(boolean deletes) {
		this.deletes = deletes;
	}
	public BigCategory getCategory() {
		return category;
	}
	public void setCategory(BigCategory category) {
		this.category = category;
	}
	public boolean isVisible() {
		return visible;
	}
	public void setVisible(boolean visible) {
		this.visible = visible;
	}
	

}
