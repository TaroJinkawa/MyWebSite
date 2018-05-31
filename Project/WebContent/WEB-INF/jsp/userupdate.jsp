<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>ユーザ情報更新</title>
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
<c:if test="${errMsg != null}" >
	    <div class="alert alert-danger" role="alert">
	    <center>
		  ${errMsg}
		  </center>
		</div>
	</c:if>
<!--title---------------------->
  <div>
    <br>
    <h2><center>

      <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ユーザ情報更新</font></font>
    </center></h2>
  </div>
<!--title---------------------->
<form action="UserUpdateServlet" method="post">
<input type="hidden" name="id" value="${userid}">
<!--idbox---------------------->
  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">ログインID</label>
      <label class="col-sm-7">${userData.loginId}</label>
    </div>
  </div>
<!--idbox---------------------->
<!--passbox---------------------->
  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">パスワード</label>
      <input type="password" name="password" class="form-control col-sm-7" placeholder="パスワード" autofocus="" >
    </div>
  </div>
<!--passbox---------------------->
<!--pass2box---------------------->
  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">パスワード(確認)</label>
      <input type="password" name="password2" class="form-control col-sm-7" placeholder="パスワード(確認)"  autofocus="" >
    </div>
  </div>
<!--pass2box---------------------->
<!--namebox---------------------->
  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">ユーザ名</label>
      <input type="text" name="name" class="form-control col-sm-7" value="${userData.name}"  required="" autofocus="" >
    </div>
  </div>
<!--namebox---------------------->
<!--birthdaybox---------------------->
  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">生年月日</label>
      <input type="date" name="birthDate" class="form-control col-sm-7" value="${userData.birthDate}" required="" autofocus="" >
    </div>
  </div>
<!--birthdaybox---------------------->
<br>
<!--updatebuttan---------------------->
<div class="newuser-area">
  <p><div align="right"><center>
    <button type="submit" class="btn btn-primary  form-control col-sm-4" value="送信する">更新</button>
  </center></div></p>
</div>
</form>
<!--updatebuttan---------------------->
<!--return---------------------->
  <div style="margin-left:20px;" ><a href="UserListServlet"><u><font color="red">戻る</font></u></a></div>
<!--return---------------------->

</body>

</html>
