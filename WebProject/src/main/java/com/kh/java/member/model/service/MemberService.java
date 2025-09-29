package com.kh.java.member.model.service;

import org.apache.ibatis.session.SqlSession;

import com.kh.java.common.Template;
import com.kh.java.member.model.dao.MemberDao;
import com.kh.java.member.model.vo.Member;

public class MemberService {

	private MemberDao md = new MemberDao();

	public Member login(Member member) {
		// 로그인 처리 -> DAO에 보내서 있나없네 -> 결과값반환
		// validateMember(member); 비즈니스 로직
		SqlSession sqlSession = Template.getSqlSession();

		Member loginMember = md.login(sqlSession, member);

		sqlSession.close();

		return loginMember;
	}

	public void validateMember(Member member) {
		if (member.getUserId() == null || member.getUserId().isEmpty()) {
			return;
		}
		String pattern = "^[a-zA-Z0-9]{4,20}$";
		if (member.getUserId().matches(pattern)) {
			return;
		}
		// 비밀번호 검증 로직
	}

	public int register(Member member) {
		SqlSession sqlSession = Template.getSqlSession();

		int result = md.register(sqlSession, member);
		if (result > 0) {
			sqlSession.commit();
		}
		sqlSession.close();

		return result;
	}

}
