<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage/axon.Master" CodeBehind="OrganizationChart.aspx.vb" Inherits="AxonMockUp.OrganizationChart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { packages: ["orgchart"] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Name');
            data.addColumn('string', 'Manager');
            data.addColumn('string', 'ToolTip');

            // For each orgchart box, provide the name, manager, and tooltip to show.
            data.addRows([
                [{ v: 'Alert', f: 'Alert<div><span class="label label-light">Group President</span></div>' },
                    '', 'Group President'],
                [{ v: 'Talos', f: 'Talos<div><span class="label label-light">General Manager</span></div>' },
                    'Alert', ''],

                ['Finance', 'Talos', ''],
                ['HR & Admin', 'Talos', ''],
                ['Sales', 'Talos', ''],
                ['R & D', 'Talos', ''],
                ['Design', 'Talos', ''],
                ['Material', 'Talos', ''],

                [{ v: 'Alice', f: 'Alice<div><span class="label label-light">Manager</span></div>' }, 'Finance',''],
                [{ v: 'Bob', f: 'Bob<div><span class="label label-light">Manager</span></div>' }, 'HR & Admin',''],
                [{ v: 'Carol', f: 'Carol<div><span class="label label-light">Manager</span></div>' }, 'Sales', ''],
                [{ v: 'Loo', f: 'Loo<div><span class="label label-light">Manager</span></div>' }, 'R & D',''],
                [{ v: 'Tae', f: 'Tae<div><span class="label label-light">Manager</span></div>' }, 'Design',''],
                [{ v: 'Apple', f: 'Apple<div><span class="label label-light">Manager</span></div>' }, 'Material', ''],
                [{ v: 'Andrew', f: 'Andrew<div><span class="label label-light">Assistant Manager</span></div>' }, 'Material',''],
                [{ v: 'Ooi', f: 'Ooi<div><span class="label label-light">Assistant Manager</span></div>' }, 'Design',''],
                [{ v: 'Teh', f: 'Teh<div><span class="label label-light">Assistant Manager</span></div>' }, 'Sales', ''],
                [{ v: 'Alen', f: 'Alen<div><span class="label label-light">Assistant Manager</span></div>' }, 'Finance', ''],
                [{ v: 'Mike', f: 'Mike<div><span class="label label-light">Assistant Manager</span></div>' }, 'R & D', '']
            ]);

            data.setRowProperty(0, 'style', 'background:#FFDE03 !important;border:none;');
            data.setRowProperty(1, 'style', 'background:#80DEEA !important;border:none;');
            data.setRowProperty(2, 'style', 'background:#A7FFEB !important;border:none;');
            data.setRowProperty(3, 'style', 'background:#A7FFEB !important;border:none;');
            data.setRowProperty(4, 'style', 'background:#A7FFEB !important;border:none;');
            data.setRowProperty(5, 'style', 'background:#A7FFEB !important;border:none;');
            data.setRowProperty(6, 'style', 'background:#A7FFEB !important;border:none;');
            data.setRowProperty(7, 'style', 'background:#A7FFEB !important;border:none;');

            data.setRowProperty(8, 'style', 'background:#BA68C8 !important;border:none;');
            data.setRowProperty(9, 'style', 'background:#BA68C8 !important;border:none;');
            data.setRowProperty(10, 'style', 'background:#BA68C8 !important;border:none;');
            data.setRowProperty(11, 'style', 'background:#BA68C8 !important;border:none;');
            data.setRowProperty(12, 'style', 'background:#BA68C8 !important;border:none;');

            data.setRowProperty(13, 'style', 'background:#BA68C8 !important;border:none;');
            data.setRowProperty(14, 'style', 'background:#BA68C8 !important;border:none;');
            data.setRowProperty(15, 'style', 'background:#BA68C8 !important;border:none;');
            data.setRowProperty(16, 'style', 'background:#BA68C8 !important;border:none;');
            data.setRowProperty(17, 'style', 'background:#BA68C8 !important;border:none;');
            data.setRowProperty(18, 'style', 'background:#BA68C8 !important;border:none;');
            
            


            // Create the chart.
            var chart = new google.visualization.OrgChart(document.getElementById('chart_div'));
            // Draw the chart, setting the allowHtml option to true for the tooltips.
            chart.draw(data, { allowHtml: true });
        }
    </script>

    <style type="text/css">
        #Organizationchart table {
            border-spacing: 0;
            border-collapse: separate;
        }

        #Organizationchart tr td {
            line-height: 15px;
        }

        .title {
            font-weight: bold;
        }

        .google-visualization--orgchart-node-medium {
            font-size: 13px;
        }

        table {
            border-collapse: separate !important;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="chart_div"></div>


</asp:Content>
