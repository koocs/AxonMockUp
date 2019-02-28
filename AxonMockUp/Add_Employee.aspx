<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/axon.Master" CodeBehind="Add_Employee.aspx.vb" Inherits="AxonMockUp.Add_Employee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel panel-default">
        <div class="panel-heading">
            <label>添加员工记录</label>
        </div>

        <div class="panel-body">

            <div class="row">
                <div class="col-md-6 col-md-2 pull-right ">
                    <img src="../images/profile.png" alt="" class="img-rounded img-responsive" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" value="上传" class="btn btn-secondary" />
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    员工编号
                          <input type="text" id="full_name2" class="form-control" name="full-name">
                </div>
                <div class="col-md-6">
                    员工名称
                    <input type="text" id="email_address2" class="form-control" name="email-address">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    部门
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
                </div>
                <div class="col-md-6 form-group">
                    到职日
                    <div class="input-group input-append date">
                        <input type="text" class="form-control" name="date" />
                        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
                </div>
            </div>
            <br /><br />
            <div class="row">
                <div class="col-md-6">
                    部门主管
                    <select class="form-control" >
                        <option selected="selected">Peter Lim</option>
                        <option>Tim Loo</option>
                        <option>Angeline</option>
                    </select>
                </div>
                <div class="col-md-6">
                    职位
                    <select class="form-control" >
                        <option selected="selected">经理</option>
                        <option>普通职员</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 form-group">
                    出生日期
                    <div class="input-group input-append date">
                        <input type="text" class="form-control" name="date" />
                        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
                </div>
                <div class="col-md-6">
                    身度
                    <input type="number" id="TEL2" class="form-control" name="username">
                </div>
            </div>

            <br /><br />

            <div class="row">
                <div class="col-md-6 form-group">
                    性别
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-default">
                            <input type="radio" name="quality[25]" value="1" />
                            男
                        </label>
                        <label class="btn btn-default">
                            <input type="radio" name="quality[25]" value="2" />
                            女
                        </label>
                    </div>

                </div>

                <div class="col-md-6">
                    婚姻状况
                     <div class="btn-group" data-toggle="buttons">
                         <label class="btn btn-default">
                             <input type="radio" name="quality[25]" value="1" />
                             已婚
                         </label>
                         <label class="btn btn-default">
                             <input type="radio" name="quality[25]" value="2" />
                             未婚
                         </label>
                     </div>
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
                <div class="col-md-6">
                    国家
                    <select class="form-control" id="sel1">
                        <option selected="selected">中国</option>
                        <option>马来西亚</option>
                    </select>
                </div>
            </div>
            <br /><br />
            <div class="row">
                <div class="col-md-6">
                    联系方式
                          <input type="text" class="form-control" name="full-name">
                </div>
                <div class="col-md-6">
                    身份证
                    <input type="text" class="form-control" name="email-address">
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    地址
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>
            <br />
            <br />

        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <label>教育程度</label>
        </div>

        <div class="panel-body">
            <div class="row">

                <div class="col-md-12">

                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th style="width: 20%" scope="col">学历</th>
                                <th style="width: 15%" scope="col">学校名称</th>
                                <th style="width: 15%" scope="col">地点</th>
                                <th style="width: 15%" scope="col">(从)年份</th>
                                <th style="width: 15%" scope="col">(至)年份</th>
                                <th style="width: 20%" scope="col">科系</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <div class="input-group">
                                        <input type="text" class="form-control" />
                                        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                    </div>
                                </td>
                                <td>
                                    <div class="input-group">
                                        <input type="text" class="form-control" />
                                        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                    </div>
                                </td>
                                <td></td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="6">
                                    <i class="fa fa-plus-circle fa-2x pull-right" aria-hidden="true"></i>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>

        <div class="row">

            <div class="col-md-12 ">

                <button type="submit" class="btn btn-secondary pull-right">
                    重置
                                       
                </button>

                <button type="submit" class="btn btn-primary pull-right">
                    提交
                                       
                </button>
                &nbsp;&nbsp;
            </div>

            <br />
            <br />
        </div>
    </div>
</asp:Content>
