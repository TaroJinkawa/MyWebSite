<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>ユーザ情報詳細参照</title>
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

      <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ユーザ情報詳細参照</font></font>
    </center></h2>
  </div>
<!--title---------------------->
<!--idbox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-5">ログインID</label>
      <label class="col-sm-7">${userData.loginId}</label>
    </form>
  </div>
<!--idbox---------------------->
<!--namebox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-5">ユーザ名</label>
      <label class="col-sm-7">${userData.name}</label>
    </form>
  </div>
<!--namebox---------------------->
<!--birthdaybox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-5">生年月日</label>
      <label class="col-sm-7">${birthDate}</label>
    </form>
  </div>
<!--birthdaybox---------------------->
<!--Registrationbox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-5">登録日時</label>
      <label class="col-sm-7">${userData.createDate}</label>
    </form>
  </div>
<!--Registrationbox---------------------->
<!--updatebox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-5">更新日時</label>
      <label class="col-sm-7">${userData.updateDate}</label>
    </form>
  </div>
<!--updatebox---------------------->
<br>
<div class="list-area">
  <table class="table table-striped table-bordered table-hover　table-condensed">
      <thead>
          <tr>
              <th Width="33%"><center>購入日時</center></th>
              <th Width="33%"><center>配送方法</center></th>
              <th Width="33%"><center>合計金額</center></th>

          </tr>
      </thead>
      <tbody>
       <c:forEach var="buy" items="${buyList}">
          <tr >
            <td>${buy.buyDate}</td>
           <c:if test="${buy.deliveryId == 1}">
                          <td>通常配送</td>
                          </c:if>
                          <c:if test="${buy.deliveryId == 2}">
                          <td>お急ぎ便</td>
                          </c:if>
                          <c:if test="${buy.deliveryId == 3}">
                          <td>店頭受け取り</td>
                          </c:if>
            <td>${buy.totalPrice}円</td>

          </tr>
          </c:forEach>

    </tbody>
</table>
</div>
<!--return---------------------->
  <div style="margin-left:20px;" ><a href="UserListServlet"><u><font color="red">戻る</font></u></a></div>
<!--return---------------------->

</body>

</html>
