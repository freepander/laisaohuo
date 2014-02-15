package com.myivcre.ga.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.ShopUser;

@Component("shopUserAction")
@Scope("prototype")
public class ShopUserAction extends BaseAction {
	private String username;
	private String password;
	private String email;
	private ShopUser shopUser;
	
	public String list(){
		try {
			this.pageModel=this.baseService.getPageModel("shopuser", 1, 40,orderby,q,a);
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.pageModel.setUrl("admin/shopUser_list?pageNum=");
		return "success";
	}
	public String introduce(){
		this.shopUser=(ShopUser)this.baseService.get(ShopUser.class, id);
		return "success";
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public ShopUser getShopUser() {
		return shopUser;
	}
	public void setShopUser(ShopUser shopUser) {
		this.shopUser = shopUser;
	}
	
	
}
