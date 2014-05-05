<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Help.aspx.vb" Inherits="Help" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<META http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style type="text/css">
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
        .style2
        {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head><body>

<div>


<div>
        <asp:Image ID="Image1" runat="server" Height="30px" 
            ImageUrl="~/SQL_Interface/Miami.jpg" />

              &nbsp;<span class="style1">Oracle - Help Screen</span><br />
&nbsp;<asp:HyperLink ID="HomeHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/Work_Screen.aspx" CssClass="style3">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HistoryHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/History.aspx" CssClass="style3">History</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="LogoutHyperlink" runat="server" 
            NavigateUrl="~/SQL_Interface/Login.aspx" 
            style="font-family: Arial, Helvetica, sans-serif">Logout</asp:HyperLink>


<h1 class="style2"> Useful Links </h1> 
<h3 class="style2"> Information about SQL </h3>
<p>
<ul>
	<li class="style2"><a href="http://en.wikipedia.org/wiki/SQL" target="_blank"> Wiki article about SQL </a>
	<li class="style2"><a href="http://en.wikibooks.org/wiki/Structured_Query_Language" target="_blank"> Wikibook </a>
	<li class="style2"><a href="http://edutechwiki.unige.ch/en/SQL_and_MySQL_tutorial" target="_blank"> Information and Tutorial </a>
</li></li></li></ul>
</p>
<h3 class="style2"> Help from Oracle </h3>
<p>
<ul>
	<li class="style2"><a href="https://sqlweb.fsb.muohio.edu/iplus/help/us/toc.htm" target="_blank"> Help in iSQL*PLus 9.1 </a>
	<li class="style2"><a href="http://docs.oracle.com/cd/B10501_01/server.920/a96540.pdf" target="_blank"> Oracle 9 Info </a>
	<li class="style2"><a href="http://tahiti.oracle.com/pls/db92/db92.docindex?remark=homepage" target="_blank"> Oracle 9i Info </a>
</li></li></li></ul>
</p>
</div>
<hr>
<div>
<h1 class="style2"> Command Screen Help </h1> 
<h3 class="style2"> General example of the format used in a SELECT SQL Command: </h3>
<p> <span class="style2">SELECT column1[,column2] </span> <br class="style2">
    <span class="style2">FROM table1[,table2] </span> <br class="style2">
    <span class="style2">[WHERE &quot;conditions&quot;]</span><br class="style2"> 
    <span class="style2">[GROUP BY &quot;column-list&quot;] </span> 
    <br class="style2">
    <span class="style2">[HAVING &quot;conditions&quot;] </span> <br class="style2">
    <span class="style2">[ORDER BY &quot;column-list&quot; [ASC | DESC]] </span> </p>

<h3 class="style2"> Important Comparison Operators: </h3>
<ul>
<p>
<li class="style2"> equal: = </li> 
<li class="style2"> greater than: &gt; </li>
<li class="style2"> less than: &lt; </li>
<li class="style2"> greater than or equal to: &gt;= </li>
<li class="style2"> less than or equal to: &lt;= </li>
<li> <span class="style2">not equal to: &lt;&gt; or != </li>
    </span>
</p>
</ul>

<h3 class="style2"> COMMANDS to list and describe:  </h3>
<p>
    <span class="style2">AND - Displays a record if both the first condition and second condition are true.</span><br 
        class="style2"> 
    <span class="style2">OR - Displays a record if either the first condition or the second condition is true.</span><br 
        class="style2">  
    <span class="style2">DELETE - Used to delete rows in a table.  </span>  
    <br class="style2">
    <span class="style2">DISTINCT - Used to eliminate duplicate rows from a result.  
    </span>  <br class="style2">
    <span class="style2">GROUP BY - Used in conjunction with the aggregate functions to group the result-set by one or more columns. 
    </span> <br class="style2"> 
    <span class="style2">INSERT - Used to insert a new row in a table.  </span>  
    <br class="style2">
    <span class="style2">NOT - Used to negate one condition.  </span>  
    <br class="style2">
    <span class="style2">ORDER BY - Used to sort result-set by a specified column (default: ascending order, use DESC for descending order).</span><br 
        class="style2">  
    <span class="style2">SELECT - Used to select data in columns from a database.  
    </span>  <br class="style2">
    <span class="style2">UPDATE - Used to update existing records in a table. </span> 
    <br class="style2"> 
    <span class="style2">WHERE - Used to extract only those records that fulfill a specified criterion. 
    </span> <br class="style2"> 
    <span class="style2">CREATE DATABASE - Used to create database.  </span>  
    <br class="style2">
    <span class="style2">CREATE TABLE - Used to create a table in the database. 
    </span> <br class="style2"> 
    <span class="style2">DROP - Used to delete/remove databases, tables, or indexes. 
    </span> <br class="style2"> 
    <span class="style2">TRUNCATE - Used to remove data within a table, but not the table itself.  
    </span>  <br class="style2">
    <span class="style2">BETWEEN - Selects a range of data between two values (numbers, texts, or dates).</span><br 
        class="style2">  
    <span class="style2">IN - Allows specification of multiple values in a WHERE clause. 
    </span> <br class="style2"> 
    <span class="style2">ISNULL() - Used to determine where a value is NULL or not.  
    </span>  <br class="style2">
    <span class="style2">LIKE - Used in a WHERE clause to search for a specified pattern in a column.  
    </span>  <br class="style2">
    <span class="style2">UNION - Used to combine two or more SELECT statements. Each statement must have the same number of columns and similar data types.</span><br 
        class="style2">  
    <span class="style2">FULL JOIN - Returns rows when there is a match in one of the tables. 
    </span> <br class="style2"> 
    <span class="style2">INNER JOIN - Returns rows when there is at least one match in both tables. 
    </span> <br class="style2"> 
    <span class="style2">LEFT JOIN - Returns all rows from the left table, even if there are no matches in the right table. 
    </span> <br class="style2"> 
    <span class="style2">RIGHT JOIN - Returns all rows from the right table, even if there are no matches in the left table.</span><br 
        class="style2"> 
</p>

<h3 class="style2"> FUNCTIONS to list and describe:  </h3> 
<p>
    <span class="style2">AVG() - Returns the average value of a numeric column. 
    </span> <br class="style2">
    <span class="style2">COUNT() - Returns the number of rows that matches a specified criteria. 
    </span> <br class="style2">
    <span class="style2">COUNT(*) - Returns the number of rows in a table. </span> 
    <br class="style2">
    <span class="style2">FIRST() - Returns the first value of the selected column. 
    </span> <br class="style2">
    <span class="style2">FORMAT() - Format how a field is supposed to be displayed.</span><br 
        class="style2"> 
    <span class="style2">LAST() - Returns the last value of a selected column. 
    </span> <br class="style2">
    <span class="style2">LEN() - Returns the length of the value in a text field.</span><br 
        class="style2"> 
    <span class="style2">MAX() - Returns the largest value of the selected column.</span><br 
        class="style2"> 
    <span class="style2">MID() - Extract characters from a text field. </span> 
    <br class="style2">
    <span class="style2">MIN() - Returns the smallest value of the selected column. 
    </span> <br class="style2">
    <span class="style2">ROUND() - Round a numeric field to the number of decimals specified. 
    </span> <br class="style2">
    <span class="style2">SUM() - Returns the total sum of a numeric column. </span> 
    <br class="style2">
    <span class="style2">TO_CHAR - Returns characters such as numbers or dates in a certain format based on the parameters given.</span><br 
        class="style2"> 
    <span class="style2">TO_DATE - Takes a numeric date configuration and returns it using a text based format. 
    </span> <br>
</p>


</div>

</div>
</body></html>
