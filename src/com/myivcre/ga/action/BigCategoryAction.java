package com.myivcre.ga.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.BigCategory;
import com.myivcre.ga.model.Brand;
import com.myivcre.ga.model.Goods;

@Component("bigCategoryAction")
@Scope("prototype")
public class BigCategoryAction extends BaseAction {
	private String name;
	private List<Brand> brandList;
	private int goods1;
	private int goods2;
	private int goods3;
	private int goods4;
	private int goods5;
	private int goods6;
	private int goods7;
	private int goods8;
	private int goods9;
	private int goods10;
	private int goods11;
	private int goods12;
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
	private int brand1;
	private int brand2;
	private int brand3;
	private int brand4;
	private int brand5;
	private int brand6;
	private int brand7;
	private int brand8;
	private int brand9;
	private int brand10;
	private int brand11;
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
	private BigCategory bigCategory;
	
	public String list(){
		try{
			q.add("deletes = ?");
			a.add(false);
			this.pageModel=this.baseService.getPageModel("bigcategory", pageNum, 20,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/bigCategory_list?pageNum=");
		return "success";
	}
	public String input(){
		if(id!=0){
			this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, id);
		}
		return "success";
	}
	public String add(){
		this.bigCategory=new BigCategory();
		this.bigCategory.setName(name);
		this.bigCategory.setDelete(false);
		this.baseService.save(this.bigCategory);
		return "list";
	}
	public String update(){
		this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, id);
		this.bigCategory.setName(name);
		this.baseService.update(this.bigCategory);
		return "list";
	}
	public String delete(){
		this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, id);
		this.bigCategory.setDelete(true);
		this.baseService.update(this.bigCategory);
		return "list";
	}
	public String qianglist(){
		try{
			q.add("deletes = ?");
			a.add(false);
			this.pageModel=this.baseService.getPageModel("bigcategory", pageNum, 20,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/bigCategory_list?pageNum=");
		return "success";
	}
	public String qianginput(){
		this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, id);
		return "success";
	}
	public String qiangupdate(){
		this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, id);
		Goods good=(Goods)this.baseService.get(Goods.class, goods1);
		this.bigCategory.setGoods1(good);
		good=(Goods)this.baseService.get(Goods.class, goods2);
		this.bigCategory.setGoods2(good);
		good=(Goods)this.baseService.get(Goods.class, goods3);
		this.bigCategory.setGoods3(good);
		good=(Goods)this.baseService.get(Goods.class, goods4);
		this.bigCategory.setGoods4(good);
		good=(Goods)this.baseService.get(Goods.class, goods5);
		this.bigCategory.setGoods5(good);
		good=(Goods)this.baseService.get(Goods.class, goods6);
		this.bigCategory.setGoods6(good);
		good=(Goods)this.baseService.get(Goods.class, goods7);
		this.bigCategory.setGoods7(good);
		good=(Goods)this.baseService.get(Goods.class, goods8);
		this.bigCategory.setGoods8(good);
		good=(Goods)this.baseService.get(Goods.class, goods9);
		this.bigCategory.setGoods9(good);
		good=(Goods)this.baseService.get(Goods.class, goods10);
		this.bigCategory.setGoods10(good);
		good=(Goods)this.baseService.get(Goods.class, goods11);
		this.bigCategory.setGoods11(good);
		good=(Goods)this.baseService.get(Goods.class, goods12);
		this.bigCategory.setGoods12(good);
		this.bigCategory.setPic1(pic1);
		this.bigCategory.setPic2(pic2);
		this.bigCategory.setPic3(pic3);
		this.bigCategory.setPic4(pic4);
		this.bigCategory.setPic5(pic5);
		this.bigCategory.setPic6(pic6);
		this.bigCategory.setPic7(pic7);
		this.bigCategory.setPic8(pic8);
		this.bigCategory.setPic9(pic9);
		this.bigCategory.setPic10(pic10);
		this.bigCategory.setPic11(pic11);
		this.bigCategory.setPic12(pic12);
		this.baseService.update(this.bigCategory);
		return "qianglist";
	}
	public String brandinput(){
		this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, id);
		return "success";
	}
	public String brandupdate(){
		this.bigCategory=(BigCategory)this.baseService.get(BigCategory.class, id);
		Brand brand=(Brand)this.baseService.get(Brand.class, brand1);
		this.bigCategory.setBrand1(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand2);
		this.bigCategory.setBrand2(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand3);
		this.bigCategory.setBrand3(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand4);
		this.bigCategory.setBrand4(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand5);
		this.bigCategory.setBrand5(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand6);
		this.bigCategory.setBrand6(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand7);
		this.bigCategory.setBrand7(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand8);
		this.bigCategory.setBrand8(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand9);
		this.bigCategory.setBrand9(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand10);
		this.bigCategory.setBrand10(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand11);
		this.bigCategory.setBrand11(brand);
		this.bigCategory.setBrandpic1(brandpic1);
		this.bigCategory.setBrandpic2(brandpic2);
		this.bigCategory.setBrandpic3(brandpic3);
		this.bigCategory.setBrandpic4(brandpic4);
		this.bigCategory.setBrandpic5(brandpic5);
		this.bigCategory.setBrandpic6(brandpic6);
		this.bigCategory.setBrandpic7(brandpic7);
		this.bigCategory.setBrandpic8(brandpic8);
		this.bigCategory.setBrandpic9(brandpic9);
		this.bigCategory.setBrandpic10(brandpic10);
		this.bigCategory.setBrandpic11(brandpic11);
		this.baseService.update(this.bigCategory);
		return "qianglist";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Brand> getBrandList() {
		return brandList;
	}
	public void setBrandList(List<Brand> brandList) {
		this.brandList = brandList;
	}
	
	public int getGoods1() {
		return goods1;
	}
	public void setGoods1(int goods1) {
		this.goods1 = goods1;
	}
	public int getGoods2() {
		return goods2;
	}
	public void setGoods2(int goods2) {
		this.goods2 = goods2;
	}
	public int getGoods3() {
		return goods3;
	}
	public void setGoods3(int goods3) {
		this.goods3 = goods3;
	}
	public int getGoods4() {
		return goods4;
	}
	public void setGoods4(int goods4) {
		this.goods4 = goods4;
	}
	public int getGoods5() {
		return goods5;
	}
	public void setGoods5(int goods5) {
		this.goods5 = goods5;
	}
	public int getGoods6() {
		return goods6;
	}
	public void setGoods6(int goods6) {
		this.goods6 = goods6;
	}
	public int getGoods7() {
		return goods7;
	}
	public void setGoods7(int goods7) {
		this.goods7 = goods7;
	}
	public int getGoods8() {
		return goods8;
	}
	public void setGoods8(int goods8) {
		this.goods8 = goods8;
	}
	public int getGoods9() {
		return goods9;
	}
	public void setGoods9(int goods9) {
		this.goods9 = goods9;
	}
	public int getGoods10() {
		return goods10;
	}
	public void setGoods10(int goods10) {
		this.goods10 = goods10;
	}
	public int getGoods11() {
		return goods11;
	}
	public void setGoods11(int goods11) {
		this.goods11 = goods11;
	}
	public int getGoods12() {
		return goods12;
	}
	public void setGoods12(int goods12) {
		this.goods12 = goods12;
	}
	public BigCategory getBigCategory() {
		return bigCategory;
	}
	public void setBigCategory(BigCategory bigCategory) {
		this.bigCategory = bigCategory;
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
	public int getBrand1() {
		return brand1;
	}
	public void setBrand1(int brand1) {
		this.brand1 = brand1;
	}
	public int getBrand2() {
		return brand2;
	}
	public void setBrand2(int brand2) {
		this.brand2 = brand2;
	}
	public int getBrand3() {
		return brand3;
	}
	public void setBrand3(int brand3) {
		this.brand3 = brand3;
	}
	public int getBrand4() {
		return brand4;
	}
	public void setBrand4(int brand4) {
		this.brand4 = brand4;
	}
	public int getBrand5() {
		return brand5;
	}
	public void setBrand5(int brand5) {
		this.brand5 = brand5;
	}
	public int getBrand6() {
		return brand6;
	}
	public void setBrand6(int brand6) {
		this.brand6 = brand6;
	}
	public int getBrand7() {
		return brand7;
	}
	public void setBrand7(int brand7) {
		this.brand7 = brand7;
	}
	public int getBrand8() {
		return brand8;
	}
	public void setBrand8(int brand8) {
		this.brand8 = brand8;
	}
	public int getBrand9() {
		return brand9;
	}
	public void setBrand9(int brand9) {
		this.brand9 = brand9;
	}
	public int getBrand10() {
		return brand10;
	}
	public void setBrand10(int brand10) {
		this.brand10 = brand10;
	}
	public int getBrand11() {
		return brand11;
	}
	public void setBrand11(int brand11) {
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
