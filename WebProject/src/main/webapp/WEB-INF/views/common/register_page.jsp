<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>회원가입</title>
  <style>
    body {
      font-family: "Noto Sans KR", sans-serif;
      background: linear-gradient(135deg, #a1c4fd, #c2e9fb);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    #wrapper {
      display: flex;
      align-items: center;
      background: #fff;
      border-radius: 16px;
      box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
      overflow: hidden;
      width: 700px;
      animation: fadeIn 0.8s ease-in-out;
    }

    #left {
      width: 50%;
      height: 100%;
      background: url('') no-repeat center/cover;
    }

    #container {
      width: 50%;
      padding: 40px 30px;
      text-align: center;
    }

    #container h2 {
      margin-bottom: 20px;
      color: #333;
    }

    form {
      display: flex;
      flex-direction: column;
      gap: 15px;
    }

    label {
      text-align: left;
      font-size: 14px;
      color: #555;
      margin-bottom: 5px;
      display: block;
    }

    input[type="text"],
    input[type="password"],
    input[type="email"] {
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 14px;
      transition: border-color 0.3s, box-shadow 0.3s;
    }

    input:focus {
      border-color: #4a90e2;
      box-shadow: 0 0 5px rgba(74, 144, 226, 0.5);
      outline: none;
    }

    #btn {
      padding: 12px;
      border: none;
      border-radius: 8px;
      background: #4a90e2;
      color: #fff;
      font-size: 15px;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s;
    }

    #btn:hover {
      background: #357abd;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
  <div id="wrapper">
    <div id="left"></div>
    <div id="container">
      <h2>회원가입</h2>
      <form action="register" method="post">
        <label>아이디</label>
        <input type="text" name="userId" required />

        <label>비밀번호</label>
        <input type="password" name="userPwd" required />

        <label>이름</label>
        <input type="text" name="userName" />

        <label>이메일</label>
        <input type="email" name="email" />

        <label>주소</label>
        <input type="text" name="address" />

        <button type="submit" id="btn">확인</button>
      </form>
      <jsp:include page="../include/footer.jsp"/>
    </div>
  </div>
</body>
</html>
