package com.myivcre.ga.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.GroupBuy;
import com.myivcre.ga.service.BaseService;
import com.opensymphony.xwork2.ActionSupport;

@Component("groupAction")
@Scope("prototype")
public class GroupAction extends ActionSupport {
	List<String> q = new ArrayList<String>();
	List<Object> a = new ArrayList<Object>();
	List<String> orderby = new ArrayList<String>();
	@Resource
	BaseService baseService;
	private int id;
	private List groupBuyList;
	private GroupBuy groupBuy;
	public String groupList(){
		try {
			q.add("deletes=?");
			a.add(false);
			q.add("endDate>?");
			a.add(new Date());
			q.add("startDate<?");
			a.add(new Date());
			orderby.add("createDate desc");
			this.groupBuyList=this.baseService.getObjectList("groupbuy", 1, 50, orderby, q, a);
		} catch (Exception e) {
			System.out.println("获得团购列表异常");
			e.printStackTrace();
		}
		return "success";
	}
	public String groupBuy(){
		this.groupBuy=(GroupBuy)this.baseService.get(GroupBuy.class, id);
		return "success";
	}
	public List<String> getQ() {
		return q;
	}

	public void setQ(List<String> q) {
		this.q = q;
	}

	public List<Object> getA() {
		return a;
	}

	public void setA(List<Object> a) {
		this.a = a;
	}

	public List<String> getOrderby() {
		return orderby;
	}

	public void setOrderby(List<String> orderby) {
		this.orderby = orderby;
	}

	public BaseService getBaseService() {
		return baseService;
	}

	public void setBaseService(BaseService baseService) {
		this.baseService = baseService;
	}

	public GroupBuy getGroupBuy() {
		return groupBuy;
	}
	public void setGroupBuy(GroupBuy groupBuy) {
		this.groupBuy = groupBuy;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List getGroupBuyList() {
		return groupBuyList;
	}

	public void setGroupBuyList(List groupBuyList) {
		this.groupBuyList = groupBuyList;
	}
	
}
