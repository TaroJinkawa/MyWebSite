<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>アイテム一覧</title>
  <link rel="stylesheet" type="text/css" href="css/css3/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/css3/origin/common.css">
</head>
  <!-------------------------------------------->
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
  <div style="margin-left:20px;" ><a href="SelectServlet"><u><font color="red">戻る</font></u></a></div>
  <!--title---------------------->
  <div>
    <br>
    <h2><center>

      <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">アイテム一覧</font></font>
    </center></h2>
  </div>
  <!--title---------------------->
  <div class="free-area">
    <div align="right">
      <a href="NewItemServlet"><u><font color="red">アイテム新規登録</font></u></a>
    </div>
  </div>
  <!--idbox---------------------->
  <!--idbox---------------------->
<form action="ItemListServlet"method="post">
  <div class="list-area">
    <div class="form-inline">
      <label class="col-sm-3">アイテムカテゴリー</label>
      <select class="selecter col-md-9" name="categoryId" id="pref">
        <option value="">選択...</option>
        <option value="1">デッキ</option>
        <option value="2">トラック</option>
        <option value="3">デッキテープ</option>
        <option value="4">ビス</option>
        <option value="5">ウィール</option>
        <option value="6">ベアリング</option>

      </select>
    </div>
  </div>
  <!--userbox---------------------->
  <div class="list-area">
    <div class="form-inline">
      <label class="col-sm-3">ブランド</label>
      <input type="id" name="brand" class="form-control col-sm-9" placeholder="ブランド" autofocus="" >
    </div>
  </div>
  <div class="list-area">
    <div class="form-inline">
      <label class="col-sm-3">アイテム名</label>
      <input type="id" name="name" class="form-control col-sm-9" placeholder="アイテム名" autofocus="" >
    </div>
  </div>
  <!--yaerbox---------------------->
  <div class="list-area">
    <div class="form-inline">
      <label class="col-sm-3">販売価格</label>
      <input type="text" name="price1" class="form-control col-sm-4" autofocus="" >
      <p class="col-sm-1"> 〜 </p>
      <input type="text" name="price2" class="form-control col-sm-4" autofocus="" >
    </div>
  </div>
  <!--searchbuttan---------------------->
  <div class="list-area">

      <p><div align="right">
        <button type="submit" class="btn btn-primary  form-control col-sm-4" value="送信する">検索</button>
      </div></p>

  </div>
  </form>
  <!--line ---------------------->
  <Hr Width="95%" >
    <!--line ---------------------->
    <div class="list-area">
      <table class="table table-striped table-bordered table-hover　table-condensed">
        <thead>
          <tr>
            <th Width="15%"><center>アイテムカテゴリ</center></th>
            <th Width="15%"><center>ブランド</center></th>
            <th Width="40%"><center>アイテム名</center></th>
            <th Width="10%"><center>販売価格</center></th>
            <th Width="20%"></th>
          </tr>
        </thead>
          <!-------------------------------------------->
        <tbody>
                 <c:forEach var="item" items="${itemList}" >
          <tr >

           <c:if test="${item.categoryId == '1'}">
        <td>デッキ</td>
        </c:if>
        <c:if test="${item.categoryId == '2'}">
        <td>トラック</td>
        </c:if>
        <c:if test="${item.categoryId == '3'}">
        <td>デッキテープ</td>
        </c:if>
        <c:if test="${item.categoryId == '4'}">
        <td>ビス</td>
        </c:if>
        <c:if test="${item.categoryId == '5'}">
        <td>ウィール</td>
        </c:if>
        <c:if test="${item.categoryId == '6'}">
        <td>ベアリング</td>
        </c:if>
        <td>${item.brand}</td>
            <td>${item.name}</td>
            <td>${item.price}円</td>
            <td><center>


              <a href="ItemDataServlet?id=${item.id}"><button type="button" class="btn btn-primary btn-sm">詳細</button></a>
              <a href="ItemUpdateServlet?id=${item.id}"><button type="button" class="btn btn-success btn-sm">更新</button></a>
              <a href="ItemDeleteServlet?id=${item.id}"><button type="button" class="btn btn-danger btn-sm">削除</button></a>

          </center></td>
          </tr>
          </c:forEach>
        </tbody>
          <!-------------------------------------------->
      </table>
    </div>
      <!-------------------------------------------->
  </body>

  </html>
