Imports Oracle.DataAccess.Client
Imports System.Data
Imports System.IO
Imports System.Collections

Partial Class Work_Screen
    Inherits System.Web.UI.Page


    'create a list to keep track of the history
    Dim historyList As New List(Of String)


    Protected Sub ExecuteButton_Click(sender As Object, e As System.EventArgs) Handles ExecuteButton.Click
        'Clear current error message
        ErrorMessage.Text = String.Empty
        Try
           
            ' Attempts to connect to the database
            Dim Connection As New OracleConnection
            Connection.ConnectionString = "Data Source = SBA; user id = " + Session("username") + "; password = " + Session("password")

            Dim Command As New OracleCommand
            Command.CommandText = TextBox1.Text

            'save SQL command to history list
            TryCast(Session("myHistory"), List(Of String)).Add(Command.CommandText)
            Command.Connection = Connection
            Connection.Open()

            Dim Reader As OracleDataReader = Command.ExecuteReader
            If Reader.HasRows Then
                GridView.DataSource = Reader
                GridView.DataBind()
            End If

            Connection.Close()
            GridView.Visible = True
        Catch ex As OracleException
            ' Catches all oracle exceptions and attempts to make common ones user-friendly
            Select Case ex.Number
                Case 1
                    Me.ErrorMessage.Text = "Error attempting to insert duplicate data."
                Case 12560
                    Me.ErrorMessage.Text = "The database is unavailable."
                Case Else
                    Me.ErrorMessage.Text = "Database error: " + ex.Message.ToString()
            End Select
            GridView.Visible = False
        Catch ex As Exception
            ' Catches all other exceptions
            Me.ErrorMessage.Text = (ex.Message.ToString())
            GridView.Visible = False
        End Try


    End Sub


    Private Function GetData() As DataTable
        ' Sets up Oracle connection string
        Dim dt As New DataTable()

        Dim Connection As New OracleConnection
        Connection.ConnectionString = "Data Source = SBA; user id = " + Session("username") + "; password = " + Session("password")

        Dim Command As New OracleCommand
        Command.CommandText = TextBox1.Text
        Command.Connection = Connection

        Dim oda As New OracleDataAdapter()
        Command.CommandType = CommandType.Text
        Command.Connection = Connection

        Try
            ' Tries to connect to database
            Connection.Open()
            oda.SelectCommand = Command
            oda.Fill(dt)
            Return dt
        Catch ex As OracleException
            ' Catches all oracle exceptions and attempts to make common ones user-friendly
            Select Case ex.Number
                Case 1
                    Me.ErrorMessage.Text = "Error attempting to insert duplicate data."
                Case 12560
                    Me.ErrorMessage.Text = "The database is unavailable."
                Case Else
                    Me.ErrorMessage.Text = "Database error: " + ex.Message.ToString()
            End Select
        Catch ex As Exception
            ' Catches all other exceptions
            Me.ErrorMessage.Text = (ex.Message.ToString())
        Finally
            ' Closes the connection
            Connection.Close()
            oda.Dispose()
            Connection.Dispose()
        End Try
    End Function

    Protected Sub ExportButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ExportButton.Click
        'Get the data from database into datatable

        Dim dt As DataTable = GetData()

        'Create a dummy GridView
        Dim GridView1 As New GridView()
        GridView1.AllowPaging = False
        GridView1.DataSource = dt
        GridView1.DataBind()

        Response.Clear()
        Response.Buffer = True
        Response.AddHeader("content-disposition", _
             "attachment;filename=DataTable.xls")
        Response.Charset = ""
        Response.ContentType = "application/vnd.ms-excel"
        Dim sw As New StringWriter()
        Dim hw As New HtmlTextWriter(sw)

        For i As Integer = 0 To GridView1.Rows.Count - 1
            'Apply text style to each Row
            GridView1.Rows(i).Attributes.Add("class", "textmode")
        Next
        GridView1.RenderControl(hw)

        'style to format numbers to string
        Dim style As String = "<style> .textmode{mso-number-format:\@;}</style>"
        Response.Write(style)
        Response.Output.Write(sw.ToString())
        Response.Flush()
        Response.End()
    End Sub


  
    Protected Sub ClearButton_Click(sender As Object, e As System.EventArgs) Handles ClearButton.Click
        TextBox1.Text = String.Empty
        ErrorMessage.Text = String.Empty
        GridView.Visible = False

    End Sub

    Protected Sub SaveButton_Click(sender As Object, e As System.EventArgs) Handles SaveButton.Click
        ' get code from textbox
        Dim code As String
        code = TextBox1.Text

        ' send code to a txt file and save to downloads
        Response.Clear()
        Response.Buffer = True
        Response.AddHeader("content-disposition", _
             "attachment;filename=SQLCode.txt")
        Response.Charset = ""
        Response.ContentType = "application/txt"
        Dim sw As New StringWriter()
        Dim hw As New HtmlTextWriter(sw)

        hw.Write(code)
        Response.Output.Write(sw.ToString())
        Response.Flush()
        Response.End()

    End Sub
    

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        UserIDLabel.Text = Session("username")
        
        If Session("myHistory") Is Nothing Then
            Session("myHistory") = New List(Of String)
        End If

    End Sub
End Class
