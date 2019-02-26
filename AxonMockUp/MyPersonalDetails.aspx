<%@ Page Language="VB" MasterPageFile="~/MasterPage/axon.Master" AutoEventWireup="false"
    CodeFile="MyPersonalDetails.aspx.vb" Inherits="baseMyAcc_MyPersonalDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1 {
            font-family: Tahoma, "Trebuchet MS", Calibri, Arial, Helvetica, sans-serif;
            font-size: 12px;
            font-weight: bold;
            color: #ff0000;
            vertical-align: middle;
            text-align: right;
            width: 10px;
            white-space: nowrap;
            height: 30px;
            padding: 0px;
        }

        .style2 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container-fluid">
       <div class="container-fluid mt">
            <div class="row">
                <div class="form-group float-right">
                    <asp:Button ID="btnUpdatePersonal" runat="server" class="btn btn-success" Text="Update" ValidationGroup="Personal" />

                    <asp:Button ID="btnClearPersonal" runat="server" CausesValidation="False" class="btn btn-success" Text="Clear" />
                </div>
            </div>
        </div>


        <%----------------------Fill in Detail---------------------------%>
        

        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:Label ID="Label1" runat="server" Text="一般"></asp:Label>
            </div>
            <div class="container-fluid mt">
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group col-md-12 col-sm-6">
                            客户名称<asp:Label CssClass="text-muted form-control mt-05" ID="lblUserID" runat="server"></asp:Label>
                        </div>

                        <div class="form-group col-md-12 col-sm-6">
                            客户简称<asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control mt-05" MaxLength="200"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-12 col-sm-6">
                            邮政编号<asp:TextBox ID="txtLastName" runat="server" CssClass="form-control mt-05" MaxLength="100"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-12 col-sm-6 col-xs-12">
                            区县<div class="input-group">
                                <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>

                        <div class="form-group col-md-12 col-sm-6">
                            电话<asp:TextBox ID="txtEmailAddr" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-12 col-sm-6">
                            电子邮件<asp:TextBox ID="txtID" runat="server" CssClass="form-control mt-05" MaxLength="50" ValidationGroup="Personal"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-12 col-sm-6">
                            介绍<asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control mt-05" MaxLength="20" ValidationGroup="Personal" TextMode="MultiLine"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-12 col-sm-6">
                            介绍
                            <asp:DropDownList CssClass="form-control mt-05" ID="ddlCountry" runat="server" ValidationGroup="Personal">
                            </asp:DropDownList>

                        </div>

                    </div>
                </div>

                <%-----%>

                <div class="col-md-6">

                    <div class="form-group col-md-12 col-sm-6">
                        客户编码<asp:TextBox ID="txtBankAcctNo" runat="server" CssClass="form-control mt-05" MaxLength="30" ValidationGroup="Personal"></asp:TextBox>
                    </div>


                    <div class="form-group col-md-12 col-sm-6">
                        地址<asp:TextBox ID="txtBankNm" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
                    </div>

                    <div class="form-group col-md-12 col-sm-6">
                        城市<div class="input-group">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                    <div class="form-group col-md-12 col-sm-6">
                        语言<asp:DropDownList ID="DropDownList1" CssClass="form-control mt-05" runat="server">
                            <asp:ListItem>简体中文</asp:ListItem>
                            <asp:ListItem>English</asp:ListItem>
                            <asp:ListItem>繁体中文</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group col-md-12 col-sm-6">
                        传真<asp:TextBox ID="txtBankState" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
                    </div>

                    <div class="form-group col-md-12 col-sm-6">
                        网站<asp:TextBox ID="txtBankRegion" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
                    </div>

                </div>
            </div>
        </div>
        <%--margin div--%>
        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:Label ID="Label2" runat="server" Text="分类信息"></asp:Label>
            </div>
            <div class="container-fluid mt">
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group col-md-12 col-sm-6">
                            状态<div class="input-group">
                            <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                        <div class="form-group col-md-12 col-sm-6">
                            描述<div class="input-group">
                            <asp:TextBox ID="TextBox25" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                        <div class="form-group col-md-12 col-sm-6">
                            获得途径<div class="input-group">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                        <div class="form-group col-md-12 col-sm-6 col-xs-12">
                            客户经理<div class="input-group">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                        <div class="form-group col-md-12 col-sm-6">
                            上级单位<div class="input-group">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                        <div class="form-group col-md-12 col-sm-6">
                            背景资料<div class="input-group">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>
                    </div>
                </div>

                <%-----%>

                <div class="col-md-6">

                    <div class="form-group col-md-12 col-sm-6">
                        类型<div class="input-group">
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>


                    <div class="form-group col-md-12 col-sm-6">
                        规模<div class="input-group">
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                    <div class="form-group col-md-12 col-sm-6">
                        行业<div class="input-group">
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                    <div class="form-group col-md-12 col-sm-6">
                        中介机构<div class="input-group">
                            <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                    <div class="form-group col-md-12 col-sm-6">
                        文档<div class="input-group">
                            <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                    <div class="form-group col-md-12 col-sm-6">
                        安全级别<asp:TextBox ID="TextBox13" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
                    </div>

                </div>
            </div>
        </div>
        <%--margin div--%>
        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:Label ID="Label4" runat="server" Text="帐务"></asp:Label>
            </div>
            <div class="container-fluid mt">
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group col-md-12 col-sm-6">
                            信用额度<asp:Label CssClass="text-muted form-control mt-05" ID="Label5" runat="server"></asp:Label>
                        </div>

                        <div class="form-group col-md-12 col-sm-6">
                            开户银行<asp:TextBox ID="TextBox7" runat="server" CssClass="form-control mt-05" MaxLength="200"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-12 col-sm-6">
                            银行帐号
                            <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control mt-05" MaxLength="100"></asp:TextBox>
                        </div>

                    </div>
                </div>

                <%-----%>

                <div class="col-md-6">

                    <div class="form-group col-md-12 col-sm-6">
                        信用期间<asp:TextBox ID="TextBox18" runat="server" CssClass="form-control mt-05" MaxLength="30" ValidationGroup="Personal"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-12 col-sm-6">
                        帐户<asp:TextBox ID="TextBox19" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
                    </div>

                </div>
            </div>
        </div>
        <%--margin div--%>
        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:Label ID="Label6" runat="server" Text="联系人"></asp:Label>
            </div>
            <div class="container-fluid mt">
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group col-md-12 col-sm-6">
                            姓名<asp:Label CssClass="text-muted form-control mt-05" ID="Label7" runat="server"></asp:Label>
                        </div>

                        <div class="form-group col-md-12 col-sm-6">
                            岗位<asp:TextBox ID="TextBox15" runat="server" CssClass="form-control mt-05" MaxLength="200"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-12 col-sm-6">
                            办公室电话<asp:TextBox ID="TextBox16" runat="server" CssClass="form-control mt-05" MaxLength="100"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-12 col-sm-6 col-xs-12">
                            移动电话<asp:TextBox ID="TextBox17" runat="server" CssClass="form-control mt-05" MaxLength="100"></asp:TextBox>
                        </div>

                    </div>
                </div>

                <%-----%>

                <div class="col-md-6">

                    <div class="form-group col-md-12 col-sm-6">
                        称呼<div class="input-group">
                            <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>

                    <div class="form-group col-md-12 col-sm-6">
                        电子邮件<asp:TextBox ID="TextBox23" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
                    </div>

                    <div class="form-group col-md-12 col-sm-6">
                        住宅电话<asp:TextBox ID="TextBox24" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
                    </div>

                </div>
            </div>
        </div>
        
    </div>

</asp:Content>
