<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/MasterPage/axon.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="AxonMockUp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <h3>图表</h3>
    <div class="jumbotron">

        <div class="row">
            <div class="col-md-12">
                <table class="nav">
                    <tr>

                        <td>
                            <label for="lblChartType">图表选项</label>
                        </td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            <select class="form-control" name="rptChartType" id="chartType">
                                <option value="1">折线图</option>
                                <option value="2">条形图</option>
                                <option value="3">饼形图</option>
                            </select>
                        </td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            <%--<button type="submit" id="btnGenerate" class="btn btn-primary">Generate</button>--%>
                            <input type="button" id="btnGenerate" class="btn btn-primary" value="提交" />
                        </td>
                    </tr>
                </table>

            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div id="chartArea"></div>
            </div>
            <div class="col-md-4">
                <table class="table table-hover">
                    <caption>报价数据</caption>
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
                            <td>239</td>
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
    </div>

    <script type="text/javascript">

        jQuery(document).ready(function ($) {
            // Your code here

            $("#btnGenerate").click(function () {

                $('#chartArea').html("");

                //var rptType = $('#rptType').val()
                var chartType = $('#chartType').val()

                getVisual("2", chartType);

            });

            function getVisual(rptType, chartType) {
                var populateChart, ctx, cs, area;

                area = document.createElement('canvas');
                area.height = 150;

                $("#chartArea")[0].appendChild(area);
                ctx = area.getContext('2d');

                //<!-- return !!item && (outOfBounds(location) ? dropOut() : dropIn()); -->
                if (chartType == 1) {

                    console.log(1);
                    populateChart = getAllData(rptType, chartType);
                    window.myLine = new Chart(ctx, populateChart);
                    console.log(populateChart);
                }
                else if (chartType == 2) {

                    console.log(2);
                    populateChart = getAllData(rptType, chartType);
                    window.myLine = new Chart(ctx, populateChart);
                    console.log(populateChart);
                } else {

                    console.log(chartType);
                    populateChart = getAllData(rptType, chartType);
                    console.log(populateChart);
                    window.myLine = new Chart(ctx, populateChart);
                }
            }

            function getAllData(rptType, chartType) {
                var config;

                if (chartType == 1) {
                    config = getLineData("line");

                } else if (chartType == 2) {
                    //<!-- pie -->
                    config = getBarData("bar");

                } else {
                    config = getPieData("pie");
                }

                return config
            }

            function getBarData(rptType) {

                var config, labelType;

                var chartColors = {
                    red: 'rgb(255, 99, 132)',
                    orange: 'rgb(255, 159, 64)',
                    yellow: 'rgb(255, 205, 86)',
                    blue: 'rgb(54, 162, 235)',
                    green: 'rgb(75, 192, 192)',
                    purple: 'rgb(153, 102, 255)',
                    grey: 'rgb(231,233,237)'
                };

                var randomScalingFactor = function () {
                    return Math.round(Math.random() * 250);
                };

                //labelType = ["Asia", "Africa", "North America", "South America", "Europe", "Australia"];
                labelType = ["亚洲", "欧洲", "澳大利亚"];
                config = {
                    type: rptType,
                    data: {
                        labels: labelType,
                        datasets: [{
                            label: '第一季度',
                            data: [
                                239,
                                118,
                                300
                            ],
                            backgroundColor: chartColors.red
                        }, {
                            label: '第二季度',
                            data: [
                                123,
                                220,
                                288
                            ],
                            backgroundColor: chartColors.purple
                        }, {
                            label: '第三季度',
                            data: [
                                352,
                                291,
                                428
                            ],
                            backgroundColor: chartColors.yellow
                        }, {
                            label: '第四季度',
                            data: [
                                300,
                                288,
                                188
                            ],
                            backgroundColor: chartColors.blue
                        }
                        ]
                    },
                    options: {
                        responsive: true,
                        title: {
                            display: true,
                            text: '按地区要求报价图表'
                        },
                        tooltips: {
                            mode: 'label',
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scaleBeginAtZero: true,
                        scales: {
                            xAxes: [{
                                display: true,
                                gridLines: {
                                    display: true
                                },
                                scaleLabel: {
                                    display: true,
                                    labelString: '区域'
                                }
                            }],
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                        }
                    }

                }
                return config;
            }

            function getLineData(rptType) {
                var config, labelType;

                var randomScalingFactor = function () {
                    return (Math.random() > 0.5 ? 1.0 : 2.0) * Math.round(Math.random() * 250);
                }

                var chartColors = {
                    red: 'rgb(255, 99, 132)',
                    orange: 'rgb(255, 159, 64)',
                    yellow: 'rgb(255, 205, 86)',
                    green: 'rgb(75, 192, 192)',
                    blue: 'rgb(54, 162, 235)',
                    purple: 'rgb(153, 102, 255)',
                    grey: 'rgb(231,233,237)'
                };


                labelType = ["亚洲", "欧洲", "澳大利亚"];
                config = {
                    type: rptType,
                    data: {
                        labels: labelType,
                        datasets: [{
                            label: "第一季度",
                            fill: false,
                            borderColor: chartColors.red,
                            backgroundColor: chartColors.red,
                            data: [
                                239,
                                118,
                                300
                            ]

                        }, {
                            label: "第二季度",
                            fill: false,
                            borderColor: chartColors.purple,
                            backgroundColor: chartColors.purple,
                            data: [
                                123,
                                220,
                                288
                            ],
                        }, {
                            label: '第三季度',
                            fill: false,
                            borderColor: chartColors.yellow,
                            backgroundColor: chartColors.yellow,
                            data: [
                                352,
                                291,
                                428
                            ]
                        }, {
                            label: '第四季度',
                            fill: false,
                            backgroundColor: chartColors.blue,
                            borderColor: chartColors.blue,
                            data: [
                                300,
                                228,
                                188
                            ]

                        }
                        ]
                    },
                    options: {
                        responsive: true,
                        title: {
                            display: true,
                            text: '按地区要求报价图表'
                        },
                        tooltips: {
                            mode: 'label',
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scaleBeginAtZero: true,
                        scales: {
                            xAxes: [{
                                display: true,
                                gridLines: {
                                    display: true
                                },
                                scaleLabel: {
                                    display: true,
                                    labelString: '区域'
                                }
                            }],
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                        }
                    }
                };

                return config;
            }

            function getPieData(rptType) {
                var config

                var chartColors = {
                    red: 'rgb(255, 99, 132)',
                    orange: 'rgb(255, 159, 64)',
                    yellow: 'rgb(255, 205, 86)',
                    green: 'rgb(75, 192, 192)',
                    blue: 'rgb(54, 162, 235)',
                    purple: 'rgb(153, 102, 255)',
                    grey: 'rgb(231,233,237)'
                };

                config = {
                    type: rptType,
                    data: {
                        labels: ["第一季度", "第二季度", "第三季度", "第四季度"],
                        datasets: [{
                            backgroundColor: [
                                chartColors.red,
                                chartColors.purple,
                                chartColors.yellow,
                                chartColors.blue
                            ],
                            data: [657, 631, 1071, 776]
                        }]
                    },
                    options: {
                        responsive: true,
                        title: {
                            display: true,
                            text: '按地区要求报价图表'
                        },
                        tooltips: {
                            mode: 'label',
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        }
                    }

                };

                return config;
            }
        });
</script>

</asp:Content>
