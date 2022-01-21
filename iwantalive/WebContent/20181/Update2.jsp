<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.* , java.sql.*"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script language = "javascript">
function submit_list() {
	document.form1.action="gaiplist.jsp";
	document.form1.submit();
	
}
function submit_update() {
	document.form1.action="Gaip_upd.jsp";
	document.form1.submit();
	
}
function submit_delete() {
	document.form1.action="Delete.jsp";
	document.form1.submit();
	
}
</script>
<body>
<% request.setCharacterEncoding("utf-8");
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP1;password=1234";
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