<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/axon.Master" CodeBehind="Add_Vendor_Internal.aspx.vb" Inherits="AxonMockUp.Add_Vendor_Internal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel panel-default">
        <div class="panel-heading">
            <label>添加供应商</label>
        </div>
        <div class="panel-body">

            <div class="row">
                <div class="col-md-6">
                    公司注册号
                    <input type="text" id="full_name" class="form-control" name="full-name">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    公司名称
                    <input type="text" id="email_address" class="form-control" name="email-address">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    服务类别
                    <select class="form-control" id="sel3">
                        <option>物业服务企业</option>
                        <option>营销咨询公司</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    国家
                    <select class="form-control" id="sel1">
                        <option>中国</option>
                        <option>马来西亚</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    城市
                    <select class="form-control" id="sel2">
                        <option>山西省</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    联系方式
                    <input type="text" id="TEL" class="form-control" name="username">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    网页
                    <input type="text" id="WEB" class="form-control" name="username">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    邮编
                    <input type="text" id="POST" class="form-control" name="username">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    地址
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>

            <div class="row">

                <div class="col-md-6">
                    <button type="submit" class="btn btn-primary pull-right">
                        提交
                                       
                    </button>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
