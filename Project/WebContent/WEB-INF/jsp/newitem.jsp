<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>アイテム新規登録</title>
  <link rel="stylesheet" type="text/css" href="css/css3/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/css3/origin/common.css">
</head>
  <!-------------------------------------------->
<body>
  <!--header---------------------->
  <header>
    <div class="wrapper">
      <div class="main">
        <div align="right"　><font color="white"><h5>${userInfo.name}さん</h5></font></div>
      </div>
      <div class="side">
        <div align="right"><a href="LoginServlet"><u><font color="red">ログアウト</font></u></a></div>
      </div>
    </div>
  </header>
<!--header---------------------->
  <div>
    <br>
    <h2><center>
      <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">アイテム新規登録</font></font>
    </center></h2>
  </div>
<!--title---------------------->
<form id="loginForm" method="POST" action="NewItemServlet" >
<!--passbox---------------------->
<div class="newuser-area">
  <div class="form-inline">
    <label class="col-sm-5">アイテムカテゴリー</label>
      <select name="categoryId" class="select col-md-7" id="pref" required>
       <option value="">未選択...</option>
        <option value="1">デッキ</option>
        <option value="2">トラック</option>
        <option value="3">デッキテープ</option>
        <option value="4">ビス</option>
        <option value="5">ウィール</option>
        <option value="6">ベアリング</option>
      </select>
  </div>
</div>
<!--pass2box---------------------->
<div class="newuser-area">
  <div class="form-inline">
    <label class="col-sm-5">ブランド</label>
    <input type="text" name="brand" class="form-control col-sm-7" required="required" autofocus="" >
  </div>
</div>

<div class="newuser-area">
  <div class="form-inline">
    <label class="col-sm-5">アイテム名</label>
    <input type="text" name="name" class="form-control col-sm-7" required="required" autofocus="" >
  </div>
</div>
<!--namebox---------------------->
  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">アイテム説明</label>
      <textarea rows="4" name="detail" class="col-sm-7" required="required"></textarea>
    </div>
  </div>
<!--namebox---------------------->
  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">アイテム価格</label>
      <input type="text" name="price" class="form-control col-sm-7" required="required" autofocus="" >
    </div>
  </div>
<!--namebox---------------------->
<div class="newuser-area">
  <div class="form-inline">
    <label class="col-sm-5">アイテム画像選択</label>
    <input type="file" name="adress" required>
  </div>
</div>
<br>
<!--updatebuttan---------------------->
<div class="newuser-area">

    <p><div align="right"><center>
      <button type="submit" class="btn btn-primary  form-control col-sm-4" value="送信する">登録</button>
    </center></div></p>

</div>
<!--updatebuttan---------------------->
</form>
<!--return---------------------->
  <div style="margin-left:20px;" ><a href="ItemListServlet"><u><font color="red">戻る</font></u></a></div>
<!--return---------------------->
</body>

</html>
