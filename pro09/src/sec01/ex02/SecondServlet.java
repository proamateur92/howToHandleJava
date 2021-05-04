package sec01.ex02;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/second")
public class SecondServlet extends HttpServlet{
	public void init() {
		System.out.println("intit 메서드 호출");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		String user_address = request.getParameter("user_address");
		out.print("<html><body>");
		if(user_id!=null&&user_id.length()!=0) {
			out.print("이미 로그인 상태입니다!!<br><br>");
			out.print("첫 번째 서블릿에서 넘겨준 아이디: " + user_id +"<br>");
			out.print("첫 번째 서블릿에서 넘겨준 비밀번호: " + user_pwd +"<br>");
			out.print("첫 번째 서블릿에서 넘겨준 주소: " + user_address +"<br>");
			out.print("</html></body>");
		} else {
			out.print("로그인하지 않았습니다.<br><br>");
			out.print("다시 로그인하세요!!<br>");
			out.print("<a href='/pro09/login.html'>로그인 창으로 이동하기</a>");
		}
	}
	
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}
}
