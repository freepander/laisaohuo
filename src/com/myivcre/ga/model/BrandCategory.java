package com.myivcre.ga.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 * 品牌类别
 * @author freepander
 *
 */
@Entity(name="brandcategory")
public class BrandCategory {
	@Id@GeneratedValue
	private int id;
	private String name;
	private boolean deletes;
	private String pic1;
	private String pic2;
	private String pic3;
	private String pic4;
	private String pic5;
	private String pic6;
	private String pic7;
	private String pic8;
	private String pic9;
	private String pic10;
	private String pic11;
	private String pic12;
	private String pic13;
	private String pic14;
	private String pic15;
	@OneToOne
	private Brand brand1;
	@OneToOne
	private Brand brand2;
	@OneToOne
	private Brand brand3;
	@OneToOne
	private Brand brand4;
	@OneToOne
	private Brand brand5;
	@OneToOne
	private Brand brand6;
	@OneToOne
	private Brand brand7;
	@OneToOne
	private Brand brand8;
	@OneToOne
	private Brand brand9;
	@OneToOne
	private Brand brand10;
	@OneToOne
	private Brand brand11;
	@OneToOne
	private Brand brand12;
	@OneToOne
	private Brand brand13;
	@OneToOne
	private Brand brand14;
	@OneToOne
	private Brand brand15;
	
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
	public String getPic6() {
		return pic6;
	}
	public void setPic6(String pic6) {
		this.pic6 = pic6;
	}
	public String getPic7() {
		return pic7;
	}
	public void setPic7(String pic7) {
		this.pic7 = pic7;
	}
	public String getPic8() {
		return pic8;
	}
	public void setPic8(String pic8) {
		this.pic8 = pic8;
	}
	public String getPic9() {
		return pic9;
	}
	public void setPic9(String pic9) {
		this.pic9 = pic9;
	}
	public String getPic10() {
		return pic10;
	}
	public void setPic10(String pic10) {
		this.pic10 = pic10;
	}
	public String getPic11() {
		return pic11;
	}
	public void setPic11(String pic11) {
		this.pic11 = pic11;
	}
	public String getPic12() {
		return pic12;
	}
	public void setPic12(String pic12) {
		this.pic12 = pic12;
	}
	public String getPic13() {
		return pic13;
	}
	public void setPic13(String pic13) {
		this.pic13 = pic13;
	}
	public String getPic14() {
		return pic14;
	}
	public void setPic14(String pic14) {
		this.pic14 = pic14;
	}
	public String getPic15() {
		return pic15;
	}
	public void setPic15(String pic15) {
		this.pic15 = pic15;
	}
	public Brand getBrand1() {
		return brand1;
	}
	public void setBrand1(Brand brand1) {
		this.brand1 = brand1;
	}
	public Brand getBrand2() {
		return brand2;
	}
	public void setBrand2(Brand brand2) {
		this.brand2 = brand2;
	}
	public Brand getBrand3() {
		return brand3;
	}
	public void setBrand3(Brand brand3) {
		this.brand3 = brand3;
	}
	public Brand getBrand4() {
		return brand4;
	}
	public void setBrand4(Brand brand4) {
		this.brand4 = brand4;
	}
	public Brand getBrand5() {
		return brand5;
	}
	public void setBrand5(Brand brand5) {
		this.brand5 = brand5;
	}
	public Brand getBrand6() {
		return brand6;
	}
	public void setBrand6(Brand brand6) {
		this.brand6 = brand6;
	}
	public Brand getBrand7() {
		return brand7;
	}
	public void setBrand7(Brand brand7) {
		this.brand7 = brand7;
	}
	public Brand getBrand8() {
		return brand8;
	}
	public void setBrand8(Brand brand8) {
		this.brand8 = brand8;
	}
	public Brand getBrand9() {
		return brand9;
	}
	public void setBrand9(Brand brand9) {
		this.brand9 = brand9;
	}
	public Brand getBrand10() {
		return brand10;
	}
	public void setBrand10(Brand brand10) {
		this.brand10 = brand10;
	}
	public Brand getBrand11() {
		return brand11;
	}
	public void setBrand11(Brand brand11) {
		this.brand11 = brand11;
	}
	public Brand getBrand12() {
		return brand12;
	}
	public void setBrand12(Brand brand12) {
		this.brand12 = brand12;
	}
	public Brand getBrand13() {
		return brand13;
	}
	public void setBrand13(Brand brand13) {
		this.brand13 = brand13;
	}
	public Brand getBrand14() {
		return brand14;
	}
	public void setBrand14(Brand brand14) {
		this.brand14 = brand14;
	}
	public Brand getBrand15() {
		return brand15;
	}
	public void setBrand15(Brand brand15) {
		this.brand15 = brand15;
	}
	

}
