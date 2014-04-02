package com.myivcre.ga.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.MallCarousel;

/**
 * 商城轮播图片管理
 * 默认只有一个对象    id为1
 * @author freepander
 *
 */
@Component("mallCarouselAction")
@Scope("prototype")
public class MallCarouselAction extends BaseAction {
	private String link1;
	private String link2;
	private String link3;
	private String link4;
	private String link5;
	private String pic1;
	private String pic2;
	private String pic3;
	private String pic4;
	private String pic5;
	private MallCarousel mallCarousel;
	
	public String input(){
		this.mallCarousel=(MallCarousel)this.baseService.get(MallCarousel.class, 1);
		return "success";
	}
	public String update(){
		this.mallCarousel=(MallCarousel)this.baseService.get(MallCarousel.class, 1);
		this.mallCarousel.setLink1(link1);
		this.mallCarousel.setLink2(link2);
		this.mallCarousel.setLink3(link3);
		this.mallCarousel.setLink4(link4);
		this.mallCarousel.setLink5(link5);
		this.mallCarousel.setPic1(pic1);
		this.mallCarousel.setPic2(pic2);
		this.mallCarousel.setPic3(pic3);
		this.mallCarousel.setPic4(pic4);
		this.mallCarousel.setPic5(pic5);
		this.baseService.update(this.mallCarousel);
		return "mallCarouselinput";
	}
	public String getLink1() {
		return link1;
	}
	public void setLink1(String link1) {
		this.link1 = link1;
	}
	public String getLink2() {
		return link2;
	}
	public void setLink2(String link2) {
		this.link2 = link2;
	}
	public String getLink3() {
		return link3;
	}
	public void setLink3(String link3) {
		this.link3 = link3;
	}
	public String getLink4() {
		return link4;
	}
	public void setLink4(String link4) {
		this.link4 = link4;
	}
	public String getLink5() {
		return link5;
	}
	public void setLink5(String link5) {
		this.link5 = link5;
	}
	public String getPic1() {
		return pic1;
	}
	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}
	public String getPic2() {
		return pic2;
	}
	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}
	public String getPic3() {
		return pic3;
	}
	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}
	public String getPic4() {
		return pic4;
	}
	public void setPic4(String pic4) {
		this.pic4 = pic4;
	}
	public String getPic5() {
		return pic5;
	}
	public void setPic5(String pic5) {
		this.pic5 = pic5;
	}
	public MallCarousel getMallCarousel() {
		return mallCarousel;
	}
	public void setMallCarousel(MallCarousel mallCarousel) {
		this.mallCarousel = mallCarousel;
	}
	
}
