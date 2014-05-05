Imports Oracle.DataAccess.Client
Imports System.Data
Imports System.IO
Imports System.Collections
Imports System.Net

Partial Class Work_Screen
    Inherits System.Web.UI.Page

    'create a list to keep track of the history
    Dim historyList As New List(Of String)


    Protected Sub ExecuteButton_Click(sender As Object, e As System.EventArgs) Handles ExecuteButton.Click
        checkTimeout()
        GridView.DataSource = Nothing
        GridView.DataBind()
        RecordCountLabel.Text = ""

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

                Dim recordcount As Integer
                recordcount = GridView.Rows.Count
                RecordCountLabel.Text() = "Number of Records: " & recordcount
                RecordCountLabel.Visible = True

            End If

            Connection.Close()
            SuccessLabel.Visible = True
        Catch ex As OracleException
            ' Catches all oracle exceptions and attempts to make common ones user-friendly
            Select Case ex.Number
                Case 1
                    Me.ErrorMessage.Text = "Error attempting to insert duplicate data."
                Case 12560
                    Me.ErrorMessage.Text = "The database is unavailable."
                Case 1017
                    Me.ErrorMessage.Text = "Your session has expired."
                    Server.Transfer("Login.aspx", True)
                    Session.Clear()
                Case 942
                    Me.ErrorMessage.Text = "A table or view does not exist.  Check your spelling."
                Case 918
                    Me.ErrorMessage.Text = "A column is ambiguously defined. Add identifier before the column name."
                Case 900
                    Me.ErrorMessage.Text = "Invalid SQL Statement. Check spelling of 'SELECT', 'FROM', and 'WHERE'"
                Case Else
                    Me.ErrorMessage.Text = "Database error: " + ex.Message.ToString()
            End Select
            GridView.DataSource = Nothing
            GridView.DataBind()
            RecordCountLabel.Visible = False
            SuccessLabel.Visible = False
        Catch ex As Exception
            ' Catches all other exceptions
            Me.ErrorMessage.Text = (ex.Message.ToString())
            GridView.DataSource = Nothing
            GridView.DataBind()
            RecordCountLabel.Visible = False
            SuccessLabel.Visible = False
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
                Case 1017
                    Me.ErrorMessage.Text = "Your session has expired."
                    Server.Transfer("Login.aspx", True)
                    Session.Clear()
                Case 942
                    Me.ErrorMessage.Text = "A table or view does not exist.  Check your spelling."
                Case 918
                    Me.ErrorMessage.Text = "A column is ambiguously defined. Add identifier before the column name."
                Case 900
                    Me.ErrorMessage.Text = "Invalid SQL Statement. Check spelling of 'SELECT', 'FROM', and 'WHERE'"
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

        checkTimeout()

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
        checkTimeout()

        TextBox1.Text = String.Empty
        ErrorMessage.Text = String.Empty
        GridView.Visible = False
        FileLabel.Visible = False
        RecordCountLabel.Visible = False
        SuccessLabel.Visible = False

    End Sub

    Protected Sub SaveButton_Click(sender As Object, e As System.EventArgs) Handles SaveButton.Click
        checkTimeout()

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

    Protected Sub ScriptButton_Click(sender As Object, e As System.EventArgs) Handles ScriptButton.Click
        checkTimeout()

        If FileUpload.HasFile Then
            Try
                ' Read in the txt file
                Dim code As String
                Dim tr As IO.TextReader = New IO.StreamReader(FileUpload.PostedFile.InputStream)
                code = tr.ReadToEnd

                ' Set textbox equal to the content of the txt file
                TextBox1.Text = code
            Catch ex As Exception
                ' Catch any excpetions thrown to the label
                FileLabel.Text = "ERROR: " & ex.Message.ToString()
                FileLabel.Visible = True
            End Try
        Else
            FileLabel.Text = "You have not specified a file."
            FileLabel.Visible = True
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        UserIDLabel.Text = Session("username")
        UserNameLabel.Text = getName()

        Session("timeout") = False

        If Session("myHistory") Is Nothing Then
            Session("myHistory") = New List(Of String)
        End If

    End Sub

    Public Function getName() As String
        'retrieves the <title> from a given Url
        Dim request As HttpWebRequest
        Dim response As HttpWebResponse
        Dim header As String = "" 'returned <h1>
        Dim HTML As String = "" 'html returned from web request
        Dim TempArray As Array 'array used to strip out the <h1>
        Dim Temp As String = ""
        Dim DelimiterA() As String = {"<h1>"}
        Dim DelimiterB() As String = {"</h1>"}

        Try
            request = HttpWebRequest.Create("http://netapps.miamioh.edu/directory/?searchstring=" & Session("username"))
            request.Method = WebRequestMethods.Http.Get
            response = request.GetResponse
            Dim streamreader As New StreamReader(response.GetResponseStream())
            HTML = streamreader.ReadToEnd
            response.Close()

            If HTML <> "" Then
                If (InStr(HTML, "<h1>") > 0) And (InStr(HTML, "</h1>") > 0) Then
                    TempArray = HTML.Split(DelimiterA, StringSplitOptions.None)
                    Temp = TempArray(1)
                    TempArray = Temp.Split(DelimiterB, StringSplitOptions.None)
                    header = TempArray(0)
                End If
            End If
        Catch ex As Exception
            header = ""
        End Try

        Return header
    End Function

    Public Function checkTimeout() As Double

        Dim start As Date = Session("sessionStart")

        Dim difference As Double = (DateTime.Now() - start).TotalMinutes

        If (difference > 1) Then
            ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('Your session has ended and you will be redirected to the login page, save all data.');", True)
            Server.Transfer("Login.aspx")
        ElseIf (difference > 0.5) Then
            ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('Your session will timeout in 1 minutes and you will be redirected to the login page, save all data.');", True)
        ElseIf (difference > 17) Then
            ScriptManager.RegisterStartupScript(Me, [GetType](), "showalert", "alert('Your session will timeout in 2 minutes and you will be redirected to the login page, save all data.');", True)
        End If

    End Function
End Class
