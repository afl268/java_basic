<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int result = 0;
int opr1 = Integer.parseInt(request.getParameter("opr1"));
String cul = request.getParameter("cul");
int opr2 = Integer.parseInt(request.getParameter("opr2"));

if(cul.equals("+"))
	 result = opr1+opr2;
	 else if(cul.equals("-"))
	 result = opr1-opr2;
	 else if(cul.equals("*"))
	 result = opr1*opr2;
	 else if(cul.equals("/"))
	 result = opr1/opr2;
	 else if(cul.equals("%")) 
		 result = opr1%opr2;

	
%>
<%=opr1%> <%= cul%> <%=opr2%> = <%=result %>

</body>
</html>