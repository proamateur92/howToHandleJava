package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/json3")
public class JsonServlet3 extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
				doHandle(request, response);
			}
			protected void doPost(HttpServletRequest request, HttpServletResponse response) 
					throws ServletException, IOException{
				doHandle(request, response);
			}
			protected void doHandle(HttpServletRequest request, HttpServletResponse response) 
					throws ServletException, IOException{
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=utf-8");
				PrintWriter write = response.getWriter();
				
				JSONObject totalObject = new JSONObject();
				JSONArray membersArray = new JSONArray();
				JSONObject memberInfo = new JSONObject();
				memberInfo.put("name", "박지성");
				memberInfo.put("age", 25);
				memberInfo.put("gender", "남자");
				memberInfo.put("nickname", "날쌘돌이");
				membersArray.add(memberInfo);
				
				memberInfo = new JSONObject();
				memberInfo.put("name", "김연아");
				memberInfo.put("age", 21);
				memberInfo.put("gender", "여자");
				memberInfo.put("nickname", "피겨여왕");
				membersArray.add(memberInfo);
				
				totalObject.put("members", membersArray);
				
				JSONArray bookArray = new JSONArray();
				JSONObject bookInfo = new JSONObject();
				bookInfo.put("title", "자바의정석");
				bookInfo.put("writer", "남궁성");
				bookInfo.put("price", "10000");
				bookInfo.put("genre", "IT");
				bookInfo.put("image", "http://localhost:8090/pro16/image/book_java.jpg");
				bookArray.add(bookInfo);
				
				bookInfo = new JSONObject();
				bookInfo.put("title", "다람쥐의 정석");
				bookInfo.put("writer", "람쥐썬더");
				bookInfo.put("price", "35000");
				bookInfo.put("genre", "animal");
				bookInfo.put("image", "http://localhost:8090/pro16/image/squirrel2.jpg");
				bookArray.add(bookInfo);
				
				totalObject.put("books", bookArray);
				String jsonInfo = totalObject.toJSONString();
				System.out.println(jsonInfo);
				write.print(jsonInfo);
			}
}