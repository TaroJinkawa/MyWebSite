<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/common.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-------------------------------------------->
  <title>ログイン画面</title>
</head>
  <!-------------------------------------------->
<body class="bgbd" background="images/poolskate.jpg">
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
          <!-------------------------------------------->
        <div class="navbar-brand">
          <p><span class="glyphicon glyphicon-tree-conifer"></span>CustomSkateboard</p>
        </div>
      </div>
          <!-------------------------------------------->
    <div class="collapse navbar-collapse" id="navbarEexample7">
      <p class="navbar-text navbar-right">ようこそゲストさん</p>
    </div>
          <!-------------------------------------------->
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
    <br>
    <br>
    <br>


      <!-------------------------------------------->
    <div class="container">
      <div class="box">
        <div class="row">
            <!-------------------------------------------->
          <div class="col-md-6">
            <div class="well">
              <form id="loginForm" method="POST" action="MainServlet">
                <div class="form-group">
                  <label for="username" class="control-label">ユーザーID</label>
                  <input type="text" class="form-control" id="username" name="loginId" value="" required="" title="Please enter you username">
                </div>
                <div class="form-group">
                  <label for="password" class="control-label">パスワード</label>
                  <input type="password" class="form-control" id="password" name="password" value="" required="" title="Please enter your password">
                </div>
                <button type="submit" class="btn btn-success btn-block">ログイン</button>
              </form>
            </div>
          </div>
            <!-------------------------------------------->
          <div class="col-md-6">
            <h2><Font Color="#FFFFFF">あなただけのカスタムスケートボード</Font></h2>
            <ul class="list-unstyled">
              <li><Font Color="#FFFFFF"> 様々なパーツの中から好きなパーツをセレクト。</Font></li>
              <li><Font Color="#FFFFFF">  オリジナルのスケートボードをオーダーできます。</Font></li>
              <br>
            </ul>
            <a href="NewUserServlet" type="button" class="btn btn-info btn-block">新規登録</a>
          </div>
            <!-------------------------------------------->
        </div>
      </div>
    </div>
      <!-------------------------------------------->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
  </html>
