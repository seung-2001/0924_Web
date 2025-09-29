package com.kh.java.member.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.kh.java.member.model.vo.Member;

public class MemberDao {

	public Member login(SqlSession sqlSession, Member member) {
		return sqlSession.selectOne("memberMapper.login", member);
	}

	public int signUp(SqlSession sqlSession, Member member) {
		return sqlSession.insert("memberMapper.signUp", member);
	}

	public int update(SqlSession session, Map<String, String> map) {
		return session.update("memberMapper.update", map);
	}

	public int delete(SqlSession session, Member member) {
		return session.update("memberMapper.delete", member);
	}

	public int updatePwd(SqlSession session, Map<String, String> map) {
		return session.update("memberMapper.updatePwd", map);
	}

}
