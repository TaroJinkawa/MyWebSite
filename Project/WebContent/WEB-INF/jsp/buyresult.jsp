<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/common.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <title>注文確定</title>
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
        <div class="navbar-brand"><span class="glyphicon glyphicon-tree-conifer" aria-hidden="true"></span>CustomSkateboard</div>
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
  <br>
  <br>
    <!-------------------------------------------->


  <div class="container">
    <div class="newuserbox">
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-default">
            <div class="panel-body">
              <div class="form-group">
                <center><h1>注文確定</h1></center>
                <br>
                <p>この度はご注文ありがとうございました。またのご利用をお待ちしております。</p>
              </div>
                <!-------------------------------------------->
              <div class="table-responsive">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th class="col-md-6">注文日時</th>
                      <th class="col-md-3">配送方法</th>
                      <th class="col-md-3">合計金額</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><h4>${buydata.buyDate}</h4></td>
                      <td><h4>${deliverydata.name}</h4></td>
                      <td><h4>${buydata.totalPrice}円</h4></td>
                    </tr>
                  </tbody>
                </table>
              </div>
                <!-------------------------------------------->
            </div>
          </div>
        </div>
      </div>
    </div>
      <!-------------------------------------------->
    <center>
      <a href="UserDetailServlet?userid=${userInfo.id}"><button class="blue_btn"><h3>ユーザ詳細</h3></button></a>
      <a href="LogoutServlet"><button class="square_btn"><h3>ログアウト</h3></button></a>
    </center>
      <!-------------------------------------------->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
  </html>
