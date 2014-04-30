<%@ Page Language="VB" AutoEventWireup="false" CodeFile="History.aspx.vb" Inherits="History" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style3
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style4
        {
            font-size: xx-large;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
 
        <asp:Image ID="Image1" runat="server" Height="30px" 
            ImageUrl="~/SQL_Interface/Miami.jpg" />
    
        &nbsp; <span class="style4">Oracle</span><span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Label ID="UserIDLabel" runat="server" CssClass="style3"></asp:Label>
        <br />
&nbsp;<asp:HyperLink ID="HomeHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/Work_Screen.aspx" CssClass="style3">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HelpHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/Help.aspx" CssClass="style3">Help</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="LogoutHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/Login.aspx" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium;">Logout</asp:HyperLink>
        <br />
        <br />
    </div>
    <div id="h" runat= "server">
        <%#theHistory%>
        <br />
        <br />
 
        <br />
        <br />
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
