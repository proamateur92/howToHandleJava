package com.spring.ex02;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller("loginController")
public class LoginController {

	@RequestMapping(value={"/test/loginForm.do", "/test/loginForm2.do"}, method= {RequestMethod.GET})
	public ModelAndView loginForm(HttpServletRequest request, HttpServletResponse response) 
	throws Exception {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("loginForm");
		return mav;
	}
	
	@RequestMapping(value="/test/login.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) 
	throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav=new ModelAndView();
		mav.setViewName("result");
		String userID=request.getParameter("userID");
		String userName=request.getParameter("userName");
		mav.addObject("userID", userID);
		mav.addObject("userName", userName);
		return mav;
	}

	@RequestMapping(value="/test/login2.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login2(@RequestParam("userID") String userID, // @RequestParam에 jsp에서 전달받는 매개변수와 값은 변수값으로 지정
			@RequestParam(value="userName", required=true) String userName, // @RequestParam required를 생략하면 true, 전달하는 매개변수 없을 때 에러 발생
			@RequestParam(value="email", required=false) String email, // required 값의 false 일 때, 전달하는 매개변수 없을 때 null반환
			HttpServletRequest request, HttpServletResponse response)  
			throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav=new ModelAndView();
		mav.setViewName("result");
		
		/*
		String userID=request.getParameter("userID");
		String userName=request.getParameter("userName");
		*/
		
		System.out.println("uesrID: " +userID);
		System.out.println("uesrName: " +userName);
		System.out.println("email: " +email);
		mav.addObject("userID", userID);
		mav.addObject("userName", userName);
		mav.addObject("email", email);
		return mav;
	}

	@RequestMapping(value="/test/login3.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login3(@RequestParam Map<String,String> info, // @RequestParam을 이용해 Map에 전송된 매개변수 이름을 key, 값을 value로 저장
			HttpServletRequest request, HttpServletResponse response)  
					throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav=new ModelAndView();
		String userID = info.get("userID");
		String userName = info.get("userName");
		System.out.println("uesrID: " +userID);
		System.out.println("uesrName: " +userName);
		mav.addObject("info", info); //@RequestParam에서 설장한 Map이름으로 바인딩
		mav.setViewName("result");
		return mav;
	}

	@RequestMapping(value="/test/login4.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login4(@ModelAttribute("info") LoginVO loginVO, // @RequestParam을 이용해 Map에 전송된 매개변수 이름을 key, 값을 value로 저장
			HttpServletRequest request, HttpServletResponse response)  
					throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav=new ModelAndView();
		System.out.println("uesrID: " + loginVO.getUserID());
		System.out.println("uesrName: " + loginVO.getUserName());
		mav.setViewName("result");
		return mav;
	}

	@RequestMapping(value="/test/login5.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login4(Model model, 
			HttpServletRequest request, HttpServletResponse response)  
					throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav=new ModelAndView();
		model.addAttribute("userID", "hong");
		model.addAttribute("userName", "홍길동");
		mav.setViewName("result");
		return mav;
	}
}
