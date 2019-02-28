<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/axon.Master" CodeBehind="OrganizationChart_Create.aspx.vb" Inherits="AxonMockUp.OrganizationChart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel panel-default">
        <div class="panel-heading">
            <label>建立组织结构</label>
        </div>

        <div class="panel-body">

             <div class="row well-sm" >
                <button type="button" class="btn btn-light pull-right">
                    <i class="fa fa-th">
                    </i> 查看组织结构
                </button>
            </div>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">员工名称</th>
                        <th scope="col">部门</th>
                        <th scope="col">职位</th>
                        <th scope="col">部门主管</th>
                        <th>查看</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <select class="form-control" id="sel212">
                                <option selected="selected">Tim</option>
                                <option>Alert</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-control" id="sel10">
                                <option selected="selected">财务部门</option>
                                <option>人力资源与管理</option>
                                <option>销售部门</option>
                                <option>生产部门</option>
                                <option>R & D</option>
                                <option>设计部门</option>
                                <option>材料部门</option>
                                <option>质量控制部门</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-control">
                                <option selected="selected">经理</option>
                                <option>普通职员</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-control">
                                <option selected="selected">Peter Lim</option>
                                <option>Tim Loo</option>
                                <option>Angeline</option>
                            </select>
                        </td>
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
                        <td>
                            <select class="form-control">
                                <option>Tim</option>
                                <option selected="selected">Alert</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-control" >
                                <option >财务部门</option>
                                <option>人力资源与管理</option>
                                <option>销售部门</option>
                                <option>生产部门</option>
                                <option>R & D</option>
                                <option selected="selected">设计部门</option>
                                <option>材料部门</option>
                                <option>质量控制部门</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-control">
                                <option>经理</option>
                                <option  selected="selected">普通职员</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-control">
                                <option>Peter Lim</option>
                                <option>Tim Loo</option>
                                <option  selected="selected">Angeline</option>
                            </select>
                        </td>
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
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="4">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination pagination-sm">
                                    <li class="page-item"><a class="page-link" href="#">上一页</a></li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">下一页</a></li>
                                </ul>
                            </nav>
                        </td>
                        <td>
                            <i class="fa fa-plus-circle fa-2x pull-right" aria-hidden="true"></i>
                        </td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>

</asp:Content>
