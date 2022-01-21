<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.* , java.sql.*"%>
    <% request.setCharacterEncoding("utf-8");
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
    Connection con=DriverManager.getConnection(conURL);
    PreparedStatement pstmt=null;
    try{
    	String nick = request.getParameter("nick");
    	String ema = request.getParameter("ema");
    	String phone = request.getParameter("phone");
    	String phone2 = request.getParameter("phone2");
    	String phone3 = request.getParameter("phone3");
    	String fireman = request.getParameter("fireman");
    	String cont = request.getParameter("cont");
    	Calendar today = Calendar.getInstance();
    	String today_in = Integer.toString(today.get(Calendar.YEAR))+"-";
    	today_in=today_in+Integer.toString(today.get(Calendar.MONTH)+1)+"-";
    	today_in=today_in+Integer.toString(today.get(Calendar.DATE));
    	String sql = "insert into muni (nick,ema,phone,phone2,phone3,fireman,cont,dayy) values(?,?,?,?,?,?,?,?)";
    	pstmt=con.prepareStatement(sql);
    	pstmt.setString(1,nick);
    	pstmt.setString(2,ema);
    	pstmt.setString(3,phone);
    	pstmt.setString(4,phone2);
    	pstmt.setString(5,phone3);
    	pstmt.setString(6,fireman);
    	pstmt.setString(7,cont);
    	pstmt.setString(8,today_in);
    
    	pstmt.executeUpdate();
    	}catch(SQLException e) {
    		out.print(e.getMessage());
    	}finally{
    			if (pstmt != null) pstmt.close();
    			if (con != null) con.close();
    			 
    		}

    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="javascript:window.close();">창닫기</a>
</body>
</html>