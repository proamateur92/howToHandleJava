package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/second")
public class SecondServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				String name = request.getParameter("name");
				out.print("<html><body>");
//				out.print("location을 이용한  redirect 실습");
				out.print("name: " + name);
				out.print("<br>");
				out.print("dispatcher을 이용한 redirect 실습");
				out.print("</body></html>");
			}
}
