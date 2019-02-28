<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="AxonMockUp.Login" %>

<!DOCTYPE html>
<html>

<head id="Head1" runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%--<link rel="icon" href="images/numoptions/Logos/tdbinary_icon.png" />--%>

    <title></title>

    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900&subset=latin,latin-ext'>
    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/0.8.2/css/flag-icon.min.css'>
    <link href="../css/login_B.css" rel="stylesheet">

    <script>
        window.console = window.console || function (t) { };
    </script>

    <script>
        if (document.location.search.match(/type=embed/gi)) {
            window.parent.postMessage("resize", "*");
        }
    </script>

    <style>
      
        .cs-img-size {
            width: 150px;
        }

        @media (max-width: 768px) {

            .box {
                overflow: auto;
                max-height: 100%;
            }
        }

        @media (max-width: 380px) {
            .cs-medium-font {
                font-size: 10px;
            }

            .cs-img-size {
                width: 100px;
            }
        }
    </style>

</head>

<body>
    <form id="frm" runat="server" name="form">
        <div class="container-fluid">
            <div class="materialContainer">

                <div class="box">

                     <div class="row">                       
                        <div class="col-xs-12t">
                            <select class="selectpicker  pull-right" name="selValue" id="lang" runat="server" data-width="fit">
                                <option value="1" data-content='<span class="flag-icon flag-icon-gb"></span> English'></option>
                                <option value="2" data-content='<span class="flag-icon flag-icon-cn"></span> 简体中文'></option>
                            </select>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-xs-6">
                            <asp:Image ID="imgLogo" runat="server" ImageUrl="images/axon-logo.png"
                                CssClass="cs-img-size" />
                        </div>

                        <div class="col-xs-6">

                            <div class="row  pull-right">
                                <div class="col-xs-12 title">
                                    <asp:Label ID="lblSystemLogin" CssClass="cs-medium-font" runat="server" Text="系统登录"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <asp:Label ID="lblCaption" runat="server" CssClass="Description cs-medium-font" Text=""></asp:Label>
                                </div>
                            </div>

                        </div>
                    </div>                     

                    <div class="input">
                        <label for="txtUsername">
                            <asp:Label ID="lblUsername" runat="server" Text="登录用户名"></asp:Label></label>

                        <asp:TextBox ID="txtUsername" runat="server" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUsername"
                            CssClass="required" Display="dynamic" ErrorMessage="required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <span class="spin"></span>
                    </div>

                    <div class="input">
                        <label for="txtPassword">
                            <asp:Label ID="lblPassword" runat="server" Text="用户密码"></asp:Label>
                        </label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="12"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                            CssClass="required" Display="dynamic" ErrorMessage="required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <span class="spin"></span>
                    </div>

                    <div class="row">
                        <div class="col-xs-12  top-buffer">
                            <asp:Label ID="lblErrMsg" CssClass="errorMsg cs-medium-font" Visible="false" runat="server"></asp:Label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-6">
                            <asp:Button ID="btnSubmit" CssClass="button btn-info" runat="server" Text="登录" />
                        </div>
                        <div class="col-xs-6">

                            <asp:Button ID="btnClear" class="button btn-warning" runat="server" CausesValidation="false" Text="重置" />
                        </div>

                    </div>                  

                    <asp:HiddenField ID="hfVeriCode" runat="server" />
                    <asp:HiddenField ID="hf" runat="server" />

                </div>

            </div>
        </div>

    </form>

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/js/bootstrap-select.min.js'></script>

    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript">

        window.onload = foo;
        function foo() {
            var hf = document.getElementById('<%=Me.hf.ClientID %>');
            hf.value = window.history.length;
        }

        IsHasValueCheck();

        function IsHasValueCheck() {

            $(".input input").each(function () {

                if ($(this).val() !== "") {

                    $(this).parent(".input").each(function () {
                        $("label", this).css({
                            "line-height": "18px",
                            "font-size": "18px",
                            "font-weight": "100",
                            "top": "0px"
                        });

                    });
                } else {
                    $('input[type=text], textarea').blur();
                }
            });
        }

        $(".input input").focus(function () {

            $(this).parent(".input").each(function () {
                $("label", this).css({
                    "line-height": "18px",
                    "font-size": "18px",
                    "font-weight": "100",
                    "top": "0px"
                });
                $(".spin", this).css({
                    "width": "100%"
                });
            });
        }).blur(function () {
            $(".spin").css({
                "width": "0px"
            });
            if ($(this).val() === "") {
                $(this).parent(".input").each(function () {
                    $("label", this).css({
                        "line-height": "60px",
                        "font-size": "16px",
                        "font-weight": "300",
                        "top": "10px"
                    });
                });

            }
        });

        $(document).ready(function () {

            var TDLANG = 2

            if (TDLANG === 2) {
                //$(".selectpicker").val('2');
                $('select[name=selValue]').val(2);

                $('.selectpicker').selectpicker({
                    title: 'New title'
                });

                $('.selectpicker').selectpicker('refresh');

                console.log('2');

            } else {
                //  $(".selectpicker").val('1');
                $('select[name=selValue]').val(1);
                $('.selectpicker').selectpicker('refresh');
                console.log('1');
            }
            // $('.selectpicker').selectpicker();
            console.log('1TDLANG : ' + TDLANG);
        });
    </script>

</body>

</html>
