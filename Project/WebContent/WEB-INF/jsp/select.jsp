<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>管理者専用ページ</title>
  <link rel="stylesheet" type="text/css" href="css/css2/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/css2/common.css">
  <style>
  body {
    background-color: #FFFFAA;
  }
</style>
  <!-------------------------------------------->
</head>
  <!-------------------------------------------->
<body>
  <header>
    <div class="wrapper">
      <div class="main">
        <div align="right"><h4><font color="red">${userInfo.name}</font>さん</h4></div>
      </div>
      <div class="side">
        <div align="right"><a href="LogoutServlet"><u><font color="red">ログアウト</font></u></a></div>
      </div>
    </div>
  </header>
  <center>
    <!--title------------------------------------------------------------------------------------>
    <div>
      <h2>
        <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">管理者専用ページ</font></font>
      </h2>
    </div>
    <!--title------------------------------------------------------------------------------------>
    <div>

        <p>
          <a href="UserListServlet"><button type="button" class="btn btn-primary btn-lg" value="送信する">ユーザ一覧</button></a>
        </p>


        <p>
          <a href="ItemListServlet"><button type="button" class="btn btn-success btn-lg" value="送信する">アイテム一覧</button></a>
        </p>

    </div>
      <!-------------------------------------------->
  </center>
</body>
</html>
