<%@page import="kr.co.bit.day4.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입처리</title>
</head>
<body>

<%
 request.setCharacterEncoding("UTF-8");
 String id=request.getParameter("id");
 String pw=request.getParameter("pw");
 String name=request.getParameter("name");
 String zip1=request.getParameter("zip1");
 String zip2=request.getParameter("zip2");
 String addr1=request.getParameter("addr1");
 String addr2=request.getParameter("addr2");
 String email=request.getParameter("email");
 String tool=request.getParameter("tool");
 String project=request.getParameter("project");
 String []lang=request.getParameterValues("lang");
 String []temp={"","","",""};
 if(lang!=null){
 for(String index:lang){
	 int idx=Integer.parseInt(index);
	 temp[idx]=index;
 }
 }
 //Member 데이터클래스를 만들어서 인스턴스를 하나 생성 
 MemberVO vo= new MemberVO();
 vo.setId(id);
 vo.setPw(pw);
 vo.setName(name);
 vo.setZipcode(zip1+"-"+zip2);
 vo.setAddr1(addr1);
 vo.setAddr2(addr2);
 vo.setEmail(email);
 vo.setLang(temp);
 vo.setTool(tool);
 vo.setProject(project);
 out.println(vo.toString());
 session.setAttribute("vo", vo);
 response.sendRedirect("storage.jsp");
%>



</body>
</html>