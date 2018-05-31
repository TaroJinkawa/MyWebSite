<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>アイテム情報詳細参照</title>
  <link rel="stylesheet" type="text/css" href="css/css3/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/css3/origin/common.css">
</head>

<body>
  <!--header---------------------->
  <header>
    <div class="wrapper">
      <div class="main">
        <div align="right"><font color="white"><h5>${userInfo.name}さん</h5></font></div>
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

      <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">アイテム情報詳細参照</font></font>
    </center></h2>
  </div>
  <!--title---------------------->
  <!--idbox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-6">アイテムID</label>
      <label class="col-sm-6">${itemData.id}</label>
    </form>
  </div>
  <!--idbox---------------------->
  <!--idbox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-6">カテゴリー</label>
      <label class="col-sm-6">${categoryname.name}</label>
    </form>
  </div>
  <!--idbox---------------------->
  <!--idbox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-6">ブランド</label>
      <label class="col-sm-6">${itemData.brand}</label>
    </form>
  </div>
  <!--idbox---------------------->
  <!--namebox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-6">アイテム名</label>
      <label class="col-sm-6">${itemData.name}</label>
    </form>
  </div>
  <!--namebox---------------------->
  <!--birthdaybox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-6">販売価格</label>
      <label class="col-sm-6">${itemData.price}円</label>
    </form>
  </div>
  <!--birthdaybox---------------------->
  <!--birthdaybox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-6">アイテム説明</label>

      <label class="col-sm-6">${itemData.detail}</label>
    </form>
  </div>
  <!--birthdaybox---------------------->
  <!--Registrationbox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-6">イメージ</label>
      <label class="col-sm-6"><img src="images/item/${itemData.fileName}" class="img-responsive"></label>
    </form>
  </div>
  <!--Registrationbox---------------------->
  <!--Registrationbox---------------------->
  <div class="newuser-area">
    <form class="form-inline">
      <label class="col-sm-6">イメージアドレス</label>
      <label class="col-sm-6">${itemData.fileName}</label>
    </form>
  </div>
  <!--Registrationbox---------------------->
  <!--updatebox---------------------->
  <br>
  <!--return---------------------->
  <div style="margin-left:20px;" ><a href="ItemListServlet"><u><font color="red">戻る</font></u></a></div>
  <!--return---------------------->

</body>

</html>
