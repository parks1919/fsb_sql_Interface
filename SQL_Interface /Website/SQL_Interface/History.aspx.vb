
Partial Class History
    Inherits System.Web.UI.Page
    'create list from "work screen" session
    Public Property history1 As String
    Public Property history2 As String
    Public Property history3 As String
    Public Property history4 As String
    Public Property history5 As String

    Dim history As List(Of String)
    Dim i As Integer

    Protected Sub History_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        history = CType(Session("myHistory"), List(Of String))

        history1 = "<input type='checkbox'/>" + history.Item(0) + "<br/"
        history2 = "<input type='checkbox'/>" + history.Item(1) + "<br/"
        history3 = "<input type='checkbox'/>" + history.Item(2) + "<br/"
        history4 = "<input type='checkbox'/>" + history.Item(3) + "<br/"
        history5 = "<input type='checkbox'/>" + history.Item(4) + "<br/"


        Me.DataBind()
    End Sub
End Class
