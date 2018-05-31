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
          <p class="navbar-text">ようこそ　<font color="#CC3333">ゲスト</font>　さん</p>
          <li><a href="main.html"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a></li>
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
              <form id="loginForm" method="POST" action="userdetail.html" novalidate>
                <div class="form-group">
                  <center>
                    <h3 for="username" class="control-label">Taro</h3>
                  </center>
                </div>
                <div class="form-group">
                  <label for="password" class="control-label">パスワード</label>
                  <input type="password" class="form-control" id="password" name="password" value="password" required="" title="Please enter your password">
                </div>
                <div class="form-group">
                  <label for="password" class="control-label">パスワード</label>
                  <input type="password" class="form-control" id="password" name="password" value="password" required="" title="Please enter your password">
                </div>
                <div class="form-group">
                  <label for="username" class="control-label">ユーザー名</label>
                  <input type="text" class="form-control" id="username" name="username" value="Taro" required="" title="Please enter you username">
                </div>
                <div class="form-group">
                  <label for="username" class="control-label">生年月日</label>
                  <input type="date" class="form-control" value="1990-10-01" required>
                </div>
                <button type="submit" class="btn btn-info btn-block">更新</button>
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
              <form id="loginForm" method="POST" action="buydetail.html" novalidate>
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
                        <tr>
                          <td><button type="button" class="btn btn-success" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i><span class="glyphicon glyphicon-list" aria-hidden="true"></span></button></td>
                          <td>2018年5月21日20時15分</td>
                          <td>通常配送</td>
                          <td>34500円</td>
                        </tr>
                        <tr>
                          <td><button type="button" class="btn btn-success" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i><span class="glyphicon glyphicon-list" aria-hidden="true"></span></button></td>
                          <td>2018年5月21日20時15分</td>
                          <td>通常配送</td>
                          <td>27500円</td>
                        </tr>
                        <tr>
                          <td><button type="button" class="btn btn-success" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i><span class="glyphicon glyphicon-list" aria-hidden="true"></span></button></td>
                          <td>2018年5月21日20時15分</td>
                          <td>通常配送</td>
                          <td>27500円</td>
                        </tr>
                        <tr>
                          <td><button type="button" class="btn btn-success" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i><span class="glyphicon glyphicon-list" aria-hidden="true"></span></button></td>
                          <td>2018年5月21日20時15分</td>
                          <td>通常配送</td>
                          <td>27500円</td>
                        </tr>
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
    <div class="modal fade product_view" id="product_view">
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
                      <td><h3>2018年5月21日20時15分</h3></td>
                      <td><h3>34500円</h3></td>
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
                    <!-------------------------------------------->
                    <tbody>
                      <tr>
                        <td><img class="img" src="images/board1.jpg" alt="Generic placeholder image" width="100" height="100"></td>
                        <td><h4>デッキ</h4></td>
                        <td><h4>10000円</h4></td>
                      </tr>
                      <tr>
                        <td><img class="img" src="images/board1.jpg" alt="Generic placeholder image" width="100" height="100"></td>
                        <td><h4>トラック</h4></td>
                        <td><h4>12000円</h4></td>
                      </tr>
                      <tr>
                        <td><img class="img" src="images/board1.jpg" alt="Generic placeholder image" width="100" height="100"></td>
                        <td><h4>ウィール</h4></td>
                        <td><h4>5000円</h4></td>
                      </tr>
                      <tr>
                        <td><img class="img" src="images/board1.jpg" alt="Generic placeholder image" width="100" height="100"></td>
                        <td><h4>デッキテープ</h4></td>
                        <td><h4>1000円</h4></td>
                      </tr>
                      <tr>
                        <td><img class="img" src="images/board1.jpg" alt="Generic placeholder image" width="100" height="100"></td>
                        <td><h4>ベアリング</h4></td>
                        <td><h4>5000円</h4></td>
                      </tr>
                      <tr>
                        <td><img class="img" src="images/board1.jpg" alt="Generic placeholder image" width="100" height="100"></td>
                        <td><h4>ビス</h4></td>
                        <td><h4>1000円</h4></td>
                      </tr>
                      <!-------------------------------------------->
                      <tr>
                        <td></td>
                        <td><h4>通常配送</h4></td>
                        <td><h4>500円</h4></td>
                      </tr>
                      <!-------------------------------------------->
                    </tbody>
                  </table>
                </div>
              </div>
              <center><a href="userdetail.html"><button type="button" class="btn btn-danger">　閉じる　</button></a></center>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-------------------------------------------->
    <center><button type="button" class="btn btn-danger" onclick="history.back()">戻る</button></center>
    <!-------------------------------------------->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
  </html>
