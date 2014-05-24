package com.myivcre.ga.action;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.util.httpClient.GetWeather;

@Component("weatherAction")
@Scope("prototype")
public class WeatherAction {
	
	public String getWeather() throws IOException{
//		InputStream i=GetWeather.getW();
		String result="";
		try {
			result=GetWeather.readContentFormGet();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpServletResponse response=ServletActionContext.getResponse();
		try {
			response.setCharacterEncoding("GBK");
//			response.getWriter().print(i);
//			response.setHeader("Content-Type", "application/json");
//			response.setHeader("Pragma", "no-cache");
//			response.setHeader("Cache-Control", "no-cache, no-store, max-age=1");
//			response.setHeader("Expires", "1L");
			response.getWriter().print(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
