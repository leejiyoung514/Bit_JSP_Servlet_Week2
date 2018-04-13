<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%

String cmd=request.getParameter("cmd");
if(cmd.equals("id")){
	cmd="true";
}else{
	cmd="123456";//zip코드
}
out.print(cmd); //cmd키값을 가져옴

%>
