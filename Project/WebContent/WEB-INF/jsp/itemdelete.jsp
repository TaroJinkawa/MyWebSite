<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>アイテム削除確認</title>
  <link rel="stylesheet" type="text/css" href="css/css3/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/css3/origin/common.css">
</head>

<body>
  <!--header---------------------->
  <header>
    <div class="wrapper">
      <div class="main">
        <div align="right"　><font color="white"><h5>${userInfo.name}さん</h5></font></div>
      </div>
      <div class="side">
        <div align="right"><a href="LogoutServlet"><u><font color="red">ログアウト</font></u></a></div>
      </div>
    </div>
  </header>
  <!--header---------------------->
  <!--title---------------------->
  <div>
    <br>
    <h2><center>
      <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">アイテム削除確認</font></font>
    </center></h2>
  </div>

  <!--title---------------------->

  <!--massage---------------------->
  <div><center>
    <p style="margin-left:30px;">アイテムID:${userId}<br>を本当に削除してよろしいでしょうか。</p>
  </center></div>
<!--massage--------------------->
<br>
<!--button--------------------->
<form method="post" class="delete" action="ItemDeleteServlet">
 <input type="hidden" name="id" value="${userId}">
<center>
  <div class="delete-area">
    <a href="ItemListServlet"><button type="button" class="btn btn-primary col-sm-3">キャンセル</button></a>
    <button type="submit" class="btn btn-primary col-sm-3">OK</button>
  </div>
</center>
</form>
<!--button--------------------->
</body>

</html>
