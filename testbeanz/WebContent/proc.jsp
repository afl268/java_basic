<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="student" class="testbeanz.StudentInfo" scope="request" />

<jsp:setProperty property ="no" name="student" />
<jsp:setProperty property ="name" name="student" />
<jsp:setProperty property ="depart" name="student" value="건축공학"/>
<jsp:setProperty property ="home" name="student" value="충주"/>

<jsp:forward page="view.jsp" />