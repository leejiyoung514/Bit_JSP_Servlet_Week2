<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우편번호 검사</title>
<script type="text/javascript">
     
     function work_close(){
    	 //zipcode 값을 가져오기 
         var zip1=document.getElementById("zip1").value;
    	 var zip2=document.getElementById("zip2").value;
    	 opener.document.getElementById("zip1").value=zip1;
    	 opener.document.getElementById("zip2").value=zip2;	 
    	 self.close(); //자동으로 페이지 닫기
     }
</script>

</head>
<body>

<%
	String zip1=request.getParameter("zip1");
	String zip2=request.getParameter("zip2");
%>

ZipCode check
<form action="" method="post">
   우편번호<input type="text" name="zip1"  id="zip1" value="<%=zip1%>"  >
           <input type="text" name="zip2" id="zip2" value="<%=zip2%>"  >
   
   <button onclick="work_close()">우편번호 사용하기</button>
</form>

</body>
</html>