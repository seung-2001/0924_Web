<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>봉사활동 관리</title>
  <style>
    body { margin: 0; font-family: 'Segoe UI', sans-serif; background:#f5f6fa; }
    header { background: linear-gradient(135deg, #6a11cb, #2575fc); color: white; padding: 20px; text-align: center; }
    header h1 { margin: 0; font-size: 28px; }
    nav { margin-top: 10px; }
    nav a {
      color: white; text-decoration: none; margin: 0 15px;
      font-weight: bold; transition: color 0.3s;
    }
    nav a:hover { color: #ffd32a; }
    main { padding: 30px; min-height: 70vh; }
    footer { background: #2c3e50; color: #ecf0f1; text-align: center; padding: 15px; }
  </style>
</head>
<body>
  <header>
    <h1>봉사활동 관리 시스템</h1>
    <nav>
      <a href="index.jsp">홈</a>
      <a href="register.jsp">회원가입</a>
      <a href="update.jsp">정보수정</a>
    </nav>
  </header>