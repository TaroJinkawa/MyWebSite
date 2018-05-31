<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/common.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-------------------------------------------->
  <title>ユーザ情報</title>
</head>
<body class="bgbd" background="images/sls.jpg"　>
  <!-------------------------------------------->
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
      <!-------------------------------------------->
      <div class="collapse navbar-collapse" id="navbarEexample1">
        <ul class="nav navbar-nav navbar-right">
          <p class="navbar-text">ようこそ　<font color="#CC3333">${userInfo.name}</font>　さん</p>
          <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a></li>
        </ul>
      </div>
    </div>
  </nav>
  <!-------------------------------------------->
  <br>
  <br>
  <br>
  <c:if test="${errMsg != null}" >
	    <div class="alert alert-danger" role="alert">
		  ${errMsg}
		</div>
	</c:if>
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
              <form id="loginForm" method="POST" action="UserDetailServlet">
				<div class="form-group">
                  <center>
                    <h4 for="username" class="control-label">ID:${userInfo.loginId}</h4>
                  </center>
                </div>
                 <input type="hidden" name="userId" value="${userInfo.id}">
                <div class="form-group">
                  <label for="password" class="control-label">パスワード</label>
                 <input type="password" class="form-control" id="password" name="password"  required="required" title="Please enter your password">
                </div>
                <div class="form-group">
                  <label for="password" class="control-label">パスワード(確認)</label>
                <input type="password" class="form-control" id="password" name="password2"  required="required"title="Please enter your password">
                </div>
                <div class="form-group">
                  <label for="username" class="control-label">ユーザー名</label>
                  <input type="text" class="form-control" id="username" name="username" value="${userdata.name}" required="required" title="Please enter you username">
                </div>
                <div class="form-group">
                  <label for="username" class="control-label">生年月日</label>
                  <input type="date" class="form-control" name="birthDate" value="${userdata.birthDate}" required>
                </div>
                <button  value="送信" type="submit" class="btn btn-info btn-block">更新</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-------------------------------------------->
  <br>
  <!-------------------------------------------->
  <div class="container">
    <div class="box">
      <div class="row">
        <div class="col-md-12">
          <div class="panel">
            <div class="panel-body">
              <form id="loginForm" method="POST" action="UserDetailServlet" novalidate>
                <!-------------------------------------------->
                <div class="form-group">
                  <center>
                    <h3 for="username" class="control-label">オーダー履歴</h3>
                  </center>
                </div>
                <!-------------------------------------------->
                <div class="table-responsive">
                  <table class="table table-striped">
                    <!-------------------------------------------->
                    <thead>
                      <tr>
                        <center><th>詳細</th>
                          <th>注文日</th>
                          <th>配送方法</th>
                          <th>購入金額</th>
                        </center></tr>
                      </thead>
                      <!-------------------------------------------->

                      <tbody>
                      <c:forEach var="buy" items="${buyList}" >
                        <tr>
                          <td>
                          <button type="button" class="btn btn-success" data-toggle="modal" data-target="#product_view${buy.buyId}"><i class="fa fa-search"></i><span class="glyphicon glyphicon-list" aria-hidden="true"></span></button></td>
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

                      <!-------------------------------------------->
                    </table>
                  </div>
                  <!-------------------------------------------->
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-------------------------------------------->
    <c:forEach var="buy" items="${buyList}" >
    <div class="modal fade product_view" id="product_view${buy.buyId}">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
            <div class="table-responsive">
              <table class="table table-striped">
                <!-------------------------------------------->
                <thead>
                  <tr>
                    <center>
                      <th class="col-md-3"></th>
                      <th class="col-md-6"><h3>注文日</h3></th>
                      <th class="col-md-3"><h3>合計金額</h3></th>
                    </center></tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td></td>
                      <td><h3>${buy.buyDate}</h3></td>
                      <td><h3>${buy.totalPrice}円</h3></td>
                    </tr>
                  </tbody>
                  <!-------------------------------------------->
                </table>
              </div>
            </div>
            <div class="modal-body">
              <div class="row">
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th class="col-md-3"></th>
                        <th class="col-md-6">商品名</th>
                        <th class="col-md-3">金額</th>
                      </tr>
                    </thead>
                    <!------------------------------------------2222-->
                    <tbody>
                      <c:forEach var="buyDetail" items="${buy.buytDetails}" >
	                      <tr>
	                        <td><img class="img" src="images/item/${buyDetail.fileName}" alt="Generic placeholder image" width="100" height="100"></td>
	                        <td><h4>${buyDetail.name}</h4></td>
	                        <td><h4>${buyDetail.price}円</h4></td>
	                      </tr>
	                  </c:forEach>

                      <tr>
                        <td></td>
                        <c:if test="${buy.deliveryId == 1}">
                        <td><h4>通常配送</h4></td>
                        <td><h4>500円</h4></td>
                        </c:if>
                        <c:if test="${buy.deliveryId == 2}">
                        <td><h4>お急ぎ便</h4></td>
                        <td><h4>1000円</h4></td>
                        </c:if>
                        <c:if test="${buy.deliveryId == 3}">
                        <td><h4>店頭受け取り</h4></td>
                        <td><h4>0円</h4></td>
                        </c:if>
                      </tr>
                      <!-------------------------------------------->
                    </tbody>
                  </table>
                </div>
              </div>
              <center><a href="#" data-dismiss="modal"><button type="button" class="btn btn-danger">　閉じる　</button></a></center>
            </div>
          </div>
        </div>
      </div>
  </c:forEach>
    <!-------------------------------------------->
    <center><button type="button" class="btn btn-danger" onclick="history.back()">戻る</button></center>
    <!-------------------------------------------->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
  </html>
