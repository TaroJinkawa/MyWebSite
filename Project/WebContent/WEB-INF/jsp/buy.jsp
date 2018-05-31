<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/common.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <title>オーダー確認</title>
</head>
<body class="bgbd" background="images/setup.jpg"　>
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbarEexample1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="CreateDeckServlet"><span class="glyphicon glyphicon-tree-conifer" aria-hidden="true"></span>CustomSkateboard</a>
      </div>
      <div class="collapse navbar-collapse" id="navbarEexample1">
        <ul class="nav navbar-nav navbar-right">
          <p class="navbar-text">ようこそ　<font color="#CC3333">${userInfo.name}</font>　さん</p>
          <li><a href="UserDetailServlet?userid=${userInfo.id}"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
          <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></span></a></li>
        </ul>
      </div>
    </div>
  </nav>
<!-------------------------------------------->
  <br>
  <br>
  <br>
  <br>
<!-------------------------------------------->
<form action="BuyServlet" method="post">
<input type="hidden" name="userId" value="${userInfo.id}">

<input type="hidden" name="deckPrice" value="${deck.price}">
<input type="hidden" name="trackPrice" value="${track.price}">
<input type="hidden" name="decktapePrice" value="${decktape.price}">
<input type="hidden" name="visPrice" value="${vis.price}">
<input type="hidden" name="wheelPrice" value="${wheel.price}">
<input type="hidden" name="bearingPrice" value="${bearing.price}">

<input type="hidden" name="deckId" value="${deck.id}">
<input type="hidden" name="trackId" value="${track.id}">
<input type="hidden" name="decktapeId" value="${decktape.id}">
<input type="hidden" name="visId" value="${vis.id}">
<input type="hidden" name="wheelId" value="${wheel.id}">
<input type="hidden" name="bearingId" value="${bearing.id}">

  <div class="container">
    <div class="box">
      <div class="row">
        <div class="col-md-12">
          <div class="panel">
            <div class="panel-body">
              <div class="form-group">
                <center>
                  <h2 for="username" class="control-label">オーダー確認</h2>
                </center>
              </div>
              <div class="table-responsive">
                <table class="table table-striped">
  <!-------------------------------------------->
                  <thead>
                    <tr>
                      <th class="col-md-2"></th>
                      <th class="col-md-6">商品名</th>
                      <th class="col-md-2">単価</th>
                      <th class="col-md-2">小計</th>
                    </tr>
                  </thead>
  <!-------------------------------------------->
                  <tbody>
                    <tr>
                      <td><img class="img" src="images/item/${deck.fileName}" alt="Generic placeholder image" width="100" height="100"></td>
                      <td>${deck.name}</td>
                      <td>${deck.price}円</td>
                      <td>${deck.price}円</td>
                    </tr>
                    <tr>
                      <td><img class="img" src="images/item/${track.fileName}" alt="Generic placeholder image" width="100" height="100"></td>
                      <td>${track.name}</td>
                      <td>${track.price}円</td>
                      <td>${track.price}円</td>
                    </tr>
                    <tr>
                      <td><img class="img" src="images/item/${decktape.fileName}" alt="Generic placeholder image" width="100" height="100"></td>
                      <td>${decktape.name}</td>
                      <td>${decktape.price}円</td>
                      <td>${decktape.price}円</td>
                    </tr>
                    <tr>
                      <td><img class="img" src="images/item/${vis.fileName}" alt="Generic placeholder image" width="100" height="100"></td>
                      <td>${vis.name}</td>
                      <td>${vis.price}円</td>
                      <td>${vis.price}円</td>
                    </tr>
                    <tr>
                      <td><img class="img" src="images/item/${wheel.fileName}" alt="Generic placeholder image" width="100" height="100"></td>
                      <td>${wheel.name}</td>
                      <td>${wheel.price}円</td>
                      <td>${wheel.price}円</td>
                    </tr>
                    <tr>
                      <td><img class="img" src="images/item/${bearing.fileName}" alt="Generic placeholder image" width="100" height="100"></td>
                      <td>${bearing.name}</td>
                      <td>${bearing.price}円</td>
                      <td>${bearing.price}円</td>
                    </tr>
  <!-------------------------------------------->
                    <tr>
                      <td></td>
                      <td></td>
                      <td><h4>合計</h4></td>
                      <td><h4>${deck.price + track.price + decktape.price + vis.price + wheel.price + bearing.price }円</h4></td>
                    </tr>
  <!-------------------------------------------->
                    <tr>
                      <td></td>
                      <td></td>
                      <td><h4>配送方法</h4></td>
                      <td><div class="select col s8 offset-s2 ">
                        <select name="delivery_method_id">

                          <option value="1">通常配送(＋500円)</option>

                          <option value="2">お急ぎ便(＋1000円)</option>

                          <option value="3">店頭受取り(＋0円)</option>

                        </select>
                      </div>
                    </td>
                  </tr>
  <!-------------------------------------------->
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
  <!-------------------------------------------->
<div class="text-center">
  <a href="CreateDeckServlet"><button type="button" class="blue_btn"><h3>パーツ選択に戻る</h3></button></a>
  <button type="submit" class="square_btn"><h3>　　注文確定　　</h3></button>
</div>
</form>
</html>
