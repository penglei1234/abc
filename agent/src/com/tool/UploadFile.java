package com.tool;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadFile {

	
	public static void upload(HttpServletRequest req, String filePath) {
		File path=new File(filePath);
		if(!path.exists()){
			path.mkdirs();
		}
		
		DiskFileItemFactory factory=new DiskFileItemFactory();
		ServletFileUpload sdf=new ServletFileUpload(factory);
		
		try {
			List<FileItem> fileItem=sdf.parseRequest(req);
			
			for(FileItem item:fileItem){
				if(item.getName()!=null){
					String fileName=item.getName();
					req.getSession().setAttribute("fileName", fileName);
					File file=new File(path,fileName);
					item.write(file);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
