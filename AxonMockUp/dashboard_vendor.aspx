<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/axon.Master" CodeBehind="dashboard_vendor.aspx.vb" Inherits="AxonMockUp.dashboard_vendor" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">


        <div class="panel panel-default">
            <div class="panel-heading"><i class="fa fa fa-tasks fa-lg"></i>要求报价列表</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">编号</th>
                            <th scope="col">项目</th>
                            <th scope="col">报价日期</th>
                            <th scope="col">有效日期</th>
                            <th scope="col">查看</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">RF19029</th>
                            <td>项目一</td>
                            <td>2018-12-22</td>
                            <td>2019-08-22</td>
                            <td>
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#rfq_list"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">RF19329</th>
                            <td>项目二</td>
                            <td>2018-12-22</td>
                            <td>2019-08-22</td>
                            <td>
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">RF15029</th>
                            <td>项目三</td>
                            <td>2018-12-22</td>
                            <td>2019-08-22</td>
                            <td>

                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">RF19027</th>
                            <td>项目四</td>
                            <td>2018-12-22</td>
                            <td>2019-08-22</td>
                            <td>

                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading"><i class="fa fa-history fa-lg" aria-hidden="true"></i>已提交要求报价列表</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">编号</th>
                            <th scope="col">项目</th>
                            <th scope="col">状态</th>
                            <th scope="col">提交日期</th>
                            <th scope="col">查看</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">RF19029</th>
                            <td>项目一</td>
                            <td><span class="label label-warning">有待</span></td>
                            <td>2019-02-26</td>
                            <td>
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#rfq_list_hist"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">RF19329</th>
                            <td>项目二</td>
                            <td><span class="label label-success">成功招标</span></td>
                            <td>2019-01-26</td>
                            <td>
                                <button type="button" class="btn btn-default">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </td>
                        </tr>
                    </tbody>

                </table>
            </div>
        </div>

    </div>

    <div class="modal fade" id="rfq_list" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"><i class="fa fa fa-tasks fa-lg"></i>要求报价</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">

                        <div class="container-fluid mt">
                            <div class="row">
                                <div class="form-group pull-right">
                                    <asp:Button ID="btnUpdatePersonal" runat="server" class="btn btn-default" Text="投标" ValidationGroup="Personal" />
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <label>编号 RF19029</label>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        询价单位
                                       <textarea class="form-control" rows="3">生产线</textarea>
                                    </div>
                                    <div class="col-md-6">
                                        條件與期限
                                       <textarea class="form-control" rows="3"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        付款方式
                                       <textarea class="form-control" rows="3"></textarea>
                                    </div>
                                    <div class="col-md-6">
                                        报价单位备注信息
                                       <textarea class="form-control" rows="3"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <label>货物</label>
                            </div>
                            <div class="panel-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">序号</th>
                                            <th scope="col">图片</th>
                                            <th scope="col">品名</th>
                                            <th scope="col">型号</th>
                                            <th scope="col">数量</th>
                                            <th scope="col">单价</th>
                                            <th scope="col">总价</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>
                                                <img src="../images/brake-disc.jpg" class="rounded mx-auto d-block" alt="..."></td>
                                            <td>制动盘</td>
                                            <td>雷贝斯托</td>
                                            <td>2000</td>
                                            <td>
                                                <input type="text" value="150" data-toggle="tooltip" data-placement="bottom" title="请输入单价" /></td>
                                            <td>300,000</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>
                                                <img src="../images/cat-5-e.jpg" class="rounded mx-auto d-block" alt="..."></td>
                                            <td>ethernet cable</td>
                                            <td>Cat 5e</td>
                                            <td>2000000</td>
                                            <td>
                                                <input type="text" value="2" /></td>
                                            <td>4,000,000</td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="6" scope="row" class="text-right">总和</th>
                                            <td>4,300,000</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="rfq_list_hist" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle02" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle02"><i class="fa fa fa-tasks fa-lg"></i>已提交要求报</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">

                        <div class="container-fluid mt">
                            <div class="row">
                                <div class="form-group pull-right">
                                    <asp:Button ID="Button1" runat="server" class="btn btn-danger" Text="取消投标" ValidationGroup="Personal" />
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <label>编号 RF19029 </label>
                            </div>
                            <div class="panel-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">序号</th>
                                            <th scope="col">图片</th>
                                            <th scope="col">品名</th>
                                            <th scope="col">型号</th>
                                            <th scope="col">数量</th>
                                            <th scope="col">单价</th>
                                            <th scope="col">总价</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>
                                                <img src="../images/brake-disc.jpg" class="rounded mx-auto d-block" alt="..."></td>
                                            <td>制动盘</td>
                                            <td>雷贝斯托</td>
                                            <td>2000</td>
                                            <td>150</td>
                                            <td>300,000</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>
                                                <img src="../images/cat-5-e.jpg" class="rounded mx-auto d-block" alt="..."></td>
                                            <td>ethernet cable</td>
                                            <td>Cat 5e</td>
                                            <td>2000000</td>
                                            <td>2</td>
                                            <td>4,000,000</td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="6" scope="row" class="text-right">总和</th>
                                            <td>4,300,000</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
