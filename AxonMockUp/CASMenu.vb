Public Class CASMenu

    Private _mainMenu As New ArrayList
    Private _menuItems As New MenuItemCollection

    Property MainMenu() As ArrayList
        Get
            Return Me._mainMenu
        End Get
        Set(ByVal value As ArrayList)
            Me._mainMenu = value
        End Set
    End Property

    Property MenuItems() As MenuItemCollection
        Get
            Return Me._menuItems
        End Get
        Set(ByVal value As MenuItemCollection)
            Me._menuItems = value
        End Set
    End Property

End Class
