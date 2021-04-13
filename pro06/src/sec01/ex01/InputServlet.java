package sec01.ex01;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/input")
public class InputServlet extends HttpServlet{

	@Override
	public void init() {
		System.out.println("input init 메서드 실행");
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("input doGet 메서드 실행");
		String user_id = request.getParameter("user_id");
		String user_password = request.getParameter("user_password");
		String[] subject = request.getParameterValues("subject");
		
		System.out.println(user_id);
		System.out.println(user_password);
		
		for(String sub: subject) {
			System.out.println("과목: "+ sub);
		}
	}
	
	@Override
	public void destroy() {
		System.out.println("input destroy 메서드 실행");
	}
}
