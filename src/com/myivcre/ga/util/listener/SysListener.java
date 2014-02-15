package com.myivcre.ga.util.listener;

import java.io.IOException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

/**
 * 系统监听  
 * @author freepander
 *
 */
public class SysListener extends HttpServlet implements ServletContextListener {

	private static final long serialVersionUID=1L;
	
	public void service(ServletRequest request,ServletResponse response) throws ServletException, IOException{
		
	}
	
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("系统定时任务初始化结束....");
	}

	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("系统定时任务初始化开始....");
	}

}
