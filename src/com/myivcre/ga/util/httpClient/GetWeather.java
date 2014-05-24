package com.myivcre.ga.util.httpClient;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class GetWeather {
	public static final String GET_URL="http://www.weather.com.cn/data/sk/101050101.html";
	
	public static String readContentFormGet() throws IOException{
		URL getUrl=new URL(GET_URL);
		HttpURLConnection connection=(HttpURLConnection)getUrl.openConnection();
		connection.connect();
		BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		String lines=reader.readLine(); 
		reader.close();
		connection.disconnect(); 
		return lines;
	}
	
	public static InputStream getW() throws IOException{
		URL getUrl=new URL(GET_URL);
		HttpURLConnection connection=(HttpURLConnection)getUrl.openConnection();
		connection.connect();
		return connection.getInputStream();
	}

	
}
