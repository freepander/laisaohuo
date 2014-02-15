package com.myivcre.ga.action;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.PageModel;
import com.myivcre.ga.service.BaseService;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 基础Action
 * @author freepander
 *
 */
@Component("baseAction")
@Scope("prototype")
public class BaseAction  extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource
	BaseService baseService;
	int id;
	@SuppressWarnings("rawtypes")
	List list;
	String message;
	PageModel pageModel;
	int pageNum = 1;
	List<String> q = new ArrayList<String>();
	List<Object> a = new ArrayList<Object>();
	
	List<String> orderby = new ArrayList<String>();
	Object o ;
	public BaseService getBaseService() {
		//Logger.getAnonymousLogger().info("list action");
		return baseService;
	}
	public void setBaseService(BaseService baseService) {
		this.baseService = baseService;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Object getO() {
		return o;
	}
	public void setO(Object o) {
		this.o = o;
	}
	public List<String> getOrderby() {
		return orderby;
	}
	public void setOrderby(List<String> orderby) {
		this.orderby = orderby;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public PageModel getPageModel() {
		return pageModel;
	}
	public void setPageModel(PageModel pageModel) {
		this.pageModel = pageModel;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
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
	@SuppressWarnings("rawtypes")
	public List getList() {
		return list;
	}
	@SuppressWarnings("rawtypes")
	public void setList(List list) {
		this.list = list;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
