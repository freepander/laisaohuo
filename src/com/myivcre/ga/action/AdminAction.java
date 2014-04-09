package com.myivcre.ga.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.registry.infomodel.User;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Admin;
@Component("adminAction")
@Scope("prototype")
public class AdminAction  extends BaseAction {
	private Admin u;
	private String username;
	private String password;
	public String login(){
		this.list=this.baseService.getByHal("from admin");
		for(int i=0;i<list.size();i++){
			Admin a=(Admin) this.list.get(i);
			if(a.getUsername().equals(username)&&a.getPassword().equals(password)){
				HttpServletRequest request = ServletActionContext.getRequest();
				HttpSession session=request.getSession();
				session.setAttribute("admin", username);
				return "success";
			}
		}
		return "error";
	}
	public Admin getU() {
		return u;
	}
	public void setU(Admin u) {
		this.u = u;
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
}
