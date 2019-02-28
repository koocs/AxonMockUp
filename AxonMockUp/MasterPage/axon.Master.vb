Imports System.Configuration
Imports System.Data
Imports System.Data.SqlClient

Public Class axon
    Inherits System.Web.UI.MasterPage

    Private dtMenu As DataTable
    Private clMenu As CASMenu
    Private DBConnection As String = "Data Source=45.115.36.182;Initial Catalog=Axon_Dev;persist security info=false;user id=sa;pwd=oiBoleh@2018;packet size=4069"
    ReadOnly Property MenuDS() As DataTable
        Get
            If dtMenu Is Nothing Then
                dtMenu = Me.fncGetMenuDataSource()
            End If
            Return dtMenu
        End Get
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' If Not Page.IsPostBack Then

        If Session("gc_strSessionLang") Is Nothing Then

            Session("gc_strSessionLang") = "2"

        End If


        If Session("gc_strSessionLang") = "2" Then
            Me.imglang.ImageUrl = "../images/lang_chn.jpg"
            Me.lblLang.Text = "简体中文"
            Me.lblLang.CssClass = "chn fontSizeSmall"
        ElseIf Session("gc_strSessionLang") = "3" Then
            Me.imglang.ImageUrl = "../images/lang_ind.jpg"
            Me.lblLang.Text = "Indonesia"
        Else
            Me.imglang.ImageUrl = "../images/lang_eng.jpg"
            Me.lblLang.Text = "English"
        End If

        initMenu()
        subInit()
        subLang()
        '  End If

    End Sub

    Private Sub subChangeLang(ByVal num As Integer)
        Select Case num
            Case 2
                Me.imglang.ImageUrl = "../images/lang_chn.jpg"
                Me.lblLang.Text = "简体中文"
                Session("gc_strSessionLang") = "2"
                Page.Response.Redirect(Page.Request.Url.AbsoluteUri)

            Case Else

                Me.imglang.ImageUrl = "../ images / lang_eng.jpg"
                Me.lblLang.Text = "English"
                Session("gc_strSessionLang") = "1"
                Page.Response.Redirect(Page.Request.Url.AbsoluteUri)
        End Select
    End Sub

    Protected Sub btnLangEng_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLangEng.Click
        Me.subChangeLang(1)
    End Sub

    Protected Sub btnLangChn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLangChn.Click
        Me.subChangeLang(2)
    End Sub

    Private Sub subLang()

        If Session("gc_strSessionLang") = "1" Then
            Me.lblWelcome.Text = ""
            Me.lblUserID.Text = "Developer"
            Me.lnkbtnLogout.Text = "<i class='fa fa-sign-out fa-fw'></i>Logout"

            Me.lnkbtnMyDetail.Text = "<i class='fa fa-user fa-fw'></i>My Details"
        Else
            Me.lblWelcome.Text = ""
            Me.lnkbtnLogout.Text = "<i class='fa fa-sign-out fa-fw'></i>登出"
            Me.lblUserID.Text = "开发人员"
            Me.lnkbtnMyDetail.Text = "<i class='fa fa-user fa-fw'></i>我的个人资料"
        End If

    End Sub

    Private Sub initMenu()

        Dim dtMenu As DataTable = Me.MenuDS
        Dim item As MenuItem

        Dim path As String = HttpContext.Current.Request.Url.AbsolutePath
        Dim parentUID As String = subgetMenuParentUID(path)

        If dtMenu.Rows.Count > 0 Then

            Session("MenuUIDs") = dtMenu.Rows(0).Item("MenuUIDs").ToString & String.Empty
            ' Me.uCtx.SVar.MenuUIDs = dtMenu.Rows(0).Item("MenuUIDs").ToString & String.Empty

            For Each dtRow As DataRow In dtMenu.Rows

                item = New MenuItem()
                item.MenuID = dtRow("UID").ToString() & String.Empty
                item.Name = dtRow("NodeName").ToString() & String.Empty
                item.Description = String.Empty
                item.NavigateURL = dtRow("NavigateURL").ToString() & String.Empty
                item.ModuleID = dtRow("ModuleUID").ToString() & String.Empty
                item.ParentID = dtRow("ParentUID").ToString() & String.Empty
                item.fa_Icon = dtRow("fa_icon").ToString() & String.Empty
                ''root
                If item.ParentID = String.Empty Then

                    AddMenuItem(item.Name, item.NavigateURL, dtMenu, item.MenuID, item.fa_Icon, parentUID)

                End If

            Next

        End If

    End Sub
    Private Sub AddMenuItem(ByVal text As String, ByVal link As String, ByVal dtMenu As DataTable, ByVal MenuID As String, ByVal fa_icon As String, ByVal urlPathUID As String)

        Dim item As MenuItem
        Dim spaces As String = Space(1)

        Dim li As HtmlGenericControl = New HtmlGenericControl("li")
        Dim i As HtmlGenericControl = New HtmlGenericControl("i")
        Dim span As HtmlGenericControl = New HtmlGenericControl("span")
        Dim spanText As HtmlGenericControl = New HtmlGenericControl("span")
        Dim anchor As HtmlGenericControl = New HtmlGenericControl("a")
        Dim ul As HtmlGenericControl = New HtmlGenericControl("ul")
        Dim sub_li As HtmlGenericControl = New HtmlGenericControl("li")

        'selected menu
        If MenuID = urlPathUID Then
            li.Attributes.Add("class", "active")

        End If

        ul.Attributes.Add("class", "nav nav-second-level")
        span.Attributes.Add("class", "fa arrow")
        spanText.InnerText = String.Concat(spaces, text, spaces)
        i.Attributes.Add("class", fa_icon)

        anchor.Attributes.Add("href", "#")
        'anchor.Attributes.Add("class", fa_icon)
        'anchor.InnerText = String.Concat(spaces, text, spaces)
        'i.InnerText = String.Concat(spaces, text, spaces)

        anchor.Controls.Add(i)
        anchor.Controls.Add(spanText)
        anchor.Controls.Add(span)
        li.Controls.Add(anchor)

        sidemenu.Controls.Add(li)

        For Each dtRow As DataRow In dtMenu.Rows

            item = New MenuItem()
            item.MenuID = dtRow("UID").ToString() & String.Empty
            item.Name = dtRow("NodeName").ToString() & String.Empty
            item.Description = String.Empty
            item.NavigateURL = dtRow("NavigateURL").ToString() & String.Empty
            item.ModuleID = dtRow("ModuleUID").ToString() & String.Empty
            item.ParentID = dtRow("ParentUID").ToString() & String.Empty

            If item.ParentID = MenuID Then

                sub_li = AddSubMenu(item.Name, item.NavigateURL, li, dtMenu, MenuID)

                ul.Controls.Add(sub_li)
                li.Controls.Add(ul)

                sidemenu.Controls.Add(li)

            End If

            ' Me.MenuCL.MenuItems.Add(item)
        Next


    End Sub

    Private Function AddSubMenu(ByVal text As String, ByVal link As String, ByVal li As HtmlGenericControl, ByVal dtMenu As DataTable, ByVal MenuID As String) As HtmlGenericControl
        Dim item As MenuItem

        Dim sub_li As HtmlGenericControl = New HtmlGenericControl("li")
        Dim anchor As HtmlGenericControl = New HtmlGenericControl("a")

        For Each dtRow As DataRow In dtMenu.Rows

            item = New MenuItem()
            item.MenuID = dtRow("UID").ToString() & String.Empty
            item.Name = dtRow("NodeName").ToString() & String.Empty
            item.Description = String.Empty
            item.NavigateURL = dtRow("NavigateURL").ToString() & String.Empty
            item.ModuleID = dtRow("ModuleUID").ToString() & String.Empty
            item.ParentID = dtRow("ParentUID").ToString() & String.Empty


            If item.MenuID = MenuID Then


                anchor.Attributes.Add("href", "..\" + link)

                anchor.InnerText = text

                sub_li.Controls.Add(anchor)

            End If

            ' Me.MenuCL.MenuItems.Add(item)
        Next

        Return sub_li

    End Function
    Private Function subgetMenuParentUID(ByVal urlpath As String) As String


        Dim strErrMsg As String = String.Empty
        Dim strSQL As String = "prc_User_sel#MenuUID " & urlpath

        Dim parentUID = String.Empty

        Dim dtTable As DataTable = fncQueryDb(DBConnection, strSQL, strErrMsg)

        For Each dtRow As DataRow In dtTable.Rows
            parentUID = dtRow("ParentUID").ToString()
        Next

        Return parentUID

    End Function

    Private Function fncQueryDb(ByVal v_strDBConnection As String, ByVal v_strSQL As String, ByRef r_strErrMsg As String) As DataTable

        Dim sqlConnection1 As SqlConnection = New SqlConnection()
        Dim sqlCommand1 As SqlCommand = New SqlCommand()
        Dim sqlDataAdapter1 As SqlDataAdapter = New SqlDataAdapter()
        Dim dataTable As DataTable = New DataTable()
        Dim num As Integer = 0
        If ConfigurationManager.AppSettings("oiFramework.CmdTimeout") IsNot Nothing Then num = Integer.Parse(ConfigurationManager.AppSettings("oiFramework.CmdTimeout").ToString())

        Try
            Dim sqlConnection2 As SqlConnection = sqlConnection1
            sqlConnection2.ConnectionString = v_strDBConnection
            sqlConnection2.Open()
            Dim sqlCommand2 As SqlCommand = sqlCommand1
            sqlCommand2.CommandText = v_strSQL
            sqlCommand2.Connection = sqlConnection1
            sqlCommand2.CommandTimeout = num
            Dim sqlDataAdapter2 As SqlDataAdapter = sqlDataAdapter1
            sqlDataAdapter2.SelectCommand = sqlCommand1
            sqlDataAdapter2.Fill(dataTable)
        Catch ex As Exception

            Dim exception As Exception = ex
            r_strErrMsg = exception.Message

        End Try

        sqlConnection1.Close()
        Return dataTable

    End Function

    Private Function fncGetMenuDataSource() As DataTable

        Dim strErrMsg As String = String.Empty
        Dim dtMenu As DataTable = New DataTable

        Dim strSQL As String = "prc_User_sel#Menu 1, " & Session("gc_strSessionLang")
        'Dim strSQL As String = "prc_User_sel#Menu_Vendor 1, " & Session("gc_strSessionLang")

        'dtMenu = fncUser_Sel_Menu(MyBase.uCtx.UserGroupUID, Session(oiConstant.gc_strSessionLang), strErrMsg)
        dtMenu = fncQueryDb(DBConnection, strSQL, strErrMsg)

        If strErrMsg <> String.Empty Then

            ScriptManager.RegisterClientScriptBlock(Me, GetType(String), "Error", "alert('" & strErrMsg & "');", True)

        End If

        Return dtMenu

    End Function

    Private Sub subInit()


        Me.lblWelcome.Text = "Welcome, "
        Me.lnkbtnLogout.Text = "<i class='fa fa-sign-out fa-fw'></i>Logout"
        Me.imgLogo.ImageUrl = "../images/axon-logo.png"

        Me.lnkbtnMyDetail.Text = "<i class='fa fa-user fa-fw'></i>My Details"


    End Sub

End Class