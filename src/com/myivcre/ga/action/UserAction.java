package com.myivcre.ga.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.ShopUser;
import com.myivcre.ga.service.BaseService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Component("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport{
	@Resource
	BaseService baseService;
	private String username;
	private String password;
	private String email;
	private ShopUser user;
	private String showMessage;
	private List list;
	public String order(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_order";
	}
	public String order2(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_order2";
	}
	public String order3(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_order3";
	}
	public String order4(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_order4";
	}
	public String order5(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_order5";
	}
	public String address(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_address";
	}
	public String collection(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_collection";
	}
	public String password(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_password";
	}
	public String red(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_red";
	}
	public String red2(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_red2";
	}
	public String red3(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_red3";
	}
	public String returnGoods(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_returnGoods";
	}
	public String vip(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_vip";
	}
	public String wish(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_wish";
	}
	public String message(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		return "user_message";
	}
	
	public String signOut(){
		HttpServletResponse response=ServletActionContext.getResponse();
		HttpServletRequest request=ServletActionContext.getRequest();
		Cookie[] cookies=request.getCookies();
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("username")){
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}else if(cookie.getName().equals("password")){
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
		return "index_index";
	}
	public String register(){
		List l1=this.baseService.getByHal("from shopuser where email='"+email+"'");
		List l2=this.baseService.getByHal("from shopuser where username='"+username+"'");
		if(l1.size()>0){
			this.showMessage="该邮箱已被注册，请更换邮箱或登录";
			return "register";
		}
		if(l2.size()>0){
			this.showMessage="该用户名已被占用，请登录或更改用户名";
			return "register";
		}
		this.user=new ShopUser();
		this.user.setEmail(email);
		this.user.setUsername(username);
		this.user.setPassword(password);
		this.baseService.save(this.user);
		return "index_index";
	}
	public String loginInput(){
		HttpServletRequest request=ServletActionContext.getRequest();
		Cookie[] cookies=request.getCookies();
		for(Cookie cookie:cookies){
			if(cookie.getName().equals("username")){
				this.username=cookie.getValue();
			}else if(cookie.getName().equals("password")){
				this.password=cookie.getValue();
			}
		}
		return "login";
	}
	public String login(){
		List<ShopUser> l=this.baseService.getByHal("from shopuser where username='"+username+"' and password='"+password+"'");
		if(l.size()>0){
			this.user=l.get(0);
			HttpServletResponse response=ServletActionContext.getResponse();
			Cookie c1=new Cookie("username",user.getUsername());
			Cookie c2=new Cookie("password",user.getPassword());
			c1.setMaxAge(30*24*60*60);
			c2.setMaxAge(30*24*60*60);
			response.addCookie(c1);
			response.addCookie(c2);
			return "index_index";
		}else{
			this.showMessage="用户名或密码不正确";
			return "login";
		}
	}
	public String registerInput(){
		return "register";
	}
	public BaseService getBaseService() {
		return baseService;
	}
	public void setBaseService(BaseService baseService) {
		this.baseService = baseService;
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
	public ShopUser getUser() {
		return user;
	}
	public void setUser(ShopUser user) {
		this.user = user;
	}
	public String getShowMessage() {
		return showMessage;
	}
	public void setShowMessage(String showMessage) {
		this.showMessage = showMessage;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
}
