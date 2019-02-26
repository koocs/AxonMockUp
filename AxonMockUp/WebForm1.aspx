<%@ Page Language="VB" MasterPageFile="~/MasterPage/axon.Master" AutoEventWireup="false"
    CodeFile="WebForm1.aspx.vb" Inherits="baseMyAcc_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .welcome {
            font-family: Trebuchet MS;
            font-size: 20px;
            font-weight: bold;
            color: #6a737c;
            padding: 0px 20px;
            width: 40%;
        }

        .accType {
            padding: 5px 30px;
            font-family: Trebuchet MS;
            font-size: 20px;
            font-weight: bold;
            color: #6a737c;
            border-bottom-style: inset;
            border-top-style: inset;
            border-color: black;
        }
        .cs-td{

            font-size:larger;
            font-weight: bold; 
            color: #0000FF;
		}
        @media (max-width: 500px) {

            .cs-td {
                font-size: 7px;
            }
        }
		
		 @media (max-width: 768px) {

            .row {
                font-size: 11px;
            }
        }
		
		@media (min-width: 769px) and (max-width: 820px) {
		
			.welcome {
                font-size: 10px;
            }

            .accType {
                font-size: 10px;
            }
		}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="upContent" runat="server">
        <ContentTemplate>
            <ucMsg:EventMsg ID="ucMsg" runat="server" />


            <div class="col-sm-12 form-group">

                <div class="row">

                    <div class="col-sm-8 form-group col-xs-8">
                        <asp:Label ID="lblNotes" Style="display: inline-block;" CssClass="welcome" runat="server" Text="Welcome"></asp:Label>
                    </div>

                    <div class="col-sm-4 form-group col-xs-4">
                        <asp:Label CssClass="accType" ID="lblAccType" runat="server" Text="halo"></asp:Label>
                    </div>

                </div>

                <div class="row">
                    <div class="col-sm-12 form-group">
                        <asp:Image ID="imgGreeting" runat="server" Width="1100px" Height="250px" Style="margin-top: 10px" />
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-sm-12 form-group">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <asp:Label ID="lblOverviewIncome" runat="server" Text="Income Overview"></asp:Label>
                        </div>
                        <div class="panel-body">
                            <div class="col-sm-12 form-group">
                                <div class="row">

                                    <div class="col-sm-6 form-group">
                                        <asp:Image ID="imgIncomeAffiliate" class="img-responsive" runat="server" />
                                    </div>
                                    <div class="col-sm-6 form-group">
                                        <asp:Image ID="imgIncomeYTD" class="img-responsive" runat="server" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-12 form-group">
                <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <asp:Label ID="lblAccSummary" runat="server" Text="Account Summary"></asp:Label>
                        </div>
                        <div class="panel-body">
                            <div class="col-sm-12 form-group">
                                <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <asp:GridView ID="gvAccDetails" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive-table"
                                            ShowHeader="False" DataKeyNames="Status">
                                            <PagerSettings Visible="False" />
                                            <RowStyle CssClass="gridlines"></RowStyle>
                                            <HeaderStyle CssClass="gridheader"></HeaderStyle>
                                            <AlternatingRowStyle CssClass="gridlinesalt"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:BoundField DataField="Label" />
                                                <asp:BoundField DataField="Value" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>

                                    <div class="col-sm-6 form-group">
                                        <asp:GridView ID="gvBalance" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive-table"
                                            ShowHeader="False">
                                            <PagerSettings Visible="False" />
                                            <RowStyle CssClass="gridlines"></RowStyle>
                                            <HeaderStyle CssClass="gridheader"></HeaderStyle>
                                            <AlternatingRowStyle CssClass="gridlinesalt"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:BoundField DataField="Account" />
                                                <asp:BoundField DataField="Balance" ItemStyle-HorizontalAlign="Right" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 form-group">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <asp:Label ID="lblAnnoucementTitle" runat="server" Text="Latest Announcement"></asp:Label>
                        </div>
                        <div class="panel-body">

                            <div class="col-sm-12 form-group">
                                <div class="row">
                                    <div class="col-sm-12 form-group">
                                        <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" CssClass="gridview"
                                            DataKeyNames="UID,Version" AllowPaging="True" ShowHeader="False" Width="100%">
                                            <PagerSettings Visible="False" />
                                            <RowStyle CssClass="gridlines"></RowStyle>
                                            <HeaderStyle CssClass="gridheader"></HeaderStyle>
                                            <AlternatingRowStyle CssClass="gridlinesalt"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField ItemStyle-HorizontalAlign="Left">
                                                    <ItemTemplate>
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td align="left" class="cs-td">
                                                                    <asp:Label ID="lblDtStart" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "DtPublish")%>'></asp:Label>&nbsp;|
                                                <asp:Label ID="lblTitle" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>'></asp:Label>
                                                                    <asp:LinkButton ID="lbtnReadMore" runat="server" Style="cursor: pointer; padding-left: 10px;"
                                                                        CommandArgument='<%# Container.DataItemIndex %>' CommandName="view">Read more</asp:LinkButton>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-12 form-group">

                                        </div>


                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 form-group">
                                            <asp:Label ID="lblErrMsg" runat="server" Visible="False"></asp:Label>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
