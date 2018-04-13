<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아아디 검색</title>
</head>
<body>
 <!--
   search_id.jsp로 연결하여 
   user만 사용가능하고 admin은 사용불가능하도록 결정한 후 
   사용여부를 id=check.jsp에 전달하여 참고하도록 한다. 
        
     -->
<%
   String id=request.getParameter("id");
   
   if(id.equals("user")){
	   response.sendRedirect("id_check.jsp?code=0&id="+id);
   }else if(id.equals("admin")){
	   response.sendRedirect("id_check.jsp?code=1&id="+id);
   }
   

%>



<form>


</form>

</body>
</html>