package com.myspring.pro27.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.pro27.member.vo.MemberVO;

public interface MemberController {
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse reponse) throws Exception;
	public ModelAndView removeMember(String id, HttpServletRequest request, HttpServletResponse reponse) throws Exception;
	public ModelAndView addMember(MemberVO member, HttpServletRequest request, HttpServletResponse reponse) throws Exception;
	public ModelAndView modifyMember(MemberVO member, HttpServletRequest request, HttpServletResponse reponse) throws Exception;
	public ModelAndView login(MemberVO member, RedirectAttributes rAttr, HttpServletRequest request, HttpServletResponse reponse) throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse reponse) throws Exception;
}
