<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>                                                   <!-- (이제부터 업로드하겠다) 업로드하기 위해서  이전 건 문자밖아 안날라가서 --> 
<form action="process_upload.jsp" method="post" enctype="multipart/form-data">
   <input type="text" name="title" size="5">
   <input type="file" name="file1" >
   <input type="submit" value="업로드">
    
</form>
</body>
</html>