package sec01.ex01;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

//이터레이터 사용
@WebServlet("/upload.do")
public class FileUpload2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String encoding = "utf-8";
		String dirPath = "c:\\file_repository";
		File file = new File(dirPath);
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(file);
		factory.setSizeThreshold(1024 * 1024);
		ServletFileUpload upload = new ServletFileUpload(factory);

		try {

			List<FileItem> items = upload.parseRequest(request);
			Iterator<FileItem> it = items.iterator();

			while (it.hasNext()) {
				FileItem item = it.next();
				if (item.isFormField()) {
					System.out.println(item.getFieldName() + "=" + item.getString(encoding));
				} else {
					System.out.println("매개변수명: " + item.getFieldName());
					System.out.println("파일명: " + item.getName());
					System.out.println("파일 크기: " + item.getSize());
				
					if(item.getSize() > 0) {
						
						int idx = item.getName().lastIndexOf("\\");
						
						if(idx==-1)
							idx = item.getName().lastIndexOf("/");
					
						String fileName = item.getName().substring(idx+1);
						File uploadFile = new File(dirPath+"\\"+fileName);
						item.write(uploadFile);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
