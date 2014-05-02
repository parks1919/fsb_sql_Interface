Imports Oracle.DataAccess.Client

Partial Class Login
    Inherits System.Web.UI.Page

    Public username As String
    Public password As String

    Protected Sub LoginButton_Click(sender As Object, e As System.EventArgs) Handles LoginButton.Click
        If (Me.UsernameTextBox.Text = String.Empty) Then
            Me.ErrorMessage.Text = "Please enter a username."
            ' Requires an username for clicking submit
        ElseIf (Me.PasswordTextBox.Text = String.Empty) Then
            Me.ErrorMessage.Text = "Please enter a password."
            ' Requires a password for clicking sumbit
        Else
            Session("username") = Me.UsernameTextBox.Text
            Session("password") = Me.PasswordTextBox.Text
            Try
                ' Attempt to connect to the database with the given credentials
                Dim Connection As New OracleConnection
                Connection.ConnectionString = "Data Source = SBA; user id = " + Session("username") + "; password = " + Session("password")

                Connection.Open()
                Connection.Close()

                Session("sessionStart") = DateTime.Now()

                Server.Transfer("Work_Screen.aspx", True)

            Catch ex As OracleException
                ' Catches all oracle exceptions and makes common errors user-friendly
                Select Case ex.Number
                    Case 1
                        Me.ErrorMessage.Text = "Error attempting to insert duplicate data."
                    Case 12560
                        Me.ErrorMessage.Text = "The database is unavailable."
                    Case 1017
                        Me.ErrorMessage.Text = "Invalid username or password."
                    Case Else
                        Me.ErrorMessage.Text = "Database error: " + ex.Message.ToString()
                End Select
            Catch ex As Exception
                ' Catches all other exceptions
                Me.ErrorMessage.Text = (ex.Message.ToString())
            End Try
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Session.Clear()
    End Sub
End Class

