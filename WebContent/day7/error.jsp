<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error Page</title>
</head>
<body>
<h1>에러의 내용</h1>
<%
   out.print(exception.getMessage()+"<br>");  /* 핵심적인 내용을 보려면 */
   out.print(exception);  
%>

</body>
</html>