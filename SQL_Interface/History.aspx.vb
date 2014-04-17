
Partial Class History
    Inherits System.Web.UI.Page
    'create list from Work_screen.aspx session
    'and save it to theHistory string 
    Public Property theHistory As String
    Dim history As List(Of String)
    Dim i As Integer

    Protected Sub History_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        history = CType(Session("myHistory"), List(Of String))

            For Me.i = 0 To history.Count - 1
                theHistory &= "<input type='checkbox'/>" + history.Item(i) + "<br/>"

            Next Me.i
            h.InnerHtml = theHistory
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As System.EventArgs) Handles LinkButton1.Click

    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        history.Clear()
        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
    End Sub
End Class

