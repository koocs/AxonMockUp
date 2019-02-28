<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/axon.Master" CodeBehind="Vendor_Listing_Internal.aspx.vb" Inherits="AxonMockUp.Vendor_Listing_Internal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel panel-default">
        <div class="panel-heading">
            <label>供应商列表</label>
        </div>
        <div class="panel-body">

            <div class="row">
                <div class="col-md-2">
                    公司名称
                </div>
                <div class="col-md-4">

                    <select class="form-control" id="sel3">
                        <option>公司1</option>
                        <option>公司2</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-secondary">
                        查询
                                       
                    </button>
                </div>
            </div>

            <br />
            <br />
            <br />

            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">序号</th>
                                <th scope="col">公司名称</th>
                                <th scope="col">服务类别</th>
                                <th scope="col">注册日期</th>
                                <th scope="col">查看</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>公司1</td>
                                <td>物业服务企业</td>
                                <td>2018-12-26</td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="...">
                                        <button type="button" class="btn btn-default">
                                            <i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#vendor_list"></i>
                                        </button>
                                        <button type="button" class="btn btn-default">
                                            <i class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#vendor_list2"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>公司2</td>
                                <td>营销咨询公司</td>
                                <td>2018-11-27</td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="...">
                                        <button type="button" class="btn btn-default">
                                            <i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#vendor_list"></i>
                                        </button>
                                        <button type="button" class="btn btn-default">
                                            <i class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#vendor_list_edit"></i>
                                        </button>
                                    </div>

                                </td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="5">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination pagination-sm">
                                            <li class="page-item"><a class="page-link" href="#">上一页</a></li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">下一页</a></li>
                                        </ul>
                                    </nav>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="vendor_list" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"><i class="fa fa fa-tasks fa-lg"></i>供应商记录</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <label>公司名称 公司1</label>
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6">
                                    公司注册号
                          <input type="text" id="full_name" disabled="disabled" class="form-control" name="full-name" value="440038000029170">
                                </div>
                                <div class="col-md-6">
                                    公司名称
                    <input type="text" id="email_address" disabled="disabled" class="form-control" name="email-address" value="公司1">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    服务类别
                    <select class="form-control" id="sel5" disabled="disabled">
                        <option selected="selected">物业服务企业</option>
                        <option>营销咨询公司</option>
                    </select>
                                </div>
                                <div class="col-md-6">
                                    国家
                    <select class="form-control" id="sel1" disabled="disabled">
                        <option selected="selected">中国</option>
                        <option>马来西亚</option>
                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    城市
                    <select class="form-control" id="sel2" disabled="disabled">
                        <option selected="selected">山西省</option>
                    </select>
                                </div>
                                <div class="col-md-6">
                                    联系方式
                    <input type="text" id="TEL" class="form-control" disabled="disabled" name="username" value="+86 10 6522 9988">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    网页
                    <input type="text" id="WEB" class="form-control" disabled="disabled" name="username" value="www.domain.com.cn">
                                </div>

                                <div class="col-md-6">
                                    邮编
                    <input type="text" id="POST" class="form-control" disabled="disabled" name="username" value="048000">
                                </div>
                            </div>

                            <%--帐户有效--%>
                            <div class="row">
                                <div class="col-md-6">
                                    帐户有效
                                    <select class="form-control" id="sel21" disabled="disabled">
                                        <option selected="selected">有效</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    地址
                    <textarea class="form-control" rows="3" disabled="disabled">山西省太原市小店区高新区</textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="vendor_list2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle2" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle2"><i class="fa fa fa-tasks fa-lg"></i>供应商记录修改</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <label>公司名称 公司1</label>
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6">
                                    公司注册号
                          <input type="text" id="full_name2" class="form-control" name="full-name" value="440038000029170">
                                </div>
                                <div class="col-md-6">
                                    公司名称
                    <input type="text" id="email_address2"  class="form-control" name="email-address" value="公司1">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    服务类别
                    <select class="form-control" id="sel10" >
                        <option selected="selected">物业服务企业</option>
                        <option>营销咨询公司</option>
                    </select>
                                </div>
                                <div class="col-md-6">
                                    国家
                    <select class="form-control" id="sel14" >
                        <option selected="selected">中国</option>
                        <option>马来西亚</option>
                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    城市
                    <select class="form-control" id="sel29" >
                        <option selected="selected">山西省</option>
                    </select>
                                </div>
                                <div class="col-md-6">
                                    联系方式
                    <input type="text" id="TEL2" class="form-control"  name="username" value="+86 10 6522 9988">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    网页
                    <input type="text" id="WEB2" class="form-control" name="username" value="www.domain.com.cn">
                                </div>

                                <div class="col-md-6">
                                    邮编
                    <input type="text" id="POST2" class="form-control" name="username" value="048000">
                                </div>
                            </div>

                            <%--帐户有效--%>
                            <div class="row">
                                <div class="col-md-6">
                                    帐户有效
                                    <select class="form-control" id="sel212">
                                        <option selected="selected">有效</option>
                                        <option>无效</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    地址
                    <textarea class="form-control" rows="3">山西省太原市小店区高新区</textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
