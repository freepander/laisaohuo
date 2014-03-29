package com.myivcre.ga.interceptor;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsStatics;

import com.myivcre.ga.model.ShopUser;
import com.myivcre.ga.service.BaseService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;


public class IsLogin extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource
	BaseService baseService;
	private boolean globalIsLogin=false;
	private String globalUsername="";
	private String globalPassword="";
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		ActionContext ac=arg0.getInvocationContext();
		HttpServletRequest request=(HttpServletRequest)ac.get(StrutsStatics.HTTP_REQUEST);
		HttpSession session=request.getSession();
		
			//用户未登录  从cookie中寻找用户名和密码  如果用户名密码存在，则存入session 否则 islogin为false
			Cookie[] cookies=request.getCookies();
			if(cookies.length>0){
				for(Cookie cookie:cookies){
					if(cookie.getName().equals("username")){
						this.globalUsername=cookie.getValue();
					}else if(cookie.getName().equals("password")){
						this.globalPassword=cookie.getValue();
					}
				}
			}
//			System.out.println(this.globalUsername+"   "+this.globalPassword);
			if(null!=this.globalUsername&&null!=this.globalPassword){
				String hql="from shopuser where username='"+this.globalUsername+"' and password='"+this.globalPassword+"'";
//				System.out.println(hql);
				List<ShopUser> l=this.baseService.getByHal(hql);
				if(l.size()==1){
					this.globalIsLogin=true;
					session.setAttribute("user", l.get(0));
				}
			}
//		System.out.println(this.globalIsLogin);
		session.setAttribute("gloablIsLogin", this.globalIsLogin);
		arg0.invoke();
		return "";
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public BaseService getBaseService() {
		return baseService;
	}

	public void setBaseService(BaseService baseService) {
		this.baseService = baseService;
	}

	public boolean isGlobalIsLogin() {
		return globalIsLogin;
	}

	public void setGlobalIsLogin(boolean globalIsLogin) {
		this.globalIsLogin = globalIsLogin;
	}

	public String getGlobalUsername() {
		return globalUsername;
	}

	public void setGlobalUsername(String globalUsername) {
		this.globalUsername = globalUsername;
	}

	public String getGlobalPassword() {
		return globalPassword;
	}

	public void setGlobalPassword(String globalPassword) {
		this.globalPassword = globalPassword;
	}

	

}
