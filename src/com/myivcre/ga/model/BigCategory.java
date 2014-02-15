package com.myivcre.ga.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

/**
 * 商品大类
 * @author freepander
 *
 */
@Entity(name="bigcategory")
public class BigCategory {
	@Id@GeneratedValue
	private int id;
	private String name;
	//推荐品牌  11个为最佳
//	@OneToMany
//	private List<Brand> brandList;
	private boolean deletes;
	@OneToOne
	private Goods goods1;
	@OneToOne
	private Goods goods2;
	@OneToOne
	private Goods goods3;
	@OneToOne
	private Goods goods4;
	@OneToOne
	private Goods goods5;
	@OneToOne
	private Goods goods6;
	@OneToOne
	private Goods goods7;
	@OneToOne
	private Goods goods8;
	@OneToOne
	private Goods goods9;
	@OneToOne
	private Goods goods10;
	@OneToOne
	private Goods goods11;
	@OneToOne
	private Goods goods12;
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
	@ManyToOne
	private Brand brand1;
	@ManyToOne
	private Brand brand2;
	@ManyToOne
	private Brand brand3;
	@ManyToOne
	private Brand brand4;
	@ManyToOne
	private Brand brand5;
	@ManyToOne
	private Brand brand6;
	@ManyToOne
	private Brand brand7;
	@ManyToOne
	private Brand brand8;
	@ManyToOne
	private Brand brand9;
	@ManyToOne
	private Brand brand10;
	@ManyToOne
	private Brand brand11;
	private String brandpic1;
	private String brandpic2;
	private String brandpic3;
	private String brandpic4;
	private String brandpic5;
	private String brandpic6;
	private String brandpic7;
	private String brandpic8;
	private String brandpic9;
	private String brandpic10;
	private String brandpic11;
	public int getId() {
		return id;
	}
	public boolean isDelete() {
		return deletes;
	}
	public void setDelete(boolean delete) {
		this.deletes = delete;
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
	public Goods getGoods1() {
		return goods1;
	}
	public void setGoods1(Goods goods1) {
		this.goods1 = goods1;
	}
	public Goods getGoods2() {
		return goods2;
	}
	public void setGoods2(Goods goods2) {
		this.goods2 = goods2;
	}
	public Goods getGoods3() {
		return goods3;
	}
	public void setGoods3(Goods goods3) {
		this.goods3 = goods3;
	}
	public Goods getGoods4() {
		return goods4;
	}
	public void setGoods4(Goods goods4) {
		this.goods4 = goods4;
	}
	public Goods getGoods5() {
		return goods5;
	}
	public void setGoods5(Goods goods5) {
		this.goods5 = goods5;
	}
	public Goods getGoods6() {
		return goods6;
	}
	public void setGoods6(Goods goods6) {
		this.goods6 = goods6;
	}
	public Goods getGoods7() {
		return goods7;
	}
	public void setGoods7(Goods goods7) {
		this.goods7 = goods7;
	}
	public Goods getGoods8() {
		return goods8;
	}
	public void setGoods8(Goods goods8) {
		this.goods8 = goods8;
	}
	public Goods getGoods9() {
		return goods9;
	}
	public void setGoods9(Goods goods9) {
		this.goods9 = goods9;
	}
	public Goods getGoods10() {
		return goods10;
	}
	public void setGoods10(Goods goods10) {
		this.goods10 = goods10;
	}
	public Goods getGoods11() {
		return goods11;
	}
	public void setGoods11(Goods goods11) {
		this.goods11 = goods11;
	}
	public Goods getGoods12() {
		return goods12;
	}
	public void setGoods12(Goods goods12) {
		this.goods12 = goods12;
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
	public String getBrandpic1() {
		return brandpic1;
	}
	public void setBrandpic1(String brandpic1) {
		this.brandpic1 = brandpic1;
	}
	public String getBrandpic2() {
		return brandpic2;
	}
	public void setBrandpic2(String brandpic2) {
		this.brandpic2 = brandpic2;
	}
	public String getBrandpic3() {
		return brandpic3;
	}
	public void setBrandpic3(String brandpic3) {
		this.brandpic3 = brandpic3;
	}
	public String getBrandpic4() {
		return brandpic4;
	}
	public void setBrandpic4(String brandpic4) {
		this.brandpic4 = brandpic4;
	}
	public String getBrandpic5() {
		return brandpic5;
	}
	public void setBrandpic5(String brandpic5) {
		this.brandpic5 = brandpic5;
	}
	public String getBrandpic6() {
		return brandpic6;
	}
	public void setBrandpic6(String brandpic6) {
		this.brandpic6 = brandpic6;
	}
	public String getBrandpic7() {
		return brandpic7;
	}
	public void setBrandpic7(String brandpic7) {
		this.brandpic7 = brandpic7;
	}
	public String getBrandpic8() {
		return brandpic8;
	}
	public void setBrandpic8(String brandpic8) {
		this.brandpic8 = brandpic8;
	}
	public String getBrandpic9() {
		return brandpic9;
	}
	public void setBrandpic9(String brandpic9) {
		this.brandpic9 = brandpic9;
	}
	public String getBrandpic10() {
		return brandpic10;
	}
	public void setBrandpic10(String brandpic10) {
		this.brandpic10 = brandpic10;
	}
	public String getBrandpic11() {
		return brandpic11;
	}
	public void setBrandpic11(String brandpic11) {
		this.brandpic11 = brandpic11;
	}
	
}
