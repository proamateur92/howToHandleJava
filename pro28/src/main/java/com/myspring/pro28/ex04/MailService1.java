package com.myspring.pro28.ex04;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service("mailService1")
public class MailService1 {

	@Autowired
	private JavaMailSender mailSender;	// mail-context.xml에서 설정한 빈을 자동적으로 주입
	
	@Async
	public void sendMail(String to, String subject, String body) {
		MimeMessage message = mailSender.createMimeMessage();
		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setSubject(subject);
			messageHelper.setTo(to);
			messageHelper.setFrom("im_u440k@naver.com", "이동복");
			messageHelper.setText(body,true);
			mailSender.send(message);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
