package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/guguTest")
public class Gugudan extends HttpServlet{

	public void init() {
		System.out.println("init 메서드 실행");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset='UTF-8'");
		PrintWriter out = response.getWriter();
	
		int guguNum = Integer.parseInt(request.getParameter("gugudan_number"));
		
		out.print("<html>");
		out.print("<body>");
		out.print("<table border='1' width='800' align='cent'>");
		out.print("<tr align='center' bgcolor='#FFFF66'>");
		out.print("<td colspan='2'>" + guguNum + "단 출력</td>");
		out.print("</tr>");
		
		for(int i=1; i<10; i++) {
			out.print("<tr align='center'>");
			if(i%2==0) {
				out.print("<td width='400' bgcolor='#ACFA58'>"+ guguNum + "*" + i+ "</td>");
				out.print("<td width='400' bgcolor='#ACFA58'>"+ guguNum*i +"</td>");
			} else {
				out.print("<td width='400' bgcolor='#81BEF7'>"+ guguNum + "*" + i+ "</td>");
				out.print("<td width='400' bgcolor='#81BEF7'>"+ guguNum*i +"</td>");
				
			}
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}	
}
