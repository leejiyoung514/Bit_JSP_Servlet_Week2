<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>서블릿호출</title>
</head>
<body>



<form action="../myServlet" method="post">
  <input type="text" name="id"> <!-- id를 출력해서 콘솔에 저장 -->
  <input type="submit" value="서블릿호출">
</form>

</body>
</html>