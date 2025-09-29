<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<main>
  <h2 style="color:#333;">메인 페이지</h2>
  <p>안녕하세요! 👋 봉사활동 관리 시스템에 오신 것을 환영합니다.</p>

  <section style="margin-top:20px; display:grid; grid-template-columns:repeat(auto-fit, minmax(250px, 1fr)); gap:20px;">
    <div style="background:white; padding:20px; border-radius:12px; box-shadow:0 4px 10px rgba(0,0,0,0.1);">
      <h3>회원가입</h3>
      <p>새로운 사용자는 회원가입을 진행하세요.</p>
      <a href="register.jsp" style="display:inline-block; margin-top:10px; padding:10px 15px; background:#2575fc; color:white; border-radius:8px; text-decoration:none;">가입하기</a>
    </div>

    <div style="background:white; padding:20px; border-radius:12px; box-shadow:0 4px 10px rgba(0,0,0,0.1);">
      <h3>정보수정</h3>
      <p>기존 회원은 정보를 수정할 수 있습니다.</p>
      <a href="update.jsp" style="display:inline-block; margin-top:10px; padding:10px 15px; background:#6a11cb; color:white; border-radius:8px; text-decoration:none;">수정하기</a>
    </div>
  </section>
</main>