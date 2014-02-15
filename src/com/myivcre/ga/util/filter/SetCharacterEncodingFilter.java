package com.myivcre.ga.util.filter;

import java.io.IOException; 

import javax.servlet.Filter; 
import javax.servlet.FilterChain; 
import javax.servlet.FilterConfig; 
import javax.servlet.ServletException; 
import javax.servlet.ServletRequest; 
import javax.servlet.ServletResponse;
/**
 * 解决字符编码问题
 * @author freepander
 *
 */
public class SetCharacterEncodingFilter implements Filter {
	 
    /** 
     * The default character encoding to set for requests that pass through this 
     * filter. 
     */ 
	protected String encoding = null;
    
    /** 
     * The filter configuration object we are associated with. If this value is 
     * null, this filter instance is not currently configured. 
     */ 
    protected FilterConfig filterConfig = null; 

    /** 
     * Should a character encoding specified by the client be ignored? 
     */ 
    protected boolean ignore = true; 


    /** 
     * Take this filter out of service. 
     */ 
    public void destroy() { 
        this.encoding = null; 
        this.filterConfig = null; 
    } 
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException { 
        // Conditionally select and set the character encoding to be used 
        if (ignore || (request.getCharacterEncoding() == null)) { 
            String encoding = selectEncoding(request); 
            if (encoding != null) 
                request.setCharacterEncoding(encoding); 
        } 
        // Pass control on to the next filter 
        chain.doFilter(request, response); 
    } 
    
    public void init(FilterConfig filterConfig) throws ServletException { 
        this.filterConfig = filterConfig; 
        this.encoding = filterConfig.getInitParameter("encoding"); 
        String value = filterConfig.getInitParameter("ignore"); 
        if (value == null) 
            this.ignore = true; 
        else if (value.equalsIgnoreCase("true")) 
            this.ignore = true; 
        else if (value.equalsIgnoreCase("yes")) 
            this.ignore = true; 
        else 
            this.ignore = false; 
    } 

    // Protected Methods 
    protected String selectEncoding(ServletRequest request) { 
            return (this.encoding); 
    } 
    
} 
