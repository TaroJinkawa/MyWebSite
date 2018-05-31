<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>アイテム情報更新</title>
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
  <div>
    <br>
    <h2><center>

      <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">アイテム情報更新</font></font>
    </center></h2>
  </div>
<!--title---------------------->
  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">アイテムID</label>
      <label class="col-sm-7">${itemData.id}</label>
    </div>
  </div>
<!--idbox---------------------->
<form action="ItemUpdateServlet" method="post">
<input type="hidden" name="id" value="${userid}">
<div class="newuser-area">
  <div class="form-inline">
    <label class="col-sm-5">アイテムカテゴリー</label>
      <select class="col-md-7" id="pref" name="categoryId" required>
      <c:if test="${categoryname.name == 'デッキ'}">
        <option value="1" selected>デッキ</option>
        <option value="2">トラック</option>
        <option value="3">デッキテープ</option>
        <option value="4">ビス</option>
        <option value="5">ウィール</option>
        <option value="6">ベアリング</option>
        </c:if>
         <c:if test="${categoryname.name == 'トラック'}">
        <option value="1">デッキ</option>
        <option value="2" selected>トラック</option>
        <option value="3">デッキテープ</option>
        <option value="4">ビス</option>
        <option value="5">ウィール</option>
        <option value="6">ベアリング</option>
        </c:if>
        <c:if test="${categoryname.name == 'デッキテープ'}">
        <option value="1">デッキ</option>
        <option value="2">トラック</option>
        <option value="3" selected>デッキテープ</option>
        <option value="4">ビス</option>
        <option value="5">ウィール</option>
        <option value="6">ベアリング</option>

        </c:if>
        <c:if test="${categoryname.name == 'ビス'}">
        <option value="1">デッキ</option>
        <option value="2">トラック</option>
        <option value="3">デッキテープ</option>
        <option value="4" selected>ビス</option>
        <option value="5">ウィール</option>
        <option value="6">ベアリング</option>

        </c:if>
         <c:if test="${categoryname.name == 'ウィール'}">
        <option value="1">デッキ</option>
        <option value="2">トラック</option>
        <option value="3">デッキテープ</option>
        <option value="4">ビス</option>
        <option value="5" selected>ウィール</option>
        <option value="6">ベアリング</option>
        </c:if>
        <c:if test="${categoryname.name == 'ベアリング'}">
        <option value="1">デッキ</option>
        <option value="2">トラック</option>
        <option value="3">デッキテープ</option>
        <option value="4">ビス</option>
        <option value="5">ウィール</option>
        <option value="6" selected>ベアリング</option>
        </c:if>


      </select>
  </div>
</div>
<!--passbox---------------------->
<div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">ブランド</label>
      <input type="text" name="brand" class="form-control col-sm-7" placeholder="アイテム名" value="${itemData.brand}" required="" autofocus="" >
    </div>
  </div>

  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">アイテム名</label>
      <input type="text" name="name" class="form-control col-sm-7" placeholder="アイテム名" value="${itemData.name}" required="" autofocus="" >
    </div>
  </div>
<!--pass2box---------------------->
  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">アイテム説明</label>
      <textarea rows="4" name="detail" class="col-sm-7">${itemData.detail}</textarea>
    </div>
  </div>
<!--namebox---------------------->
  <div class="newuser-area">
    <div class="form-inline">
      <label class="col-sm-5">アイテム価格</label>
      <input type="text" name="price" class="form-control col-sm-7" value="${itemData.price}"  required="" autofocus="" >
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
    <button type="submit" class="btn btn-primary  form-control col-sm-4" value="送信する">更新</button>
  </center></div></p>
</div>
</form>
<!--updatebuttan---------------------->
  <div style="margin-left:20px;" ><a href="ItemListServlet"><u><font color="red">戻る</font></u></a></div>
<!--return---------------------->

</body>

</html>
