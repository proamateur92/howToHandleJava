package com.spring.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.spring.member.vo.MemberVO;

public interface MemberController {
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse reponse) throws Exception;
	public ModelAndView removeMember(String id, HttpServletRequest request, HttpServletResponse reponse) throws Exception;
	public ModelAndView addMember(MemberVO member, HttpServletRequest request, HttpServletResponse reponse) throws Exception;
	public ModelAndView modifyMember(MemberVO member, HttpServletRequest request, HttpServletResponse reponse) throws Exception;
}
