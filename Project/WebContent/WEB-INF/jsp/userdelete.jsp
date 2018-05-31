<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>ユーザ削除確認</title>
  <link rel="stylesheet" type="text/css" href="css/css2/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/css2/origin/common.css">
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
      <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ユーザ削除確認</font></font>
    </center></h2>
  </div>
<!--title---------------------->
<!--massage---------------------->
  <div><center>
    <p style="margin-left:30px;">ログインID:${userData.loginId}<br>を本当に削除してよろしいでしょうか。</p>
    </center>
  </div>
<!--massage--------------------->
  <br>
<!--button--------------------->
  <center>
    <form class="delete" action="UserDeleteServlet" method="post">
  <input type="hidden" name="id" value="${userId}">
    <div class="delete-area">
      <a href="UserListServlet"><button type="button" class="btn btn-primary col-sm-3" >キャンセル</button></a>
      <button type="submit" class="btn btn-primary col-sm-3" value="送信する">OK</button>
    </div>
  </form>
  </center>
<!--button--------------------->
</body>

</html>
