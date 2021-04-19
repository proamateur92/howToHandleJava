package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginTest2")
public class LoginTest2 extends HttpServlet{
	public void init() {
		System.out.println("init 메서드 실행");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException{
		System.out.println("doPost 메서드 실행");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		System.out.println("id: " + id);
		System.out.println("password: " + pw);
		
		if(id.equals("admin")) {
			out.print("<html>");
			out.print("<body>");
			out.print("<font size='14'>관리자님!! 로그인 하셨습니다!!!!</font><br>");
			out.print("<input type='button' value='회원정보 수정하기'><input type='button' value='회원정보 삭제하기'>");
			out.print("</body>");
			out.print("</html>");
		} else {
			out.print("<html>");
			out.print("<body>");
			out.print("아이디를 입력하세요!!!!!!!");
			out.print("<br>");
			out.print("<a href='http://localhost:8090/pro06/test01/login.html'> 로그인 창으로 이동 </a>");
			out.print("</body>");
			out.print("</html>");
		}
		
	}
	
	public void destroy() {
		System.out.println("destroy 메서드 실행");
	}
}
