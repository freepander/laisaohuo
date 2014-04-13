package com.myivcre.ga.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Cascade;

/**
 * 商城用户
 * @author freepander
 *
 */
@Entity(name="shopuser")
public class ShopUser {
	@Id@GeneratedValue
	private int id;
	//用户名
	private String username;
	//密码
	private String password;
	//邮箱
	private String email;
	//收货地址
	@OneToMany@Cascade(value={org.hibernate.annotations.CascadeType.ALL})
	private List<Address> addressList;
	public ShopUser(){
		this.addressList=new ArrayList<Address>();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public List<Address> getAddressList() {
		return addressList;
	}
	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}
	
}
