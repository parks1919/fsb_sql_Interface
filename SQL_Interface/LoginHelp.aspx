<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LoginHelp.aspx.vb" Inherits="SQL_Interface_LoginHelp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<META http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
        .style2
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
        .style3
        {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head><body>
    <form id="form1" runat="server">
<div>
        <asp:Image ID="Image1" runat="server" Height="30px" 
            ImageUrl="~/SQL_Interface/Miami.jpg" />
    
        <span class="style3">
    
        <span class="style1">&nbsp;</span><span class="style2">Oracle - Login Help</span></span><span class="style1"><br />

        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/SQL_Interface/Login.aspx" style="font-size: medium">Login</asp:HyperLink>
        <div>
<hr>
<h3 class="style3"> If you do not have an Oracle Account: </h3>
	<ol>
		<li> <span class="style3">Navigate to </span> <a href="http://sbaoracle.sba.muohio.edu/" target="_blank"> 
            <span class="style3">http://sbaoracle.sba.muohio.</span><WBR><span 
                class="style3">edu/ </span> </a> </li>
		<li class="style3"> Click <em> Create Your Oracle Account Here </em> </li>
		<li class="style3"> Enter Your UniqueID and Password. </li>	
	</ol>
<hr>
</div>
<div>
<h3 class="style3"> If you already have an Oracle Account: </h3>
	<ol>
		<li class="style3"> Please contact IT help at this number (529-4940) for further assistance.</li></ol></div></div>
    </form>
</body></html>
