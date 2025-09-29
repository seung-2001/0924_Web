<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>회원정보 수정</title>
  <style>
    /* 폰트 및 배경 설정 */
    body {
      font-family: "Noto Sans KR", sans-serif;
      background: linear-gradient(135deg, #a1c4fd, #c2e9fb);
      /* body에 flex 대신, 최소한의 높이 설정 */
      min-height: 100vh;
      margin: 0;
      padding: 0;
      overflow-x: hidden; /* 가로 스크롤 방지 */
    }

    /* 전체 레이아웃 컨테이너 - float을 위해 추가 */
    #main-wrapper {
      width: 100%;
      overflow: hidden; /* float 해제 */
    }

    /* 왼쪽 영역 (이미지) */
    #left {
      float: left;
      width: 50%; /* 대략적인 비율 설정 (조절 가능) */
      height: 100vh; /* 뷰포트 높이 꽉 채우기 */
      position: relative;
    }


    #right-area {
      float: left;
      width: 50%; 
      height: 100vh; 
      padding: 0;
      margin: 0;
      box-sizing: border-box; 
    }
    
    #container {
      background: #fff;
      padding: 40px 30px;
      border-radius: 16px;
      box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
      width: 350px;
      text-align: center;
      animation: fadeIn 0.8s ease-in-out;
      margin-left: auto;
      margin-right: 0;
      
      height: 100vh;
      border-radius: 0; 
    }
    
    #container h2 {
      margin-bottom: 20px;
      color: #333;
    }

    /* 폼 요소 스타일 (기존 유지) */
    form {
      display: block;
      margin-bottom: -15px; 
    }
    
    label {
      text-align: left;
      font-size: 14px;
      color: #555;
      margin-top: 15px;
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
      width: 100%;
      box-sizing: border-box;
      display: block;
      margin-bottom: 15px;
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
      width: 100%;
      box-sizing: border-box;
      margin-bottom: 0;
    }
    
    #btn:hover {
      background: #357abd;
    }

    /* 애니메이션 및 메뉴/사이드바 스타일은 기존과 동일하게 유지 */
    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    #left img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      display: block;
    }

    #menuBtn {
      position: absolute;
      top: 15px;
      left: 15px;
      background: rgba(0, 0, 0, 0.6);
      color: #fff;
      border: none;
      padding: 10px 12px;
      border-radius: 6px;
      cursor: pointer;
      font-size: 16px;
      z-index: 20;
    }

    #sidebar {
      position: fixed;
      top: 0;
      left: -250px;
      width: 250px;
      height: 100%;
      background: #2c3e50;
      color: white;
      padding: 60px 20px;
      transition: 0.3s;
      z-index: 19;
    }
    
    #sidebar.active {
      left: 0;
    }
    
    #sidebar ul {
      list-style: none;
      padding: 0;
    }
    
    #sidebar ul li {
      margin: 20px 0;
    }
    
    #sidebar ul li a {
      color: white;
      text-decoration: none;
      font-size: 16px;
    }
    
    #sidebar ul li a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div id="main-wrapper">
    
    <div id="left">
      <button id="menuBtn">☰ 메뉴</button>
      <div id="sidebar">
        <ul>
          <li><a href="../kh/index.jsp">홈</a></li>
          <li><a href="#">내 정보</a></li>
          <li><a href="#">설정</a></li>
          <li><a href="#">로그아웃</a></li>
        </ul>
      </div>
      <div>
      	<img alt="" src="data:image/jpeg;base64,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">
      </div>
    </div>

    <div id="right-area">
        <div id="container">
          <h2>회원정보 수정</h2>
          <form action="update" method="post">
            <label>아이디</label>
            <input type="text" name="userId" readonly value="testUser" />
      
            <label>비밀번호</label>
            <input type="password" name="userPwd" />
      
            <label>이름</label>
            <input type="text" name="userName" value="홍길동" />
      
            <label>이메일</label>
            <input type="email" name="email" value="hong@test.com" />
      
            <input type="submit" value="수정하기" id="btn" />
          </form>
          <jsp:include page="../include/footer.jsp"/>
        </div>
      </div>
    </div>
    
  </div> 
  <script>
    const menuBtn = document.getElementById("menuBtn");
    const sidebar = document.getElementById("sidebar");

    menuBtn.addEventListener("click", () => {
      sidebar.classList.toggle("active");
    });
  </script>
</body>
</html>