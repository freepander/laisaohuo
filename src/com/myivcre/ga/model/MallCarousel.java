package com.myivcre.ga.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * 商城首页轮播图片 
 * 限制为五张
 * 每张由图片和链接构成
 * @author freepander
 *
 */
@Entity(name="mallcarousel")
public class MallCarousel {
	@Id@GeneratedValue
	private int id;
	private String link1;
	private String pic1;
	private String link2;
	private String pic2;
	private String link3;
	private String pic3;
	private String link4;
	private String pic4;
	private String link5;
	private String pic5;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLink1() {
		return link1;
	}
	public void setLink1(String link1) {
		this.link1 = link1;
	}
	public String getPic1() {
		return pic1;
	}
	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}
	public String getLink2() {
		return link2;
	}
	public void setLink2(String link2) {
		this.link2 = link2;
	}
	public String getPic2() {
		return pic2;
	}
	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}
	public String getLink3() {
		return link3;
	}
	public void setLink3(String link3) {
		this.link3 = link3;
	}
	public String getPic3() {
		return pic3;
	}
	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}
	public String getLink4() {
		return link4;
	}
	public void setLink4(String link4) {
		this.link4 = link4;
	}
	public String getPic4() {
		return pic4;
	}
	public void setPic4(String pic4) {
		this.pic4 = pic4;
	}
	public String getLink5() {
		return link5;
	}
	public void setLink5(String link5) {
		this.link5 = link5;
	}
	public String getPic5() {
		return pic5;
	}
	public void setPic5(String pic5) {
		this.pic5 = pic5;
	}
	
	
}
