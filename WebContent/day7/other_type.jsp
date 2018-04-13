<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>다른 타입의 JSP</title>
</head>
<body>
<%
   /*   int a=10/0;
     out.print(a); */


%>
<!-- MemberVo member = new MemberVO(); -->
<!-- 자바빈을 JSP 페이지에서 쓸 때 사용 -->
<jsp:useBean id="member" class="kr.co.bit.day4.MemberVO" scope="session"></jsp:useBean>
<%    
    member.setId("admin");
    System.out.println(member.getId());
%>
<!-- 프로퍼티의 값을 세팅할 때 사용 -->
<jsp:getProperty property="id" name="member"/> 
<!-- 프로퍼티의 값을 얻어낼 때 사용 -->
<jsp:setProperty property="pw" name="member" value="1234"/> 
<%
 System.out.println(member.getPw());
// request.setAttribute("member", member);  //sendRedirect 안됨/// 포워드 시켰기때문에 request 객체를 이용하면 됨 
// session.setAttribute("member", member);  /* scope="request" 로 인해 주석처리해도 출력됨 */
 
%>
<!-- 웹 페이지 간의 제어를 이동시킬 때 사용 -->
<jsp:forward page="process.jsp">
  <jsp:param value="data1" name="etc1"/> 
  <jsp:param value="data2" name="etc2"/>
 </jsp:forward> 
  
</body>
</html>