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
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="30px" 
            ImageUrl="~/SQL_Interface/Miami.jpg" />
    
        <span class="style1">&nbsp;Oracle&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Label ID="UserIDLabel" runat="server"></asp:Label>
        <br />
&nbsp;<asp:HyperLink ID="HistoryHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/History.aspx">History</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HelpHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/Help.aspx">Help</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="LogoutHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/Login.aspx">Logout</asp:HyperLink>
        <br />
        <br />
        <br />
        <span class="style2">Work Screen</span><br />
        File or URL:
        <asp:Button ID="FileButton" runat="server" Text="Choose File" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="FileLabel" runat="server" Text="No file chosen"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ScriptButton" runat="server" Text="LoadScript" />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="167px" Width="408px" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ExecuteButton" runat="server" Text="Execute" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SaveButton" runat="server" Text="SaveScript" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ExportButton" runat="server" Text="Export" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ClearButton" runat="server" Text="Clear Screen" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="CancelButton" runat="server" Text="Cancel" />
        <br />
        <br />
        <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:GridView ID="GridView" runat="server" BackColor="#F8F5D3" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ForeColor="Black">
            <AlternatingRowStyle BackColor="#E9E29A" />
            <HeaderStyle BackColor="#E9E29A" />
        </asp:GridView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
