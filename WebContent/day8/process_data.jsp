<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터 처리</title>
</head>
<body>
	<%
 
  String [] values=request.getParameterValues("lang");
  System.out.println(values.length);
  String []temp={"","","",""};
  for(String value:values){
	  int index=Integer.parseInt(value);
	  temp[index]=value;
  }
  System.out.println(Arrays.toString(temp));
  session.setAttribute("val", temp);
  response.sendRedirect("quiz3.jsp");
%>

</body>
</html>