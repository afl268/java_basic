<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
    
        <%request.setCharacterEncoding("UTF-8"); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="skyblue">
    <center>
        <font color ="gray" size="4" face="궁서"><b></b>

<%
String uname = request.getParameter("uname");
String uid = request.getParameter("uid");
String pw = request.getParameter("pw");
String sex = request.getParameter("sex");
String gender = request.getParameter("gender");
String bd = request.getParameter("bd");
String ad = request.getParameter("ad");
String job = request.getParameter("job");
String hp1 = request.getParameter("hp1");
String hp2 = request.getParameter("hp2");
String hp3 = request.getParameter("hp3");
String hid = request.getParameter("hid");
String mail = request.getParameter("mail");
String jm = request.getParameter("jm");
out.print (" 아이디는 " + uid+"<br><br>");
out.print (" 비밀번호는 " + pw+"<br><br>");
out.print (" 성별은 " +sex +"<br><br>");
out.print (" 생일은 " +bd +"<br><br>");
out.print (" 주소는 " + ad+"<br><br>");
out.print (" 직업은 " + job+"<br><br>");
out.print (" 폰번은 " + hp1+"-" +hp2+"-"+hp3+".");
out.print (" 메일은 " +mail+"<br><br>");
out.print (" 주민번호는 " + jm+"<br><br>");
%>
        </center>
</body>
</html>