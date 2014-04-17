<%@ Page Language="VB" AutoEventWireup="false" CodeFile="History.aspx.vb" Inherits="History" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
 
        <asp:LinkButton ID="LinkButton1" runat="server" 
            NavigateUrl="~/SQL_Interface/Work_Screen.aspx">Back to Home </asp:LinkButton>
 
        </p>
    <div id="h" runat= "server">
    <%#theHistory%>
 
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
        <asp:Button ID="Button1" runat="server" Text="Delete All" />
    </p>
    </form>
</body>
</html>
