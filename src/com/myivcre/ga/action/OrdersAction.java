package com.myivcre.ga.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Order;

/**
 * 订单管理
 * @author freepanders
 *
 */
@Component("ordersAction")
@Scope("prototype")
public class OrdersAction extends BaseAction {
	private Order order;
	private int method;
	/**
	 * 订单列表
	 * @return
	 */
	public String list(){
		if(method==0){
			//全部订单
			
		}else if(method==1){
			q.add("state=?");
			a.add(1);
		}else if(method==2){
			q.add("state=?");
			a.add(2);
		}else if(method==3){
			q.add("state=?");
			a.add(3);
		}else if(method==4){
			q.add("state=?");
			a.add(4);
		}else if(method==5){
			q.add("state=?");
			a.add(5);
		}else if(method==6){
			q.add("state=?");
			a.add(6);
		}else if(method==7){
			q.add("state=?");
			a.add(7);
		}else if(method==10){
			q.add("state=?");
			a.add(10);
		}
		try{
//			orderby.add("id desc");
			this.pageModel=this.baseService.getPageModel("orders", pageNum, 60,orderby,q,a);
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/orders_list?pageNum=");
		return "success";
	}
	/**
	 * 订单详情
	 * @return
	 */
	public String introduce(){
		this.order=(Order)this.baseService.get(Order.class, id);
		return "success";
	}
	/**
	 * 发货
	 * @return
	 */
	public String change(){
		this.order=(Order)this.baseService.get(Order.class, id);
		if(method==3){
			return "sendGoods";
		}else if(method==6){
			this.order.setState(6);
		}
		this.baseService.update(this.order);
		return "list";
	}
	/**
	 * 关闭订单
	 * @return
	 */
	public String close(){
		this.order=(Order)this.baseService.get(Order.class, id);
		this.order.setState(10);
		this.baseService.update(this.order);
		return "list";
	}
	public int getMethod() {
		return method;
	}
	public void setMethod(int method) {
		this.method = method;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	

}
