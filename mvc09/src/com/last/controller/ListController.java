package com.last.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.last.model.GuestDao;
import com.last.model.GuestDto;

@WebServlet("/list.do")
public class ListController extends HttpServlet {
	private Logger log=Logger.getLogger(this.getClass());
	private GuestDao dao;
	private List<GuestDto> list;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			dao= new GuestDao();
			list=dao.selectAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
//		DEBUG<INFO<WARN<ERROR<FATAL
//		log.debug("debug lvl");
//		log.error("error lvl");
//		log.fatal("fatal lvl");
//		log.info("info lvl");
//		log.warn("warn lvl");
		for(GuestDto dto : list){
			log.debug(dto.toString());
		}
		request.setAttribute("alist", listm
				);
		request.getRequestDispatcher("guest/list.jsp").forward(request, response);
	}

}
