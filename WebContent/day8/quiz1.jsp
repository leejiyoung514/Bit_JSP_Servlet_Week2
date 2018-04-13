<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문제1</title>
</head>
<body>
<!-- jspInit메소드 오버라이드 -->

<%!
    public void jspInit(){
      System.out.println("init");
    }
%>

<%=request.getParameter("id")%>
</body>
</html>