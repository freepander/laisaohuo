package com.myivcre.ga.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;
import com.myivcre.ga.model.Goods;
import com.myivcre.ga.model.GoodsTemporary;
import com.myivcre.ga.model.PurchaseList;
import com.myivcre.ga.model.ShipmentList;
/**
 * 进货与出货
 * @author freepander
 *
 */
@Component("purchaseShipmentAction")
@Scope("prototype")
public class PurchaseShipmentAction extends BaseAction {
	private Goods goods;
	//进货单
	private PurchaseList purchaseList;
	//出货单
	private ShipmentList shipmentList;
	private int goodsId;
	private double price;
	private int number;
	private String numbers;
	
	/**
	 * 根据id 获得商品信息
	 * @return
	 */
	public String getGoodsById(){
		this.goods=(Goods)this.baseService.getByHal("from goods where deletes=false and numbers='"+numbers+"'").get(0);
		GoodsTemporary g=new GoodsTemporary();
		g.name=this.goods.getName();
		g.price=""+this.goods.getPrice();
		g.id=this.goods.getId();
		String s=JSON.toJSONString(g,true);
		HttpServletResponse response=ServletActionContext.getResponse();
		try {
			response.setCharacterEncoding("utf-8");
			response.getWriter().print(s);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 进入进货页面
	 * @return
	 */
	public String pInput(){
		return "success";
	}
	/**
	 * 进入出货页面
	 * @return
	 */
	public String sInput(){
		return "success";
	}
	/**
	 * 进货
	 * @return
	 */
	public String p(){
		PurchaseList p=new PurchaseList();
		Goods g=(Goods)this.baseService.get(Goods.class, goodsId);
		System.out.println(g.getStock());
		g.setStock(g.getStock()+number);
		p.setGoods(g);
		p.setNumber(number);
		p.setPrice(price);
		p.setTime(new Date());
		this.baseService.save(p);
		this.baseService.update(g);
		return "pInput";
	}
	/**
	 * 出货
	 * @return
	 */
	public String s(){
		ShipmentList s=new ShipmentList();
		Goods g=(Goods)this.baseService.get(Goods.class, goodsId);
		g.setStock(g.getStock()-number);
		s.setGoods(g);
		s.setNumber(number);
		s.setPrice(price);
		s.setTime(new Date());
		this.baseService.save(s);
		this.baseService.update(g);
		return "sInput";
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public PurchaseList getPurchaseList() {
		return purchaseList;
	}
	public void setPurchaseList(PurchaseList purchaseList) {
		this.purchaseList = purchaseList;
	}
	public ShipmentList getShipmentList() {
		return shipmentList;
	}
	public void setShipmentList(ShipmentList shipmentList) {
		this.shipmentList = shipmentList;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getNumbers() {
		return numbers;
	}
	public void setNumbers(String numbers) {
		this.numbers = numbers;
	}
	
	

}
