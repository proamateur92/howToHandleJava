package sec05.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//setContextType utf-8에러
//ServletContext에 바인딩된 데이터는 모든 서블릿(사용자)이 접근할 수 있다.
@WebServlet("/cset")
public class SetServletContext extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException{
		response.setContentType("text/html;charset=urf-8");
		PrintWriter out = response.getWriter();
		ServletContext context = getServletContext();
		List member = new ArrayList();
		member.add("edison");
		member.add(30);
		context.setAttribute("member", member);
		out.print("<html><body>");
		out.print("edison and 30");
		out.print("</html></body>");
	}
	
}
