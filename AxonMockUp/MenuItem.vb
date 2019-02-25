Public Class MenuItem

    Private strMenuID As String
    Private strfa_icon As String
    Private strName As String
    Private strDescription As String
    Private strNavigateURL As String
    Private strParentID As String
    Private strModuleUID As String
    Private parentItem As MenuItem
    Private arrSubItems As ArrayList

    Property MenuID() As String
        Get
            Return Me.strMenuID
        End Get
        Set(ByVal value As String)
            Me.strMenuID = value
        End Set
    End Property

    Property fa_Icon() As String
        Get
            Return Me.strfa_icon
        End Get
        Set(ByVal value As String)
            Me.strfa_icon = value
        End Set

    End Property
    Property Name() As String
        Get
            Return Me.strName
        End Get
        Set(ByVal value As String)
            Me.strName = value
        End Set
    End Property

    Property Description() As String
        Get
            Return Me.strDescription
        End Get
        Set(ByVal value As String)
            Me.strDescription = value
        End Set
    End Property

    Property NavigateURL() As String
        Get
            Return Me.strNavigateURL
        End Get
        Set(ByVal value As String)
            Me.strNavigateURL = value
        End Set
    End Property

    Property ModuleID() As String
        Get
            Return Me.strModuleUID
        End Get
        Set(ByVal value As String)
            Me.strModuleUID = value
        End Set
    End Property

    Property ParentMenuItem() As MenuItem
        Get
            Return Me.parentItem
        End Get
        Set(ByVal value As MenuItem)
            Me.parentItem = value
        End Set
    End Property

    Property ParentID() As String
        Get
            Return Me.strParentID
        End Get
        Set(ByVal value As String)
            Me.strParentID = value
        End Set
    End Property

    Property SubItems() As ArrayList
        Get
            If Me.arrSubItems Is Nothing Then
                Me.arrSubItems = New ArrayList()
            End If
            Return Me.arrSubItems
        End Get
        Set(ByVal value As ArrayList)
            Me.arrSubItems = value
        End Set
    End Property

End Class
