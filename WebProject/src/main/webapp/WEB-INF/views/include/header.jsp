<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>어서와 웰컴</title>

<!-- Bootstrap & jQuery -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet'>

<style>
body { margin:0; font-family: 'Montserrat', sans-serif; background:#f5f6fa; }
.navbar-nav .nav-item .nav-link { font-weight: 600; }
.dropdown:hover > .dropdown-menu { display: block; }
</style>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
  <div class="container" >
    <a class="navbar-brand" href="#">
    	<div></div>
      <img class="img-fluid" src="resources/img/logo.png" alt="로고" style="width:130px; height:130px;">
    </a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive">
      메뉴 <i class="fas fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav text-uppercase ml-auto">
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">HOME</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">공지사항</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">봉사리스트</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">봉사게시판</a></li>
        <c:choose>
          <c:when test="${empty sessionScope.userInfo}">
            <li class="nav-item"><a class="nav-link js-scroll-trigger" data-toggle="modal" data-target="#log-in">로그인</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="register">회원가입</a></li>
          </c:when>
          <c:otherwise>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="update">정보수정</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="logout" onclick="return confirm('진짜로 로그아웃 하려고?')">로그아웃</a></li>
          </c:otherwise>
        </c:choose>
      </ul>
    </div>
  </div>
</nav>
<br><br><br>

<!-- 로그인 Modal-->
<div class="modal fade" id="log-in">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title"><span style="color: #52b1ff;">KH</span> 로그인</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form action="login" method="post" id="signInForm">
          <div class="form-group">
            <label>아이디</label>
            <input type="text" name="userId" class="form-control" maxlength="15" required placeholder="최대 15자">
          </div>
          <div class="form-group">
            <label>비밀번호</label>
            <input type="password" name="userPwd" class="form-control" maxlength="20" required placeholder="최소 8자">
          </div>
          <button type="submit" class="btn btn-primary btn-block">로그인</button>
        </form>
      </div>
    </div>
  </div>
</div>
