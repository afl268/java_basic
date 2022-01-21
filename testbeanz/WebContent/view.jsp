<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="testbeanz.StudentInfo" scope="request" />

학번 : <%=student.getNo()%> <br>
이름 : <%=student.getName()%> <br>
학과 : <%=student.getDepart()%> <br>
주소 : <%=student.getHome()%> 