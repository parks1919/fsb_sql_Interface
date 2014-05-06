<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Work_Screen.aspx.vb" Inherits="Work_Screen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style3
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style4
        {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="30px" 
            ImageUrl="~/SQL_Interface/Miami.jpg" />
    
        <span class="style1"><span class="style3">Oracle&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Label ID="UserIDLabel" runat="server" 
            style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
        <br />
&nbsp;<asp:HyperLink ID="HistoryHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/History.aspx" CssClass="style3">History</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HelpHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/Help.aspx" CssClass="style3">Help</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="LogoutHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/Login.aspx" 
            style="font-family: Arial, Helvetica, sans-serif">Logout</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="UserNameLabel" runat="server" style="font-family: Arial, Helvetica, Sans-Serif"></asp:Label>
        <br />
        <br />
        <br />
        <span class="style2">Work Screen</span><br />
        <span class="style3"><span class="style4"> File or URL:
        &nbsp;&nbsp;<asp:FileUpload ID="FileUpload" runat="server" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="FileLabel" runat="server" 
            style="font-family: Arial, Helvetica, sans-serif" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ScriptButton" runat="server" Text="LoadScript" style="font-family: Arial, Helvetica, sans-serif" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="167px" Width="529px" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ExecuteButton" runat="server" Text="Execute" 
            CssClass="style3" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SaveButton" runat="server" Text="SaveScript" 
            CssClass="style3" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ExportButton" runat="server" Text="Export" CssClass="style3" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ClearButton" runat="server" Text="Clear" CssClass="style3" />
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="RecordCountLabel" runat="server"></asp:Label>
        <br />
        <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red" Font-Names="Arial"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView" runat="server" BackColor="White" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" 
            ForeColor="Black" style="font-family: Arial, Helvetica, sans-serif">
            <AlternatingRowStyle BackColor="#FFE6E6" />
            <HeaderStyle BackColor="#FFE6E6" />
        </asp:GridView>
        <br />
        <asp:Label ID="SuccessLabel" runat="server" Text="Success" Visible="False"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
