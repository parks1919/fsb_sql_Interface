<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {}
        .style2
        {
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style3
        {
            font-size: xx-large;
        }
        .style4
        {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="30px" 
            ImageUrl="~/SQL_Interface/Miami.jpg" />
    
        <span class="style1"><span class="style3">&nbsp;<span class="style4">Oracle</span></span><br />
        <br />
        </span>
        <asp:HyperLink ID="HelpHyperlink" runat="server" NavigateUrl="~/Help.aspx" 
            style="font-family: Arial, Helvetica, sans-serif">Help</asp:HyperLink>
        <br />
        <br />
        <span class="style2">Login</span><br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="UsernameLabel" runat="server" Text="Username:" 
            style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="PasswordLabel" runat="server" Text="Password:" 
            style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;
        &nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="LoginButton" runat="server" Text="Login" 
            style="font-family: Arial, Helvetica, sans-serif" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="ErrorMessage" runat="server" style="text-align: center; font-family: Arial, Helvetica, sans-serif;" 
            ForeColor="Red"></asp:Label>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
