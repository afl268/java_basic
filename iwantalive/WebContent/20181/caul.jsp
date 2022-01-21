<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 
    <%
        
        String f = request.getParameter("f");
        String s = request.getParameter("s");
        
        int firstNumber = Integer.parseInt(f);
        int secondNumber = Integer.parseInt(s);
        
        int additionResult = firstNumber + secondNumber;
    
    %>
    
    <%= firstNumber %> + <%= secondNumber %> 의 결과는 <%= additionResult %> 입니다.
 
</body>
</html>
