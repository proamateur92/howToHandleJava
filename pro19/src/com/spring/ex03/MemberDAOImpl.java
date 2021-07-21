package com.spring.ex03;

public class MemberDAOImpl implements MemberDAO{
	private MemberDAO memberDAO;
	
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	public void listMembers() {
		// TODO Auto-generated method stub
		System.out.println("ListMembers 메서드 호출");
		System.out.println("회원정보를 조회합니다.");
	}
	
	
}
