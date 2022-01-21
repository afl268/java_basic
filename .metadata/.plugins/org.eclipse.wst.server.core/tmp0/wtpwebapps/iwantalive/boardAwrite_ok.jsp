<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.* , java.sql.*"%>
    <% request.setCharacterEncoding("utf-8");
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
    Connection con=DriverManager.getConnection(conURL);
    PreparedStatement pstmt=null;
    try{
    	String writer = request.getParameter("writer");
    	String title = request.getParameter("title");
    	String contents = request.getParameter("contents");

    	String sql = "insert into boardB (writer,title,contents) values(?,?,?)";
    	pstmt=con.prepareStatement(sql);
    	pstmt.setString(1,writer);
    	pstmt.setString(2,title);
    	pstmt.setString(3,contents);
    	pstmt.executeUpdate();
    	}catch(SQLException e) {
    		out.print(e.getMessage());
    	}finally{
    			if (pstmt != null) pstmt.close();
    			if (con != null) con.close();
    			 response.sendRedirect("boardA.jsp");
    		}
    
    	
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>