<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/axon.Master" CodeBehind="Default.aspx.vb" Inherits="AxonMockUp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h3>主页</h3>

        <div class="row">
            <div class="col-md-6">
                <div class="row">

                    <div class="col-md-4 col-color-blue">
                        <i class="fa fa-handshake-o fa-4x txt-color-white" aria-hidden="true"></i>
                        <span class="txt-color-white txt-cus-size-sm">供应商报价总数</span>
                        <br />
                        <span class="txt-color-white txt-cus-size-lg">598</span>
                    </div>
                    <div class="col-md-4 col-color-orange">
                        <i class="fa fa-jpy fa-4x txt-color-white" aria-hidden="true"></i>
                        <span class="txt-color-white txt-cus-size-sm">销售总额</span>
                        <br />
                        <span class="txt-color-white txt-cus-size-lg">2,880,50,12</span>
                    </div>
                    <div class="col-md-4 col-color-Cyan">
                        <i class="fa fa-black-tie fa-4x txt-color-white" aria-hidden="true"></i>
                        <span class="txt-color-white txt-cus-size-sm">在勤人员</span>
                        <br />
                        <span class="txt-color-white txt-cus-size-lg">268</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-color-green">
                        <i class="fa fa-bar-chart fa-4x txt-color-white" aria-hidden="true"></i>
                        <span class="txt-color-white txt-cus-size-sm">最新成交</span>
                        <br />
                        <span class="txt-color-white txt-cus-size-lg">245</span>
                    </div>
                    <div class="col-md-4 col-color-red">
                        <i class="fa fa-line-chart fa-4x txt-color-white" aria-hidden="true"></i>
                        <span class="txt-color-white txt-cus-size-sm">利润总额</span>
                        <br />
                        <span class="txt-color-white txt-cus-size-lg">2,093,99,43</span>
                    </div>
                    <div class="col-md-4 col-color-Gray">
                        <i class="fa fa-calculator fa-4x txt-color-white" aria-hidden="true"></i>
                        <span class="txt-color-white txt-cus-size-sm">期间成本</span>
                        <br />
                        <span class="txt-color-white txt-cus-size-lg">786,50,69</span>
                    </div>
                </div>

                <div class="row">

                    <div class="col-md-12">

                        <table class="table table-hover">
                            <caption>销售数据</caption>
                            <thead>
                                <tr>
                                    <th scope="col">区域</th>
                                    <th scope="col">第一季度</th>
                                    <th scope="col">第二季度</th>
                                    <th scope="col">第三季度</th>
                                    <th scope="col">第四季度</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">亚洲</th>
                                    <td>34</td>
                                    <td>123</td>
                                    <td>352</td>
                                    <td>300</td>
                                </tr>
                                <tr>
                                    <th scope="row">欧洲</th>
                                    <td>118</td>
                                    <td>220</td>
                                    <td>291</td>
                                    <td>288</td>
                                </tr>
                                <tr>
                                    <th scope="row">澳大利亚</th>
                                    <td>300</td>
                                    <td>288</td>
                                    <td>428</td>
                                    <td>188</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th scope="row">总和</th>
                                    <td>657</td>
                                    <td>631</td>
                                    <td>1071</td>
                                    <td>776</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>

                <%--nav--%>
                <div class="row">

                    <div class="col-md-12">

                        <table class="table">
                            <caption>公告内容</caption>
                            <tr>
                                <td>
                                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">总和</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">人事部</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">其他类别</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade in active" id="home" role="tabpanel" aria-labelledby="home-tab">

                                            <table class="table table-hover">

                                                <tbody>
                                                    <tr>
                                                        <th scope="row">新疆落实习近平总书记全国两会重要讲话精神纪实
                                                            <span class="label label-danger">新</span>
                                                        </th>
                                                        <td>2019-02-23</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">古巴通过新宪法：规定国家元首任期 增设总理一职</th>
                                                        <td>2019-02-23</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">536亿！神秘90后女生成中国最年轻女首富</th>
                                                        <td>2019-02-22</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">美股三大指数小幅收涨 热门中概股集体上扬</th>
                                                        <td>2019-02-21</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">24小时争夺战：便利店夜未眠</th>
                                                        <td>2019-02-20</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">北京气温回升春菜渐上市 新发地菜价降一成</th>
                                                        <td>2019-02-18</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <nav aria-label="Page navigation example">
                                                                <ul class="pagination pagination-sm">
                                                                    <li class="page-item"><a class="page-link" href="#">上一页</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">下一页</a></li>
                                                                </ul>
                                                            </nav>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                            </table>
                                        </div>
                                        <div class="tab-pane fade in" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                                            <table class="table table-hover">

                                                <tbody>
                                                    <tr>
                                                        <th scope="row">随时代同行 与大局共振——2018年全省组织工作综述</th>
                                                        <td>2019-02-23</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">休假赔偿,别只是解聘博弈的筹码</th>
                                                        <td>2019-02-23</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">绿地安徽2019地产精英招聘会 职为梦想而来</th>
                                                        <td>2019-02-22</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">技术大牛的职场危机</th>
                                                        <td>2019-02-21</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">黄州区春风“送岗”留住返乡农民工</th>
                                                        <td>2019-02-20</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">吉林2019年度二级建造师执业资格考试考务工作的通知</th>
                                                        <td>2019-02-18</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <nav aria-label="Page navigation example">
                                                                <ul class="pagination pagination-sm">
                                                                    <li class="page-item"><a class="page-link" href="#">上一页</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">下一页</a></li>
                                                                </ul>
                                                            </nav>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                            </table>

                                        </div>
                                        <div class="tab-pane fade in" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                            <table class="table table-hover">

                                                <tbody>
                                                    <tr>
                                                        <th scope="row">PP体育和苏宁易购“兄弟”携手 让利中超球迷</th>
                                                        <td>2019-02-23</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2018年首届全国百强青少年体育俱乐部评选活动细则</th>
                                                        <td>2019-02-23</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">苏宁开启电商体育直播时代,推进零售全场景布局</th>
                                                        <td>2019-02-22</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">光大证券海外项目滑铁卢 折戟体育产业净利预减55%</th>
                                                        <td>2019-02-21</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">黄州区春风“送岗”留住返乡农民工</th>
                                                        <td>2019-02-20</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">广西"官宣"61个体育旅游认定项目 8个获国家殊荣</th>
                                                        <td>2019-02-18</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <nav aria-label="Page navigation example">
                                                                <ul class="pagination pagination-sm">
                                                                    <li class="page-item"><a class="page-link" href="#">上一页</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                                    <li class="page-item"><a class="page-link" href="#">下一页</a></li>
                                                                </ul>
                                                            </nav>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>

                    </div>
                </div>

            </div>

            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12">
                        <div id="calendar"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-hover">

                            <tr>
                                <th scope="row">13:30</th>
                                <td>主持发布会</td>

                            </tr>
                            <tr>
                                <th scope="row">16:30</th>
                                <td>公司办公楼五楼大会议室</td>
                            </tr>

                            <tfoot>
                                <tr>
                                    <td class="text-center" colspan="2">
                                        <i class="fa fa-plus-circle fa-2x txt-color-pink" data-toggle="modal" data-target="#exampleModalLong" aria-hidden="true"></i>
                                    </td>
                                </tr>

                            </tfoot>
                        </table>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <%--pop up--%>
    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">添加日程表</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">

                        <div class="container-fluid mt">
                            <div class="row">
                                <div class="form-group pull-right">
                                    <asp:Button ID="btnUpdatePersonal" runat="server" class="btn btn-success" Text="提交" ValidationGroup="Personal" />
                                    <asp:Button ID="btnClearPersonal" runat="server" CausesValidation="False" class="btn btn-secondary" Text="重置" />
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


                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
