package com.myspring.pro28.ex02;

import java.io.File;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.coobird.thumbnailator.Thumbnails;

@Controller
public class FileDownController {
	private static String CURR_IMAGE_REPO_PATH = "c:\\spring\\image_repo";
	
	@RequestMapping("/download")
	public void download(@RequestParam("imageFileName") String imageFileName, 
						HttpServletResponse response) throws Exception {
		OutputStream out = response.getOutputStream();
		String filePath = CURR_IMAGE_REPO_PATH + "\\" + imageFileName;
		File image = new File(filePath);
		int lastIndex = imageFileName.lastIndexOf(".");
		String fileName = imageFileName.substring(0, lastIndex);
		File thumbnail = new File(CURR_IMAGE_REPO_PATH+"\\"+"thumbnail"+"\\"+fileName+".png");
		if (image.exists()) {
//			thumbnail.getParentFile().mkdirs(); thumbnail 폴더에 다운로드 한 뒤 썸네일 출력
//			Thumbnails.of(image).size(50, 50).outputFormat("png").toFile(thumbnail);
			Thumbnails.of(image).size(50, 50).outputFormat("png").toOutputStream(out); // thubnail와 같은 타 폴더에 다운로드하지 않고 썸네일 바로 출력
		} else {
			return;
		}
		
//		FileInputStream in = new FileInputStream(thumbnail);	// 생성된 썸네일 파일을 브라우저로 전송
		byte[] buffer = new byte[1024*8];
//		while(true) {
//			int count = in.read(buffer);
//			if (count==-1)
//				break;
//			out.write(buffer, 0, count);
			out.write(buffer);
//		}
//		in.close();
		out.close();
	}
}
