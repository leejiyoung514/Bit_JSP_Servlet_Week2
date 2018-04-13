<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>조회페이지</title>
</head>
<body>

<!-- 
    회원정보의 저장
    회원정보의 검색이 가능해야 한다.
 -->
<a href="regist_member.jsp">회원등록</a>
<form action="storage.jsp" method="post">
ID:<input type="text" name="id">
<input type="submit" value="조회">



</form>

</body>
</html>