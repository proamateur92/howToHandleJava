package com.spring.ex01;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class PersonTest {

	public static void main(String args[]) {
		BeanFactory factory = new XmlBeanFactory(new FileSystemResource("person.xml")); // 실행시 person.xml을 읽어 들여 빈을 생성
		PersonService person = (PersonService)factory.getBean("personService"); // id가 personService인 빈은 가져온다
		// PersonService person = new PersonServiceImpl(); > 더 이상 자바 코드에서 객체를 직접 생성하지 않아도 된다
		person.sayHello();
	}
}
