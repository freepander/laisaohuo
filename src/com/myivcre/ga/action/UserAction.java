package com.myivcre.ga.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Address;
import com.myivcre.ga.model.Order;
import com.myivcre.ga.model.ShopUser;
import com.myivcre.ga.service.BaseService;
import com.opensymphony.xwork2.ActionContext;

@Component("userAction")
@Scope("prototype")
public class UserAction extends BaseAction{
	private String username;
	private String password;
	private String email;
	private ShopUser user;
	private String showMessage;
	//收货地址
	private String addressee;
	private String province;
	private String city;
	private String district;
	private String street;
	private String zipCode;
	private String telphone;
	private Address address;
	private int addressId;
	//收藏商品的数量
	private int number;
	/**
	 * 货到付款  确认收货
	 * @return
	 */
	public String getGoods(){
		Order order=(Order) this.baseService.get(Order.class, id);
		order.setState(7);
		this.baseService.update(order);
		return "user_order";
	}
	public String order(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		this.list=this.baseService.getByHal("from orders where state!=10 and shopUser.id="+this.user.getId());
		return "user_order";
	}
	public String order2(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		this.list=this.baseService.getByHal("from orders where state=1 and shopUser.id="+this.user.getId());
		return "user_order2";
	}
	public String order3(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		this.list=this.baseService.getByHal("from orders where state=2 and shopUser.id="+this.user.getId());
		return "user_order3";
	}
	public String order4(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		this.list=this.baseService.getByHal("from orders where state=4 or state=7 and shopUser.id="+this.user.getId());
		return "user_order4";
	}
	public String order5(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		this.list=this.baseService.getByHal("from orders where state=10 and shopUser.id="+this.user.getId());
		return "user_order5";
	}
	/**
	 * 管理收货地址
	 * @return
	 */
	public String address(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		this.user=(ShopUser)this.baseService.get(ShopUser.class, this.user.getId());
		return "user_address";
	}
	/**
	 * 添加新的收货地址
	 * @return
	 */
	public String addAddress(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		//创建新的地址
		Address address=new Address();
		address.setAddressee(addressee);
		address.setProvince(province);
		address.setCity(city);
		address.setDistrict(district);
		address.setStreet(street);
		address.setZipCode(zipCode);
		address.setTelphone(telphone);
		if(this.user.getAddressList()==null){
			this.user.setAddressList(new ArrayList<Address>());
		}
		this.user.getAddressList().add(address);
		//更新user对象
		this.baseService.update(this.user);
		//更新session中的user对象
		ActionContext.getContext().getSession().put("user", this.user);
		return "user_address";
	}
	/**
	 * 编辑已有收货地址
	 * @return
	 */
	public String inputAddress(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		for(Address a: user.getAddressList()){
			if(a.getId()==addressId){
				this.address=a;
				break;
			}
		}
		return "user_address";
	}
	/**
	 * 删除已有收货地址
	 * @return
	 */
	public String deleteAddress(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		for(Address a: user.getAddressList()){
			if(a.getId()==addressId){
				this.user.getAddressList().remove(a);
				break;
			}
		}
		this.baseService.update(this.user);
		this.addressId=0;
		return "user_address";
	}
	/**
	 * 更新已有收货地址
	 * @return
	 */
	public String updateAddress(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		for(Address a: user.getAddressList()){
			if(a.getId()==addressId){
				a.setAddressee(addressee);
				a.setCity(city);
				a.setDistrict(district);
				a.setProvince(province);
				a.setStreet(street);
				a.setTelphone(telphone);
				a.setZipCode(zipCode);
				break;
			}
		}
		this.baseService.update(this.user);
		this.addressId=0;
		return "user_address";
	}
	public String collection(){
		this.user=(ShopUser)ActionContext.getContext().getSession().get("user");
		this.list=this.baseService.getByHal("from collection where shopUser.id="+this.user.getId());
		this.number=this.list.size();
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
	/**
	 * 退出登录
	 * @return
	 */
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
		Map<String, Object> session=ServletActionContext.getContext().getSession();
		session.put("user", null);
		return "index_index";
	}
	/**
	 * 注册
	 * @return
	 */
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
		//将用户名密码加入cookie中  将用户 加入session中
		HttpServletResponse response=ServletActionContext.getResponse();
		Cookie c1=new Cookie("username",user.getUsername());
		Cookie c2=new Cookie("password",user.getPassword());
		c1.setMaxAge(30*24*60*60);
		c2.setMaxAge(30*24*60*60);
		response.addCookie(c1);
		response.addCookie(c2);
		//将用户放入session
		Map<String, Object> session=ServletActionContext.getContext().getSession();
		session.put("user", this.user);
		return "index_index";
	}
	/**
	 * 进入登陆页面
	 * @return
	 */
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
	/**
	 * 登陆
	 * @return
	 */
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
			//将用户放入session
			Map<String, Object> session=ServletActionContext.getContext().getSession();
			session.put("user", this.user);
			return "index_index";
		}else{
			this.showMessage="用户名或密码不正确";
			return "login";
		}
	}
	/**
	 * 进入注册页面
	 * @return
	 */
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
	public String getAddressee() {
		return addressee;
	}
	public void setAddressee(String addressee) {
		this.addressee = addressee;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}

}
