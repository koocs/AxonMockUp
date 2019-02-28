<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Add_Vendor.aspx.vb" Inherits="AxonMockUp.Add_Vendor" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <title>Laravel</title>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
        <div class="container">
            <a class="navbar-brand" href="#">
                <asp:Image ID="imgLogo" runat="server" ImageUrl="images/axon-logo.png"
                    CssClass="cs-img-size" Style="margin: 3px; margin-top: -6px; width: 180px" /></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">登录</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">注册</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <main class="my-form">
   
<div class="cotainer">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">供应商注册</div>
                <div class="card-body">
                    <form name="my-form" onsubmit="return validform()" action="success.php" method="">
                        <div class="form-group row">
                            <label for="full_name" class="col-md-4 col-form-label text-md-right">公司注册号</label>
                            <div class="col-md-6">
                                <input type="text" id="full_name" class="form-control" name="full-name">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email_address" class="col-md-4 col-form-label text-md-right">公司名称</label>
                            <div class="col-md-6">
                                <input type="text" id="email_address" class="form-control" name="email-address">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="user_name" class="col-md-4 col-form-label text-md-right">服务类别</label>
                            <div class="col-md-6">
                                <select class="form-control" id="sel3">
                                    <option>物业服务企业</option>
                                    <option>营销咨询公司</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="phone_number" class="col-md-4 col-form-label text-md-right">国家</label>
                            <div class="col-md-6">
                                <select class="form-control" id="sel1">
                                    <option>中国</option>
                                    <option>马来西亚</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="present_address" class="col-md-4 col-form-label text-md-right">城市</label>
                            <div class="col-md-6">
                                <select class="form-control" id="sel2">
                                    <option>山西省</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="user_name" class="col-md-4 col-form-label text-md-right">
                                联系方式</label>
                            <div class="col-md-6">
                                <input type="text" id="TEL" class="form-control" name="username">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="user_name" class="col-md-4 col-form-label text-md-right">
                                网页</label>
                            <div class="col-md-6">
                                <input type="text" id="WEB" class="form-control" name="username">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="user_name" class="col-md-4 col-form-label text-md-right">邮编</label>
                            <div class="col-md-6">
                                <input type="text" id="POST" class="form-control" name="username">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="permanent_address" class="col-md-4 col-form-label text-md-right">地址</label>
                            <div class="col-md-6">
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                        </div>

                        <div class="col-md-6 offset-md-4">
                            <button type="submit" class="btn btn-primary">
                                提交
                                       
                            </button>
                        </div>
                </div>
                </form>
                       
            </div>
        </div>
    </div>
</div>
    </div>

</main>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
