<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*,java.util.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Introduce</title>
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
        <div id="logo"><br/><a href="index.html">나무야<br><br>미안해</a><br/>
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
        <li><a href="index.html">Home</a></li>
        </ul>
        </div></td>
	    <td rowspan="2">
	        <img src="images/index_07.jpg" width="1" height="45" alt="" /></td>
	    <td colspan="2">
	        <div class="top_menu">
        <ul>
        <li><a href="intro.html">Introduce </a></li>
        </ul>
        </div></td>
	    <td rowspan="2">
	        <img src="images/index_09.jpg" width="1" height="45" alt="" /></td>
	    <td colspan="3">
	        <div class="top_menu">
        <ul>
        <li><a href="Buylist.jsp">Purchase</a></li>
        </ul>
        </div></td>
	    <td rowspan="2">
	        <img src="images/index_11.jpg" width="1" height="45" alt="" /></td>
	    <td colspan="2">
	        <div class="top_menu">
        <ul>
        <li><a href="muni.jsp">FAQ</a></li>
        </ul>
        </div></td>
	    <td rowspan="2">
	        <img src="images/index_13.jpg" width="1" height="45" alt="" /></td>
	    <td>
	        <div class="top_menu">
        <ul>
        <li><a href="notice.jsp">Notice</a></li>
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
<script language = "javascript">
function submit_list() {
	document.form1.action="notice.jsp";
	document.form1.submit();
	
}
function submit_update() {
	document.form1.action="noticeup.jsp";
	document.form1.submit();
	
}
function submit_delete() {
	document.form1.action="noticedelete.jsp";
	document.form1.submit();
	
}
</script>
<body>
<% request.setCharacterEncoding("utf-8");
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
    Connection con=DriverManager.getConnection(conURL);
    PreparedStatement pstmt=null;
    ResultSet rs = null;
    int num = Integer.parseInt(request.getParameter("num"));
    String sql = "select num , title , writer , contents , writedtm, updatedtm, readcnt from boardB where num=?";
    try{
    	pstmt = con.prepareStatement(sql);
    	pstmt.setInt(1,num);
    	rs=pstmt.executeQuery();
    	if (rs.next() == false) {
    		out.print("등록된 공지사항이 없습니다");
    	
    	}else {
    		
    		String title = rs.getString("title");
    		String writer = rs.getString("writer");
    		String writedtm = rs.getString("writedtm");
    		String updatedtm=rs.getString("updatedtm");
    		String contents = rs.getString("contents");
    		int readcnt = rs.getInt("readcnt");
    		sql = "update boardB set readcnt=readcnt+1 where num=?";
    		pstmt=con.prepareStatement(sql);
    		pstmt.setInt(1,num);
    		pstmt.executeUpdate();  	
   %>
   <h3>공지사항 상세보기</h3>
   <table width=500 border=1>
   <tr>
   <td width="40%" align="left">작성자명</td>
   <td width="60%" align="left"><%=writer %></td>
   </tr>
   <tr>
   <td width="40%" align="left">제목</td>
   <td width="60%" align="left"><%=title %></td>
   </tr>
   <tr>
   <td width="40%" align="left">내용</td>
   <td width="60%" align="left"><%=contents %></td>
   </tr>
   <tr>
   <td width = "40%" align="center" colspan=2> 
   <form method = "post" name = "form1" >
     <input type="hidden" name="num" value = "<%=num %>">
   <table>
   <tr><td width = "33%" align = "center">
    <tr><td width = "33%" align = "center">
   <input type="button" value="수정하기"  onclick="submit_update()">
   </td>
    <tr><td width = "33%" align = "center">
      <input type="button" value="삭제하기"  onclick="submit_delete()">
      </td>
       <tr><td width = "33%" align = "center">
            <input type="button" value="목록으로"  onclick="submit_list()">
            </td></tr>
      </form>
   </td>
   </tr>
   </table>
   
   </table>
   <%
   
   }}
    catch(SQLException e) {
    	out.print(e.getMessage());
    }finally{
    	if (pstmt != null) pstmt.close();
    	if (rs != null) rs.close();
    	if (con != null) con.close();
    }
   %>
 
 
</body>
</html>