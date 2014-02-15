package com.myivcre.ga.util.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

public class MyStrutsFilter extends StrutsPrepareAndExecuteFilter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request=(HttpServletRequest) req;
		String url=request.getRequestURI();
		if(url.endsWith(".jsp")){
			try {
				chain.doFilter(req, res); 
				} catch (IOException e) {
				e.printStackTrace();
				} catch (ServletException e) {
				e.printStackTrace();
				}  
		}else{  
	           try {
	super.doFilter(req, res, chain);//采用默认父类的拦截器，即 struts2 
	} catch (IOException e) {
	e.printStackTrace();
	} catch (ServletException e) {
	e.printStackTrace();
	}  
	       }  
	}

		
}
