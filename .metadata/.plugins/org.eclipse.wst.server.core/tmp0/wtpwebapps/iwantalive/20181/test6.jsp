<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="test6_ok.jsp" name="bo1">
오퍼랜드1 : <input type="text" name="opr1" size= 10> <br><br>
연산자 : <select name="cul">
 <option value="+">+</option>
 <option value="-">-</option>
 <option value="*">*</option>
 <option value="/">/</option>
 <option value="%">%</option>
 </select>
 <br><br>
 
 오퍼랜드2 : <input type="text" name="opr2" size= 10> <br><br>
 
 <input type ="submit" value = "계산">
 

</body>
</html>