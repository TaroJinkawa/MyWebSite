<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/common.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-------------------------------------------->
  <title>CREATE DECK</title>
</head>
<!-------------------------------------------->
<body class="bgbd" background="images/boardroom.jpg"　>
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbarEexample1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand"><span class="glyphicon glyphicon-tree-conifer" aria-hidden="true"></span>CustomSkateboard</a>
      </div>
      <!-------------------------------------------->
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
  <!-------------------------------------------->
  <div class="container marketing">
    <center>
      <!-------------------------------------------->
      <div class="row">
        <div class="col-lg-12">
        <c:if test="${deck.id == null}">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal"><i class="fa fa-search"></i></img>
          </c:if>
          <c:if test="${!(deck.id == null)}">
          <img class="img-circle" src="images/item/${deck.fileName}" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal" data-target="#product_view${deck.id}"><i class="fa fa-search"></i></img>
          </c:if>

          <a href="ItemDetailServlet?id=1">
            <h3><Font face="IMPACT" Color="#FFFFFF">DECK</Font></h3>
          </a>
        </div>
      </div>
      <!-------------------------------------------->
      <div>
        <div class="col-lg-6">
        <c:if test="${track.id == null}">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal" ><i class="fa fa-search"></i></img>
          </c:if>
           <c:if test="${!(track.id == null)}">
          <img class="img-circle" src="images/item/${track.fileName}" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal" data-target="#product_view${track.id}"><i class="fa fa-search"></i></img>
          </c:if>
          <a href="ItemDetailServlet?id=2">
            <h3><Font face="IMPACT" Color="#FFFFFF">TRACK</Font></h3>
          </a>
        </div>
        <div class="col-lg-6">
          <c:if test="${decktape.id == null}">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal" ><i class="fa fa-search"></i></img>
          </c:if>
           <c:if test="${!(decktape.id == null)}">
          <img class="img-circle" src="images/item/${decktape.fileName}" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal" data-target="#product_view${decktape.id}"><i class="fa fa-search"></i></img>
          </c:if>
          <a href="ItemDetailServlet?id=3">
            <h3><Font face="IMPACT" Color="#FFFFFF">DECKTAPE</Font></h3>
          </a>
        </div>
      </div>
      <!-------------------------------------------->
      <c:if test="${isComplete == false}">
	      <div class="row">
	        <div class="col-lg-12">

	            <button type="button" class="btn btn-lg btn-primary" disabled="disabled"><h1></>Select Parts All</h1></button>

	        </div>
	      </div>
	  </c:if>
      <c:if test="${isComplete}">
	      <div class="row">
	        <div class="col-lg-12">
	          <a href="BuyServlet">
	            <button class="square_btn"><img class="img-rounded" src="images/making.png" alt="Generic placeholder image"></button>
	          </a>
	        </div>
	      </div>
	  </c:if>
      <!-------------------------------------------->
      <div>
        <div class="col-lg-6">
          <c:if test="${vis.id == null}">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal"><i class="fa fa-search"></i></img>
          </c:if>
           <c:if test="${!(vis.id == null)}">
          <img class="img-circle" src="images/item/${vis.fileName}" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal" data-target="#product_view${vis.id}"><i class="fa fa-search"></i></img>
          </c:if>
          <a href="ItemDetailServlet?id=4">
            <h3><Font face="IMPACT" Color="#FFFFFF">HARDWARE</Font></h3>
          </a>
        </div>
        <div class="col-lg-6">
          <c:if test="${wheel.id == null}">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal" ><i class="fa fa-search"></i></img>
          </c:if>
           <c:if test="${!(wheel.id == null)}">
          <img class="img-circle" src="images/item/${wheel.fileName}" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal" data-target="#product_view${wheel.id}"><i class="fa fa-search"></i></img>
          </c:if>
          <a href="ItemDetailServlet?id=5">
            <h3><Font face="IMPACT" Color="#FFFFFF">WHEEL</Font></h3>
          </a>
        </div>
      </div>
      <!-------------------------------------------->
      <div class="row">
        <div class="col-lg-12">
          <c:if test="${bearing.id == null}">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal" ><i class="fa fa-search"></i></img>
          </c:if>
           <c:if test="${!(bearing.id == null)}">
          <img class="img-circle" src="images/item/${bearing.fileName}" alt="Generic placeholder image" width="100" height="100" type="button" data-toggle="modal" data-target="#product_view${bearing.id}"><i class="fa fa-search"></i></img>
          </c:if>
          <a href="ItemDetailServlet?id=6">
            <h3><Font face="IMPACT" Color="#FFFFFF">BEARING</Font></h3>
          </a>
        </div>
      </div>
      <!-------------------------------------------->
    </center>
  </div>
  <!-------------------------------------------->

  <div class="modal fade product_view" id="product_view${deck.id}">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
          <h3 class="modal-title">${deck.name}</h3>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-6 product_img">
              <img src="images/item/${deck.fileName}" class="img-responsive">
            </div>
            <div class="col-md-6 product_content">
              <h4>${deck.brand}</h4>
              <p>${deck.detail}</p>
              <h3 class="cost">${deck.price}円</h3>
              <div class="row">
              </div>
              <div class="space-ten"></div>
              <div class="btn-ground">
                <center>
                  <a href="ItemDetailServlet?id=${deck.categoryId}"><button type="button" class="btn btn-primary">デッキを選び直す</button></a>
                  <a href="CreateDeckServlet"><button type="button" class="btn btn-danger">　戻る　</button></a>
                </center>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-------------------------------------------->
   <!-------------------------------------------->

  <div class="modal fade product_view" id="product_view${track.id}">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
          <h3 class="modal-title">${track.name}</h3>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-6 product_img">
              <img src="images/item/${track.fileName}" class="img-responsive">
            </div>
            <div class="col-md-6 product_content">
              <h4>${track.brand}</h4>
              <p>${track.detail}</p>
              <h3 class="cost">${track.price}円</h3>
              <div class="row">
              </div>
              <div class="space-ten"></div>
              <div class="btn-ground">
                <center>
                  <a href="ItemDetailServlet?id=${track.categoryId}"><button type="button" class="btn btn-primary">トラックを選び直す</button></a>
                  <a href="CreateDeckServlet"><button type="button" class="btn btn-danger">　戻る　</button></a>
                </center>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-------------------------------------------->
   <!-------------------------------------------->

  <div class="modal fade product_view" id="product_view${decktape.id}">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
          <h3 class="modal-title">${decktape.name}</h3>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-6 product_img">
              <img src="images/item/${decktape.fileName}" class="img-responsive">
            </div>
            <div class="col-md-6 product_content">
              <h4>${decktape.brand}</h4>
              <p>${decktape.detail}</p>
              <h3 class="cost">${decktape.price}円</h3>
              <div class="row">
              </div>
              <div class="space-ten"></div>
              <div class="btn-ground">
                <center>
                  <a href="ItemDetailServlet?id=${decktape.categoryId}"><button type="button" class="btn btn-primary">デッキテープを選び直す</button></a>
                  <a href="CreateDeckServlet"><button type="button" class="btn btn-danger">　戻る　</button></a>
                </center>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-------------------------------------------->
   <!-------------------------------------------->

  <div class="modal fade product_view" id="product_view${vis.id}">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
          <h3 class="modal-title">${vis.name}</h3>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-6 product_img">
              <img src="images/item/${vis.fileName}" class="img-responsive">
            </div>
            <div class="col-md-6 product_content">
              <h4>${vis.brand}</h4>
              <p>${vis.detail}</p>
              <h3 class="cost">${vis.price}円</h3>
              <div class="row">
              </div>
              <div class="space-ten"></div>
              <div class="btn-ground">
                <center>
                  <a href="ItemDetailServlet?id=${vis.categoryId}"><button type="button" class="btn btn-primary">ビスを選び直す</button></a>
                  <a href="CreateDeckServlet"><button type="button" class="btn btn-danger">　戻る　</button></a>
                </center>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-------------------------------------------->
     <!-------------------------------------------->

  <div class="modal fade product_view" id="product_view${wheel.id}">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
          <h3 class="modal-title">${wheel.name}</h3>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-6 product_img">
              <img src="images/item/${wheel.fileName}" class="img-responsive">
            </div>
            <div class="col-md-6 product_content">
              <h4>${wheel.brand}</h4>
              <p>${wheel.detail}</p>
              <h3 class="cost">${wheel.price}円</h3>
              <div class="row">
              </div>
              <div class="space-ten"></div>
              <div class="btn-ground">
                <center>
                  <a href="ItemDetailServlet?id=${wheel.categoryId}"><button type="button" class="btn btn-primary">ウィールを選び直す</button></a>
                  <a href="CreateDeckServlet"><button type="button" class="btn btn-danger">　戻る　</button></a>
                </center>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-------------------------------------------->
  <!-------------------------------------------->

  <div class="modal fade product_view" id="product_view${bearing.id}">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
          <h3 class="modal-title">${bearing.name}</h3>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-6 product_img">
              <img src="images/item/${bearing.fileName}" class="img-responsive">
            </div>
            <div class="col-md-6 product_content">
              <h4>${bearing.brand}</h4>
              <p>${bearing.detail}</p>
              <h3 class="cost">${bearing.price}円</h3>
              <div class="row">
              </div>
              <div class="space-ten"></div>
              <div class="btn-ground">
                <center>
                  <a href="ItemDetailServlet?id=${bearing.categoryId}"><button type="button" class="btn btn-primary">ベアリングを選び直す</button></a>
                  <a href="CreateDeckServlet"><button type="button" class="btn btn-danger">　戻る　</button></a>
                </center>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-------------------------------------------->

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>
