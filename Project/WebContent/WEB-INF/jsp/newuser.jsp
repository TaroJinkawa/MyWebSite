<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/common.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-------------------------------------------->
  <title>新規登録</title>
</head>
<body class="bgbd" background="images/beginner.jpg">
    <!-------------------------------------------->
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <div class="navbar-brand">
          <span class="glyphicon glyphicon-tree-conifer" aria-hidden="true"></span>
          CustomSkateboard
        </div>
      </div>
      <div class="collapse navbar-collapse" id="navbarEexample7">
        <p class="navbar-text navbar-right">ようこそゲストさん</p>
      </div>
    </div>
  </nav>
    <!-------------------------------------------->
  <br>
  <br>
  <br>
  <c:if test="${errMsg != null}" >
	    <div class="alert alert-danger" role="alert">
		  ${errMsg}
		</div>
	</c:if>
  <br>
  <br>
  <br>


    <!-------------------------------------------->
  <div class="container">
    <div class="newuserbox">
      <div class="row">
        <div class="col-md-12">
          <div class="well">
              <!-------------------------------------------->
            <form id="loginForm" method="POST" action="NewUserServlet">
              <div class="form-group">
                <label for="username" class="control-label">ユーザーID</label>
                <input type="text" class="form-control" id="userId" name="loginId" value="" required="required" title="Please enter you username">
              </div>
              <div class="form-group">
                <label for="password" class="control-label">パスワード</label>
                <input type="password" class="form-control" id="password" name="password" value="" required="required" title="Please enter your password">
              </div>
              <div class="form-group">
                <label for="password" class="control-label">パスワード確認</label>
                <input type="password" class="form-control" id="password" name="password2" value="" required="required" title="Please enter your password">
              </div>
              <div class="form-group">
                <label for="username" class="control-label">ユーザー名</label>
                <input type="text" class="form-control" id="username" name="name" value="" required="required" title="Please enter you username">
              </div>
              <div class="form-group">
                <label for="username" class="control-label">生年月日</label>
                <input type="date" class="form-control" name="birthDate" required>
              </div>
              <button type="submit" class="btn btn-info btn-block">登録</button>
            </form>
              <!-------------------------------------------->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
  <!-------------------------------------------->
<center><button type="button" class="btn btn-danger" onclick="history.back()">戻る</button></center>
  <!-------------------------------------------->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
