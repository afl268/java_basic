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
    	Calendar today = Calendar.getInstance();
    	String today_in = Integer.toString(today.get(Calendar.YEAR))+"-";
    	today_in=today_in+Integer.toString(today.get(Calendar.MONTH)+1)+"-";
    	today_in=today_in+Integer.toString(today.get(Calendar.DATE));
    	String sql = "insert into boardB (writer,title,contents,writedtm,updatedtm) values(?,?,?,?,?)";
    	pstmt=con.prepareStatement(sql);
    	pstmt.setString(1,writer);
    	pstmt.setString(2,title);
    	pstmt.setString(3,contents);
    	pstmt.setString(4,today_in);
    	pstmt.setString(5,today_in);
    	pstmt.executeUpdate();
    	}catch(SQLException e) {
    		out.print(e.getMessage());
    	}finally{
    			if (pstmt != null) pstmt.close();
    			if (con != null) con.close();
    			 response.sendRedirect("notice.jsp");
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