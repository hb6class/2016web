package com.up.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.up.model.FileDao;

@WebServlet("/upload.do")
public class UpController extends HttpServlet {
	private Logger log=Logger.getLogger(this.getClass());
	private FileDao dao;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String path=req.getRealPath("upload");
		log.debug(path);
		MultipartRequest mr=null;
		int fsize=1024*1024*2;
//		mr=new MultipartRequest(req,path, 1024*1024*2);
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		mr=new MultipartRequest(req, path, fsize, policy);
		
		String param1 = mr.getParameter("sabun");
		
		String param2 = mr.getParameter("name");
//		Enumeration fn = mr.getFileNames();
//		while (fn.hasMoreElements()) {
//			String name = (String) fn.nextElement();
//			log.debug(name);
//		}
		String fname=mr.getOriginalFileName("file1");
		String rename=mr.getFilesystemName("file1");
		log.debug(fname+":"+rename);
//		String fname2=mr.getOriginalFileName("file2");
		int sabun=Integer.parseInt(param1);
		String name=param2;
		String orgfilenm=fname;
		try {
			dao = new FileDao();
			dao.insertOne(sabun,name,orgfilenm,rename);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
//		log.debug(param1+":"+param2+":"+fname+":"+fname2);
//		req.setAttribute("updir","upload");
//		req.setAttribute("filename", fname);
//		req.getRequestDispatcher("download.jsp").forward(req, resp);
		resp.sendRedirect("list.do");
		/*
		 * resp.setContentType(type);
		 * typeÁ¾·ù
		    plain/text
		    plain/json
		    text/html
		    text/xml
		    text/json
			audio/mpeg
			image/bmp
			image/jpeg
			application/xml
			application/json
			application/pdf
			application/java
			application/jar
			application/x-zip
			application/msword
			application/msaccess
			application/vnd.ms-excel
			application/vnd.ms-powerpoint
			application/octet-stream
		 *  
		 *  
		 *  
		 *  */
		
	}
	
	
	
	
}






