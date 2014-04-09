package com.myivcre.ga.interceptor;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;


public class AdminLogin extends MethodFilterInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		String username=(String) ServletActionContext.getRequest().getSession().getAttribute("admin");
		if(username!=null&&!username.equals("")){
			arg0.invoke();
		}
		return "login";
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
