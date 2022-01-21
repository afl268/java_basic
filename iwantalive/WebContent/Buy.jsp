<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*,java.util.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Purchase</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#FFFF77" style="leftmargin= 0px; topmargin= 0px; marginwidth= 0px; marginheight= 0px;">
<!-- Save for Web Slices (template_sliced.psd) -->
<div id="main">
  <table style="width= 901px; height= 1001px;" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01">
    <tr>
	      <td>
		      <img src="images/spacer.gif" width="1" height="37" alt="" /></td>
      </tr>
    <tr>
      <td rowspan="3">
        <img src="images/index_02.jpg" width="34" height="141" alt="" /></td>
	    <td colspan="2" rowspan="3">
        <div id="logo"><br/><a href="loginxindex.html">나무야<br><br>미안해</a><br/>
      </div></td>
	    <td colspan="17"><img src="images/index_04.jpg" width="655" height="96" alt="" /></td>
	    <td>
	        <img src="images/spacer.gif" width="1" height="96" alt="" /></td>
    </tr>

    <tr>
      <td colspan="2" rowspan="2">
        <img src="images/index_05.jpg" width="61" height="45" alt="" /></td>
	    <td colspan="2"><div class="top_menu">
        <ul>
        <li><a href="loginxindex.html">Home</a></li>
        </ul>
        </div></td>
	    <td rowspan="2">
	        <img src="images/index_07.jpg" width="1" height="45" alt="" /></td>
	    <td colspan="2">
	        <div class="top_menu">
        <ul>
        <li><a href="introx.html">Introduce </a></li>
        </ul>
        </div></td>
	    <td rowspan="2">
	        <img src="images/index_09.jpg" width="1" height="45" alt="" /></td>
	    <td colspan="3">
	        <div class="top_menu">
        <ul>
        <li><a href="Buy.jsp">Purchase</a></li>
        </ul>
        </div></td>
	    <td rowspan="2">
	        <img src="images/index_11.jpg" width="1" height="45" alt="" /></td>
	    <td colspan="2">
	        <div class="top_menu">
        <ul>
        <li><a href="javascript:void(window.open('popmuni.jsp', '회원가입','width=800, height=500'))">1:1</a></li>
        </ul>
        </div></td>
	    <td rowspan="2">
	        <img src="images/index_13.jpg" width="1" height="45" alt="" /></td>
	    <td>
	        <div class="top_menu">
        <ul>
        <li><a href="noticex.jsp">Notice</a></li>
        </ul>
        </div></td>
	    <td rowspan="2">
	        <img src="images/index_15.jpg" width="25" height="45" alt="" /></td>
	    <td>
	        <img src="images/spacer.gif" width="1" height="42" alt="" /></td>
      </tr>
    <tr>
      <td colspan="2">
        <img src="images/index_16.jpg" width="113" height="3" alt="" /></td>
	    <td colspan="2">
	        <img src="images/index_17.jpg" width="113" height="3" alt="" /></td>
	    <td colspan="3">
	        <img src="images/index_18.jpg" width="113" height="3" alt="" /></td>
	    <td colspan="2">
	        <img src="images/index_19.jpg" width="113" height="3" alt="" /></td>
	    <td>
	        <img src="images/index_20.jpg" width="113" height="3" alt="" /></td>
	    <td>
	        <img src="images/spacer.gif" width="1" height="3" alt="" /></td>
      </tr>
      </table>
      </div>
      <br><br><br>
      <form name="form1" method="post" action="Buy_pop.jsp">
<table border=1 width=600>
<tr>
<td colspan=2 align="center">상품 목록</td>
</tr>
<% 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
Connection con= DriverManager.getConnection(conURL);
ResultSet rs1=null,rs2=null;
Statement stmt = null;
try{ 
stmt=con.createStatement();
String sql = " select count(*) from buy "; 
rs2 = stmt.executeQuery(sql);
rs2.next();
if (rs2.getInt(1)==0) {
%>
<tr>
<td colspan=5>등록된 상품이 없습니다</td>
</tr>
<% }else {
	sql="select num, name, price from buy order by num asc";
	rs1 = stmt.executeQuery(sql);
	while (rs1.next()) {
		int num=rs1.getInt("num");
		String name = rs1.getString("name");
		int price = rs1.getInt("price");
	%>
<tr>
<td colspan=2 align="center"><img src="images/buy_<%=num %>.jpg" alt="<%=num %> images" /></td>
</tr>
<tr><td align="center">상품명 : </td><td><%=name %></td></tr>
<tr><td align="center">가격 : </td><td><%=price %>원<br/><input type="button" value = "구매하기" onclick="javascript:void(window.open('Buy_pop.jsp?num=<%=num %>', '구매하기','width=#, height=#'))"></td></tr>

	<%
	}}}
catch(SQLException e) {
	out.print(e.getMessage());
}finally{
	if (stmt != null) stmt.close();
	if (rs1 != null) rs1.close();
	if (rs2 != null) rs2.close();
	if (con != null) con.close();
}
	%>
</table>
</body>
</html>