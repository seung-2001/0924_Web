package com.kh.java.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.kh.java.member.model.vo.Member;

public class MemberDao {

	public Member login(SqlSession sqlSession, Member member) {
		return sqlSession.selectOne("memberMapper.login", member);
	}

	public int register(SqlSession sqlSession, Member member) {
		return sqlSession.insert("memberMapper.register", member);
	}

}
