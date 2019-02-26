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
        
        .styleChinese{
            font-family:KaiTi;
            Font-Size:22px;
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
      
          <asp:UpdatePanel ID="upPersonal" runat="server">
                 <ContentTemplate>
            <div class="container-fluid mt">
        <div class="col-md-6">
        <div class="row">   
              <div class="form-group col-md-12 col-sm-6">
                   <asp:Label CssClass="styleChinese" ID="lbl_lUserID" runat="server" Text="客户名称"></asp:Label>           
                  <asp:Label CssClass="text-muted form-control mt-05" ID="lblUserID" runat="server"></asp:Label>
            </div>

            <div class="form-group col-md-12 col-sm-6">
                  客户简称<asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control mt-05" MaxLength="200"></asp:TextBox>
        </div>

            <div class="form-group col-md-12 col-sm-6">
                  邮政编号<asp:TextBox ID="txtLastName" runat="server" CssClass="form-control mt-05" MaxLength="100"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6 col-xs-12">
                 区县<asp:Label CssClass="form-control mt-05" ID="lblCurrency" runat="server"></asp:Label>
            </div>

            <div class="form-group col-md-12 col-sm-6">
                 省份<asp:TextBox ID="txtEmailAddr" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>

            </div>

            <div class="form-group col-md-12 col-sm-6">
                 国家<asp:TextBox ID="txtID" runat="server" CssClass="form-control mt-05" MaxLength="50" ValidationGroup="Personal"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">
                 电话<asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control mt-05" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>

            </div>

            <div class="form-group col-md-12 col-sm-6">

                  <asp:Label CssClass="control-label" ID="lbl_lCountry" runat="server" Text="Country"></asp:Label>

                  <asp:DropDownList CssClass="form-control mt-05" ID="ddlCountry" runat="server" ValidationGroup="Personal">
                     </asp:DropDownList>

            </div>

            </div>
            </div>

                <%-----%>

        <div class="col-md-6">
        <div class="row">     
            <div class="form-group col-md-12 col-sm-6">

                 <asp:Label CssClass="control-label" ID="lblBankAcctNolbl" runat="server" Text="Bank Account Number"></asp:Label>
               
                   <asp:TextBox ID="txtBankAcctNo" runat="server" CssClass="form-control mt-05" MaxLength="30" ValidationGroup="Personal"></asp:TextBox>
                </div>
                </div>

            <div class="form-group col-md-12 col-sm-6">

                  <asp:Label CssClass="control-label" ID="lblBankNmlbl" runat="server" Text="Bank Name"></asp:Label>

                  <asp:TextBox ID="txtBankNm" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal" ></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">

                  <asp:Label CssClass="control-label" ID="lblBankBranchlbl" runat="server" Text="Bank Branch"></asp:Label>

                   <asp:TextBox ID="txtBankBranch" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">

                  <asp:Label CssClass="control-label" ID="lblBankCitylbl" runat="server" Text="Bank City"></asp:Label>

                  <asp:TextBox ID="txtBankCity" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">

                   <asp:Label CssClass="control-label" ID="lblBankStatelbl" runat="server" Text="Bank State"></asp:Label>

                  <asp:TextBox ID="txtBankState" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">

                 <asp:Label CssClass="control-label" ID="lblBankRegionlbl" runat="server" Text="Bank Region"></asp:Label>

                   <asp:TextBox ID="txtBankRegion" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">

                  <asp:Label CssClass="control-label" ID="lblBankCountrylbl" runat="server" Text="Bank Country"></asp:Label>

                  <asp:DropDownList CssClass="form-control mt-05" ID="ddlCountryBank" runat="server" ValidationGroup="Personal"></asp:DropDownList>

            </div>
                </div>    
        </div>
         
                </div> <%--margin div--%>

        <div class="container-fluid mt">
                    <div class="row">
                        <div class="form-group float-right">
                             <asp:Button ID="btnUpdatePersonal" runat="server" class="btn btn-success" Text="Update" ValidationGroup="Personal" />

                             <asp:Button ID="btnClearPersonal" runat="server" CausesValidation="False" class="btn btn-success" Text="Clear" />
                        </div>
                        </div>
                    </div>
                       </ContentTemplate>
                                </asp:UpdatePanel>

        <div class="row borderBtm"></div>

        <div class="row">
             <asp:Label ID="lblErrMsg" runat="server" ForeColor="Red" Visible="False"></asp:Label>
               <asp:Label ID="lblVersionUpload" runat="server" Visible="False"></asp:Label>
        </div>                   
    </div>
</asp:Content>
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
        
        .styleChinese{
            font-family:KaiTi;
            Font-Size:22px;
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
      
          <asp:UpdatePanel ID="upPersonal" runat="server">
                 <ContentTemplate>
            <div class="container-fluid mt">
        <div class="col-md-6">
        <div class="row">   
              <div class="form-group col-md-12 col-sm-6">
                   <asp:Label CssClass="styleChinese" ID="lbl_lUserID" runat="server" Text="客户名称"></asp:Label>           
                  <asp:Label CssClass="text-muted form-control mt-05" ID="lblUserID" runat="server"></asp:Label>
            </div>

            <div class="form-group col-md-12 col-sm-6">
                  客户简称<asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control mt-05" MaxLength="200"></asp:TextBox>
        </div>

            <div class="form-group col-md-12 col-sm-6">
                  邮政编号<asp:TextBox ID="txtLastName" runat="server" CssClass="form-control mt-05" MaxLength="100"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6 col-xs-12">
                 区县<asp:Label CssClass="form-control mt-05" ID="lblCurrency" runat="server"></asp:Label>
            </div>

            <div class="form-group col-md-12 col-sm-6">
                 省份<asp:TextBox ID="txtEmailAddr" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>

            </div>

            <div class="form-group col-md-12 col-sm-6">
                 国家<asp:TextBox ID="txtID" runat="server" CssClass="form-control mt-05" MaxLength="50" ValidationGroup="Personal"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">
                 电话<asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control mt-05" MaxLength="20" ValidationGroup="Personal"></asp:TextBox>

            </div>

            <div class="form-group col-md-12 col-sm-6">

                  <asp:Label CssClass="control-label" ID="lbl_lCountry" runat="server" Text="Country"></asp:Label>

                  <asp:DropDownList CssClass="form-control mt-05" ID="ddlCountry" runat="server" ValidationGroup="Personal">
                     </asp:DropDownList>

            </div>

            </div>
            </div>

                <%-----%>

        <div class="col-md-6">
        <div class="row">     
            <div class="form-group col-md-12 col-sm-6">

                 <asp:Label CssClass="control-label" ID="lblBankAcctNolbl" runat="server" Text="Bank Account Number"></asp:Label>
               
                   <asp:TextBox ID="txtBankAcctNo" runat="server" CssClass="form-control mt-05" MaxLength="30" ValidationGroup="Personal"></asp:TextBox>
                </div>
                </div>

            <div class="form-group col-md-12 col-sm-6">

                  <asp:Label CssClass="control-label" ID="lblBankNmlbl" runat="server" Text="Bank Name"></asp:Label>

                  <asp:TextBox ID="txtBankNm" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal" ></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">

                  <asp:Label CssClass="control-label" ID="lblBankBranchlbl" runat="server" Text="Bank Branch"></asp:Label>

                   <asp:TextBox ID="txtBankBranch" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">

                  <asp:Label CssClass="control-label" ID="lblBankCitylbl" runat="server" Text="Bank City"></asp:Label>

                  <asp:TextBox ID="txtBankCity" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">

                   <asp:Label CssClass="control-label" ID="lblBankStatelbl" runat="server" Text="Bank State"></asp:Label>

                  <asp:TextBox ID="txtBankState" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">

                 <asp:Label CssClass="control-label" ID="lblBankRegionlbl" runat="server" Text="Bank Region"></asp:Label>

                   <asp:TextBox ID="txtBankRegion" runat="server" CssClass="form-control mt-05" MaxLength="100" ValidationGroup="Personal"></asp:TextBox>
            </div>

            <div class="form-group col-md-12 col-sm-6">

                  <asp:Label CssClass="control-label" ID="lblBankCountrylbl" runat="server" Text="Bank Country"></asp:Label>

                  <asp:DropDownList CssClass="form-control mt-05" ID="ddlCountryBank" runat="server" ValidationGroup="Personal"></asp:DropDownList>

            </div>
                </div>    
        </div>
         
                </div> <%--margin div--%>

        <div class="container-fluid mt">
                    <div class="row">
                        <div class="form-group float-right">
                             <asp:Button ID="btnUpdatePersonal" runat="server" class="btn btn-success" Text="Update" ValidationGroup="Personal" />

                             <asp:Button ID="btnClearPersonal" runat="server" CausesValidation="False" class="btn btn-success" Text="Clear" />
                        </div>
                        </div>
                    </div>
                       </ContentTemplate>
                                </asp:UpdatePanel>

        <div class="row borderBtm"></div>

        <div class="row">
             <asp:Label ID="lblErrMsg" runat="server" ForeColor="Red" Visible="False"></asp:Label>
               <asp:Label ID="lblVersionUpload" runat="server" Visible="False"></asp:Label>
        </div>                   
    </div>
</asp:Content>
