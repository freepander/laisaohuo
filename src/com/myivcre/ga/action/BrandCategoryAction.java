package com.myivcre.ga.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Brand;
import com.myivcre.ga.model.BrandCategory;

@Component("brandCategoryAction")
@Scope("prototype")
public class BrandCategoryAction extends BaseAction {
	private String name;
	private BrandCategory brandCategory;
	
	private int brand1Id;
	private int brand2Id;
	private int brand3Id;
	private int brand4Id;
	private int brand5Id;
	private int brand6Id;
	private int brand7Id;
	private int brand8Id;
	private int brand9Id;
	private int brand10Id;
	private int brand11Id;
	private int brand12Id;
	private int brand13Id;
	private int brand14Id;
	private int brand15Id;
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
	public String list(){
		try{
			q.add("deletes = ?");
			a.add(false);
			this.pageModel=this.baseService.getPageModel("brandcategory", pageNum, 20,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/brandCategory_list?pageNum=");
		return "success";
	}
	public String input(){
		if(id!=0){
			this.brandCategory=(BrandCategory) this.baseService.get(BrandCategory.class, id);
		}
		return "success";
	}
	public String add(){
		this.brandCategory=new BrandCategory();
		this.brandCategory.setName(name);
		this.brandCategory.setDelete(false);
		this.baseService.save(this.brandCategory);
		return "list ";
	}
	public String update(){
		this.brandCategory=(BrandCategory) this.baseService.get(BrandCategory.class, id);
		this.brandCategory.setName(name);
		this.baseService.update(this.brandCategory);
		return "list";
	}
	public String delete(){
		this.brandCategory=(BrandCategory) this.baseService.get(BrandCategory.class, id);
		this.brandCategory.setDelete(true);
		this.baseService.update(this.brandCategory);
		return "list";
	}
	public String qianglist(){
		try{
			q.add("deletes = ?");
			a.add(false);
			this.pageModel=this.baseService.getPageModel("brandcategory", pageNum, 20,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/brandCategory_list?pageNum=");
		return "success";
	}
	public String qianginput(){
		this.brandCategory=(BrandCategory)this.baseService.get(BrandCategory.class, id);
		this.list=this.baseService.getByHal("from brand where deletes=false");
		return "success";
	}
	public String qiangupdate(){
		this.brandCategory=(BrandCategory)this.baseService.get(BrandCategory.class, id);
		Brand brand=(Brand)this.baseService.get(Brand.class, brand1Id);
		this.brandCategory.setBrand1(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand2Id);
		this.brandCategory.setBrand2(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand3Id);
		this.brandCategory.setBrand3(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand4Id);
		this.brandCategory.setBrand4(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand5Id);
		this.brandCategory.setBrand5(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand6Id);
		this.brandCategory.setBrand6(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand7Id);
		this.brandCategory.setBrand7(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand8Id);
		this.brandCategory.setBrand8(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand9Id);
		this.brandCategory.setBrand9(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand10Id);
		this.brandCategory.setBrand10(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand11Id);
		this.brandCategory.setBrand11(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand12Id);
		this.brandCategory.setBrand12(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand13Id);
		this.brandCategory.setBrand13(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand14Id);
		this.brandCategory.setBrand14(brand);
		brand=(Brand)this.baseService.get(Brand.class, brand15Id);
		this.brandCategory.setBrand15(brand);
		this.brandCategory.setPic1(pic1);
		this.brandCategory.setPic2(pic2);
		this.brandCategory.setPic3(pic3);
		this.brandCategory.setPic4(pic4);
		this.brandCategory.setPic5(pic5);
		this.brandCategory.setPic6(pic6);
		this.brandCategory.setPic7(pic7);
		this.brandCategory.setPic8(pic8);
		this.brandCategory.setPic9(pic9);
		this.brandCategory.setPic10(pic10);
		this.brandCategory.setPic11(pic11);
		this.brandCategory.setPic12(pic12);
		this.brandCategory.setPic13(pic13);
		this.brandCategory.setPic14(pic14);
		this.brandCategory.setPic15(pic15);
		this.baseService.update(this.brandCategory);
		return "qianglist";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BrandCategory getBrandCategory() {
		return brandCategory;
	}
	public void setBrandCategory(BrandCategory brandCategory) {
		this.brandCategory = brandCategory;
	}
	
	public int getBrand1Id() {
		return brand1Id;
	}
	public void setBrand1Id(int brand1Id) {
		this.brand1Id = brand1Id;
	}
	public int getBrand2Id() {
		return brand2Id;
	}
	public void setBrand2Id(int brand2Id) {
		this.brand2Id = brand2Id;
	}
	public int getBrand3Id() {
		return brand3Id;
	}
	public void setBrand3Id(int brand3Id) {
		this.brand3Id = brand3Id;
	}
	public int getBrand4Id() {
		return brand4Id;
	}
	public void setBrand4Id(int brand4Id) {
		this.brand4Id = brand4Id;
	}
	public int getBrand5Id() {
		return brand5Id;
	}
	public void setBrand5Id(int brand5Id) {
		this.brand5Id = brand5Id;
	}
	public int getBrand6Id() {
		return brand6Id;
	}
	public void setBrand6Id(int brand6Id) {
		this.brand6Id = brand6Id;
	}
	public int getBrand7Id() {
		return brand7Id;
	}
	public void setBrand7Id(int brand7Id) {
		this.brand7Id = brand7Id;
	}
	public int getBrand8Id() {
		return brand8Id;
	}
	public void setBrand8Id(int brand8Id) {
		this.brand8Id = brand8Id;
	}
	public int getBrand9Id() {
		return brand9Id;
	}
	public void setBrand9Id(int brand9Id) {
		this.brand9Id = brand9Id;
	}
	public int getBrand10Id() {
		return brand10Id;
	}
	public void setBrand10Id(int brand10Id) {
		this.brand10Id = brand10Id;
	}
	public int getBrand11Id() {
		return brand11Id;
	}
	public void setBrand11Id(int brand11Id) {
		this.brand11Id = brand11Id;
	}
	public int getBrand12Id() {
		return brand12Id;
	}
	public void setBrand12Id(int brand12Id) {
		this.brand12Id = brand12Id;
	}
	public int getBrand13Id() {
		return brand13Id;
	}
	public void setBrand13Id(int brand13Id) {
		this.brand13Id = brand13Id;
	}
	public int getBrand14Id() {
		return brand14Id;
	}
	public void setBrand14Id(int brand14Id) {
		this.brand14Id = brand14Id;
	}
	public int getBrand15Id() {
		return brand15Id;
	}
	public void setBrand15Id(int brand15Id) {
		this.brand15Id = brand15Id;
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
	
}
