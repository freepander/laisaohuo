package com.myivcre.ga.action;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Goods;
import com.myivcre.ga.model.GroupBuy;

@Component("groupBuyAction")
@Scope("prototype")
public class GroupBuyAction extends BaseAction {
	private String name;
	private double price;
	private String createDate;
	private String startDate;
	private String endDate;
	private String logo;
	private int goodsId;
	private int slaeNumber2;
	private String description;
	private String erweima;
	
	private GroupBuy groupBuy;
	
	public String list(){
		try{
			q.add("deletes = ?");
			a.add(false);
			orderby.add("startDate desc");
			this.pageModel=this.baseService.getPageModel("groupbuy", pageNum, 100,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/groupBuy_list?pageNum=");
		return "success";
	}
	public String input(){
		if(id!=0){
			this.groupBuy=(GroupBuy)this.baseService.get(GroupBuy.class, id);
		}
		return "success";
	}
	public String add() throws ParseException{
		this.groupBuy=new GroupBuy();
		this.groupBuy.setName(name);
		this.groupBuy.setPrice(price);
		this.groupBuy.setCreateDate(new Date());
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		this.groupBuy.setStartDate(sdf.parse(this.startDate));
		this.groupBuy.setEndDate(sdf.parse(this.endDate));
		this.groupBuy.setSlaeNumber(0);
		this.groupBuy.setSlaeNumber2(slaeNumber2);
		this.groupBuy.setLogo(logo);
		Goods goods=(Goods)this.baseService.get(Goods.class, goodsId);
		this.groupBuy.setGoods(goods);
		this.groupBuy.setDeletes(false);
		this.groupBuy.setDescription(description);
		this.groupBuy.setErweima(erweima);
		this.baseService.save(this.groupBuy);
		return "list";
	}
	
	public String delete(){
		this.groupBuy=(GroupBuy)this.baseService.get(GroupBuy.class, id);
		this.groupBuy.setDeletes(true);
		this.baseService.update(this.groupBuy);
		return "list";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public GroupBuy getGroupBuy() {
		return groupBuy;
	}
	public void setGroupBuy(GroupBuy groupBuy) {
		this.groupBuy = groupBuy;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
