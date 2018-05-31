<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>ユーザ一覧</title>
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
<div style="margin-left:20px;" ><a href="SelectServlet"><u><font color="red">戻る</font></u></a></div>
<!--title---------------------->
  <div>
    <br>
    <h2><center>

      <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ユーザ一覧</font></font>
    </center></h2>
  </div>
<!--title---------------------->
<form class="converter" action="UserListServlet" method="post">
<!--idbox---------------------->
  <div class="list-area">
    <div class="form-inline">
      <label class="col-sm-3">ログインID</label>
      <input type="id" class="form-control col-sm-9" name="loginId" placeholder="ログインID" autofocus="" >
    </div>
  </div>
<!--idbox---------------------->
<!--userbox---------------------->
  <div class="list-area">
    <div class="form-inline">
      <label class="col-sm-3">ユーザー名</label>
      <input type="id" class="form-control col-sm-9" name="name" placeholder="ユーザー名" autofocus="" >
    </div>
  </div>
<!--userbox---------------------->
<!--yaerbox---------------------->
<div class="list-area">
  <div class="form-inline">
    <label class="col-sm-3">生年月日</label>
    <input type="date" class="form-control col-sm-4" name="birthDate1" autofocus="" >
    <p class="col-sm-1"> 〜 </p>
    <input type="date" class="form-control col-sm-4" name="birthDate2" autofocus="" >
  </div>
</div>
<!--yaerbox---------------------->
<!--searchbuttan---------------------->
<div class="list-area">
  <p><div align="right">
    <button type="submit" class="btn btn-primary  form-control col-sm-4" value="送信する">検索</button>
  </div>
</div>
<!--searchbuttan---------------------->
</form>
<!--searchbuttan---------------------->
<!--line ---------------------->
<Hr Width="95%" >
<!--line ---------------------->


<div class="list-area">
  <table class="table table-striped table-bordered table-hover　table-condensed">
      <thead>
          <tr>
              <th Width="25%"><center>ログインID</center></th>
              <th Width="25%"><center>ユーザー名</center></th>
              <th Width="25%"><center>生年月日</center></th>
              <th Width="25%"></th>
          </tr>
      </thead>
      <tbody>
       <c:forEach var="user" items="${userList}" >
          <tr >
            <td>${user.loginId}</td>
            <td>${user.name}</td>
            <td>${user.formatDate}</td>
            <td><center>


              <a href="UserDataServlet?id=${user.id}"><button type="button" class="btn btn-primary btn-sm">詳細</button></a>
              <a href="UserUpdateServlet?id=${user.id}"><button type="button" class="btn btn-success btn-sm">更新</button></a>
              <a href="UserDeleteServlet?id=${user.id}"><button type="button" class="btn btn-danger btn-sm">削除</button></a>

          </center></td>
          </tr>
          </c:forEach>

    </tbody>
</table>
</div>


<!--searchbox---------------------->
</body>

</html>
