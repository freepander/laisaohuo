package com.myivcre.ga.action;

import java.io.File;
import java.io.PrintWriter;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

@Component("fileAction")
@Scope("prototype")
public class FileAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private File file;
	private String fileName="";
	private String folderName="";
	public String upload() {
		PrintWriter out = null;
		try {
			String filePath = ServletActionContext.getRequest().getRealPath(
					"/upload/"+folderName);
			out = ServletActionContext.getResponse().getWriter();
			File path = new File(filePath);
			if (!path.exists()) {
				path.mkdirs();
			}
			FileUtils.copyFile(file, new File(filePath + "/"
					+ fileName));
			out.print("{data:\"success\"}");
		} catch (Exception e) {
			out.print("{data:\"error\"}");
			e.printStackTrace();
		} finally {
			if (out != null) {
				out.close();
			}
		}
		return null;
	}

	
	
	public File getFile() {
		return file;
	}



	public void setFile(File file) {
		this.file = file;
	}



	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFolderName() {
		return folderName;
	}
	public void setFolderName(String folderName) {
		this.folderName = folderName;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
