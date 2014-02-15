package com.myivcre.ga.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.MallCarousel;

@Component("mallCarouselAction")
@Scope("prototype")
public class MallCarouselAction extends BaseAction {
	private String name1;
	private String pic1;
	private String logo1;
	private String name2;
	private String pic2;
	private String logo2;
	private String name3;
	private String pic3;
	private String logo3;
	private String name4;
	private String pic4;
	private String logo4;
	private String name5;
	private String pic5;
	private String logo5;
	private MallCarousel mallCarousel;
	
	public String input(){
		this.mallCarousel=(MallCarousel)this.baseService.get(MallCarousel.class, 1);
		return "success";
	}
	public String update(){
		this.mallCarousel=(MallCarousel)this.baseService.get(MallCarousel.class, 1);
		this.mallCarousel.setLogo1(logo1);
		this.mallCarousel.setLogo2(logo2);
		this.mallCarousel.setLogo3(logo3);
		this.mallCarousel.setLogo4(logo4);
		this.mallCarousel.setLogo5(logo5);
		this.mallCarousel.setName1(name1);
		this.mallCarousel.setName2(name2);
		this.mallCarousel.setName3(name3);
		this.mallCarousel.setName4(name4);
		this.mallCarousel.setName5(name5);
		this.mallCarousel.setPic1(pic1);
		this.mallCarousel.setPic2(pic2);
		this.mallCarousel.setPic3(pic3);
		this.mallCarousel.setPic4(pic4);
		this.mallCarousel.setPic5(pic5);
		this.baseService.update(this.mallCarousel);
		return "mallCarouselinput";
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public String getPic1() {
		return pic1;
	}
	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}
	public String getLogo1() {
		return logo1;
	}
	public void setLogo1(String logo1) {
		this.logo1 = logo1;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	public String getPic2() {
		return pic2;
	}
	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}
	public String getLogo2() {
		return logo2;
	}
	public void setLogo2(String logo2) {
		this.logo2 = logo2;
	}
	public String getName3() {
		return name3;
	}
	public void setName3(String name3) {
		this.name3 = name3;
	}
	public String getPic3() {
		return pic3;
	}
	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}
	public String getLogo3() {
		return logo3;
	}
	public void setLogo3(String logo3) {
		this.logo3 = logo3;
	}
	public String getName4() {
		return name4;
	}
	public void setName4(String name4) {
		this.name4 = name4;
	}
	public String getPic4() {
		return pic4;
	}
	public void setPic4(String pic4) {
		this.pic4 = pic4;
	}
	public String getLogo4() {
		return logo4;
	}
	public void setLogo4(String logo4) {
		this.logo4 = logo4;
	}
	public String getName5() {
		return name5;
	}
	public void setName5(String name5) {
		this.name5 = name5;
	}
	public String getPic5() {
		return pic5;
	}
	public void setPic5(String pic5) {
		this.pic5 = pic5;
	}
	public String getLogo5() {
		return logo5;
	}
	public void setLogo5(String logo5) {
		this.logo5 = logo5;
	}
	public MallCarousel getMallCarousel() {
		return mallCarousel;
	}
	public void setMallCarousel(MallCarousel mallCarousel) {
		this.mallCarousel = mallCarousel;
	}
	

}
