package com.spring.ex01;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class test implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return new ModelAndView("index.jsp");
	}
	
}
