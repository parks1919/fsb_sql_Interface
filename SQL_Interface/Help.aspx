<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Help.aspx.vb" Inherits="Help" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<META http-equiv="Content-Type" content="text/html; charset=utf-8"></head><body>

<div>


<div>
<h1> Useful Links </h1> 
<h3> Information about SQL </h3>
<p>
<ul>
	<li><a href="http://en.wikipedia.org/wiki/SQL" target="_blank"> Wiki article about SQL </a>
	<li><a href="http://en.wikibooks.org/wiki/Structured_Query_Language" target="_blank"> Wikibook </a>
	<li><a href="http://edutechwiki.unige.ch/en/SQL_and_MySQL_tutorial" target="_blank"> Information and Tutorial </a>
</li></li></li></ul>
</p>
<h3> Help from Oracle </h3>
<p>
<ul>
	<li><a href="https://sqlweb.fsb.muohio.edu/iplus/help/us/toc.htm" target="_blank"> Help in iSQL*PLus 9.1 </a>
	<li><a href="http://docs.oracle.com/cd/B10501_01/server.920/a96540.pdf" target="_blank"> Oracle 9 Info </a>
	<li><a href="http://tahiti.oracle.com/pls/db92/db92.docindex?remark=homepage" target="_blank"> Oracle 9i Info </a>
</li></li></li></ul>
</p>
</div>
<hr>
<div>
<h1> Command Screen Help </h1> 
<h3> General example of the format used in a SELECT SQL Command: </h3>
<p> SELECT column1[,column2] <br>
FROM table1[,table2] <br>
[WHERE &quot;conditions&quot;]<br> 
[GROUP BY &quot;column-list&quot;] <br>
[HAVING &quot;conditions&quot;] <br>
[ORDER BY &quot;column-list&quot; [ASC | DESC]] </p>

<h3> Important Comparison Operators: </h3>
<ul>
<p>
<li> equal: = </li> 
<li> greater than: &gt; </li>
<li> less than: &lt; </li>
<li> greater than or equal to: &gt;= </li>
<li> less than or equal to: &lt;= </li>
<li> not equal to: &lt;&gt; or != </li>
</p>
</ul>

<h3> COMMANDS to list and describe:  </h3>
<p>
AND - Displays a record if both the first condition and second condition are true.<br> 
OR - Displays a record if either the first condition or the second condition is true.<br>  
DELETE - Used to delete rows in a table.  <br>
DISTINCT - Used to eliminate duplicate rows from a result.  <br>
GROUP BY - Used in conjunction with the aggregate functions to group the result-set by one or more columns. <br> 
INSERT - Used to insert a new row in a table.  <br>
NOT - Used to negate one condition.  <br>
ORDER BY - Used to sort result-set by a specified column (default: ascending order, use DESC for descending order).<br>  
SELECT - Used to select data in columns from a database.  <br>
UPDATE - Used to update existing records in a table. <br> 
WHERE - Used to extract only those records that fulfill a specified criterion. <br> 
CREATE DATABASE - Used to create database.  <br>
CREATE TABLE - Used to create a table in the database. <br> 
DROP - Used to delete/remove databases, tables, or indexes. <br> 
TRUNCATE - Used to remove data within a table, but not the table itself.  <br>
BETWEEN - Selects a range of data between two values (numbers, texts, or dates).<br>  
IN - Allows specification of multiple values in a WHERE clause. <br> 
ISNULL() - Used to determine where a value is NULL or not.  <br>
LIKE - Used in a WHERE clause to search for a specified pattern in a column.  <br>
UNION - Used to combine two or more SELECT statements. Each statement must have the same number of columns and similar data types.<br>  
FULL JOIN - Returns rows when there is a match in one of the tables. <br> 
INNER JOIN - Returns rows when there is at least one match in both tables. <br> 
LEFT JOIN - Returns all rows from the left table, even if there are no matches in the right table. <br> 
RIGHT JOIN - Returns all rows from the right table, even if there are no matches in the left table.<br> 
</p>

<h3> FUNCTIONS to list and describe:  </h3> 
<p>
AVG() - Returns the average value of a numeric column. <br>
COUNT() - Returns the number of rows that matches a specified criteria. <br>
COUNT(*) - Returns the number of rows in a table. <br>
FIRST() - Returns the first value of the selected column. <br>
FORMAT() - Format how a field is supposed to be displayed.<br> 
LAST() - Returns the last value of a selected column. <br>
LEN() - Returns the length of the value in a text field.<br> 
MAX() - Returns the largest value of the selected column.<br> 
MID() - Extract characters from a text field. <br>
MIN() - Returns the smallest value of the selected column. <br>
ROUND() - Round a numeric field to the number of decimals specified. <br>
SUM() - Returns the total sum of a numeric column. <br>
TO_CHAR - Returns characters such as numbers or dates in a certain format based on the parameters given.<br> 
TO_DATE - Takes a numeric date configuration and returns it using a text based format. <br>
</p>


</div>

</div>
</body></html>
