<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/common.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-------------------------------------------->
  <title>${itemCategory.name}</title>
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
        <a class="navbar-brand" href="CreateDeckServlet"><span class="glyphicon glyphicon-tree-conifer" aria-hidden="true"></span>CustomSkateboard</a>
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

  <center><h1><Font Color="#FFFFFF">${itemCategory.name}一覧</font></h1>
    <!-------------------------------------------->

    <!-------------------------------------------->
    <div class="container">
      <div class="newuserbox">
        <div class="row">
          <div class="col-md-12">
            <div class="panel panel-default">
              <div class="panel-body">
                <h2>商品検索</h2>
                <!-------------------------------------------->
                <form method="post" action="ItemDetailServlet?id=${itemCategory.id}">
                <input type="hidden" name="categoryId" value="${itemCategory.id}">

                <input type="id" name="brand" class="form-control" placeholder="ブランド" autofocus="" >

                  <br>
                  <input type="id" name="name" class="form-control" placeholder="アイテム名" autofocus="" >
                  <br>
                  <div class="row">
                    <div class="col-md-3">
                      <select class="selecter" name="price1" id="pref">
                        <option value="">選択...</option>
                        <option>0</option>
                        <option>500</option>
                        <option>1000</option>
                        <option>2000</option>
                        <option>5000</option>
                        <option>10000</option>
                        <option>15000</option>
                        <option>20000</option>
                        <option>50000</option>
                      </select>
                    </div>
                    <p class="col-md-2">円　   〜</p>
                    <div class="col-md-3">
                      <label for="city"></label>
                      <select class="selecter" name="price2" id="city">
                        <option value="">選択...</option>
                        <option>500</option>
                        <option>1000</option>
                        <option>2000</option>
                        <option>5000</option>
                        <option>10000</option>
                        <option>15000</option>
                        <option>20000</option>
                        <option>50000</option>
                        <option>100000</option>
                      </select>
                    </div>
                    <p class="col-md-2">円</p>
                    <div class="col-md-2">
                      <button type="submit" class="btn btn-primary pull-right"><span class="glyphicon glyphicon-search"></span>      search     </button>
                    </div>
                  </form>
                  <!-------------------------------------------->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </center>


  <div class="flex">
  <c:forEach var="item" items="${itemList}" >
    <div><br>
      <center>
        <img src="images/item/${item.fileName}" alt="" class="img-responsive">
      </center>
      <br>
      <div class="caption">
        <h4>${item.brand}</h4>
        <p>${item.name}</p>
        <h4 class="pull-right">${item.price}円</h4>
      </div>
      <div class="ratings">
        <br>
      </div>
      <div class="space-ten"></div>
      <br>
      <div class="btn-ground text-center">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#product_set${item.id}"><i class="fa fa-search"></i>この${itemCategory.name}に決定</button>
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#product_view${item.id}"><i class="fa fa-search"></i>アイテム詳細</button>
      </div>

      <div class="space-ten"></div></div>

      </c:forEach>

            </div>



          </div>

          <c:forEach var="item" items="${itemList}" >

          <div class="modal fade product_view" id="product_view${item.id}">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
                  <h3 class="modal-title">${item.name}</h3>
                </div>
                <div class="modal-body">
                  <div class="row">
                    <div class="col-md-6 product_img">
                      <img src="images/item/${item.fileName}" class="img-responsive">
                    </div>
                    <div class="col-md-6 product_content">
                      <h4>${item.brand}</h4>
                      <p>${item.name}</p>
                      <p>${item.detail}</p>
                      <h3 class="cost">${item.price}円</h3>
                      <div class="row">
                      </div>
                      <div class="space-ten"></div>
                      <div class="btn-ground">
                        <a href="CartServlet?itemId=${item.id}"><button type="button" class="btn btn-primary">この${itemCategory.name}に決定</button></a>
                          <a href="#" data-dismiss="modal"><button type="button" class="btn btn-danger">　戻る　</button></a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-------------------------------------------->
          <div class="modal fade product_view" id="product_set${item.id}">
            <div class="modal-dialog">
              <div class="modal-content"><center>
                <div class="modal-header">
                  <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
                  <h3 class="modal-title">アイテム選択</h3>
                </div>

                <div class="modal-body">
                  <div class="row">
                    <div class="col-md-12 product_content">

                    <input type="hidden" name="itemId" value="${item.id}">
                    <input type="hidden" name="categoryId" value="${itemCategory.id}}">

                      <center><h4>この${itemCategory.name}に決定してよろしいですか？</h4>
                        <div class="space-ten"></div>
                        <div class="btn-ground">
                          <a href="CartServlet?itemId=${item.id}"><button type="button" class="btn btn-primary">決定する</button></a>
                          <a href="#" data-dismiss="modal"><button type="button" class="btn btn-danger">　戻る　</button></a>
                        </center>


                      </div>
                    </div>
                  </div>
                   </form>
                </div>
              </center></div>
            </div>
          </div>
 </c:forEach>

          <!-------------------------------------------->
          <center><a href="CreateDeckServlet"><button type="button" class="btn btn-danger">戻る</button></a></center>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <script src="js/bootstrap.min.js"></script>
        </body>
        </html>
