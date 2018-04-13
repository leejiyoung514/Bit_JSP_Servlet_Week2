
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.bit.day4.FileDataService"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>서비스 페이지</title>
</head>
<body>
<!-- 
     service페이지에 연결하여 result 페이지에 Date 객체를 전달하여 현재 시간을 출력하는 코드작성하시오 
     1.form 태그 작성           
 -->
 

<% 
 FileDataService fds = new FileDataService();
/*Date date=fds.getDateTime();

//Date date=new Date();
session.setAttribute("date", date);
response.sendRedirect("result.jsp"); */


//파일 정보 가져오기

String path= application.getRealPath("WEB-INF/file/Abc1115.txt");
ArrayList list=fds.getFileData(path);
session.setAttribute("list", list);
response.sendRedirect("result.jsp");

%>

</body>
</html>