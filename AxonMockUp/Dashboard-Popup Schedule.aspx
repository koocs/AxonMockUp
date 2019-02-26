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

        .mt-05 {
        }

        .auto-style1 {
            width: 34px;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container-fluid">
        <div class="text-center">
            <asp:Label ID="lblContactSupport" runat="server" CssClass="sections_description"></asp:Label>
        </div>
        <div class="row">
            <div class="form-group">
                <asp:Label ID="lblSubmitUploadPending" runat="server"></asp:Label>
                <asp:Label ID="lblSubmitUploadApproved" runat="server"></asp:Label>
            </div>
        </div>
        <%----------------------Fill in Detail---------------------------%>
        <div class="row mt form-group sections_caption">
            <asp:Label ID="lblPersonalDetails" runat="server" Text=""></asp:Label>
        </div>

        <div class="row">
            <asp:Label ID="lblSubmitPersonal" runat="server" Text="" Style="margin-left: 30px; font-style: italic; font-weight: bold"></asp:Label>
        </div>
        <div class="container-fluid mt">
            <div class="row">
                <div class="form-group float-right">
                    <asp:Button ID="btnUpdatePersonal" runat="server" class="btn btn-success" Text="Update" ValidationGroup="Personal" />
                    <asp:Button ID="btnClearPersonal" runat="server" CausesValidation="False" class="btn btn-success" Text="Clear" />
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:Label ID="Label1" runat="server" Text="日程"></asp:Label>
            </div>
            <div class="container-fluid mt">
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group col-md-12 col-sm-12">
                            <asp:Label ID="lbl_lUserID" runat="server" Text="日程类型"></asp:Label>
                            <asp:DropDownList CssClass="form-control mt-05" ID="DropDownList1" runat="server" ValidationGroup="Personal">
                            </asp:DropDownList>
                        </div>

                        <div class="form-group col-md-12 col-sm-12">
                            标题<asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control mt-05" MaxLength="200"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-12 col-sm-12">
                            内容<asp:TextBox ID="txtLastName" runat="server" CssClass="form-control mt-05" MaxLength="100" Height="77px" Rows="2" TextMode="MultiLine"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-12 col-sm-12 col-xs-12">
                            接收人<asp:Label CssClass="form-control mt-05" ID="lblCurrency" runat="server"></asp:Label>
                        </div>

                        <div class="form-group col-md-12 col-sm-12">
                            紧急程度<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>&nbsp;一般&nbsp;</asp:ListItem>
                                <asp:ListItem>&nbsp;重要&nbsp;</asp:ListItem>
                                <asp:ListItem>&nbsp;紧急&nbsp;</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="col-sm-12 form-group">
                            开始日期, 时间
                            <div class="input-group">
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="fa fa-calendar"></i>
                                    </button>
                                </span>
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="fa fa-clock-o"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                        <div class="col-sm-12 form-group">
                            结束日期, 时间
                            <div class="input-group">
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="fa fa-calendar"></i>
                                    </button>
                                </span>
                                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="fa fa-clock-o"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                        <div class="form-group col-md-12 col-sm-6">
                            日程提醒方式<asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>&nbsp;不提醒&nbsp;</asp:ListItem>
                                <asp:ListItem>&nbsp;短信提醒&nbsp;</asp:ListItem>
                                <asp:ListItem>&nbsp;邮件提醒&nbsp;</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:Label ID="lblOverviewIncome" runat="server" Text="相关信息"></asp:Label>
            </div>
            <div class="container-fluid mt">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            相关客户
                            <div class="input-group">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            相关文档
                            <div class="input-group">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            相关客户
                            <div class="input-group">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            相关项目
                            <div class="input-group">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            相关项目任务
                            <div class="input-group">
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            相关流程
                            <div class="input-group">
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="row borderBtm"></div>

        <div class="row">
            <asp:Label ID="lblErrMsg" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            <asp:Label ID="lblVersionUpload" runat="server" Visible="False"></asp:Label>
        </div>
    </div>
</asp:Content>
