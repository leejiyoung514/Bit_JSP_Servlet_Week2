<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문제3</title>
<style>
 span{
     color:red;
  }
</style>

<script type="text/javascript">
	function check_data() {
		var flag = false;
		var eles = document.getElementsByClassName("langs");
		var count = 0;
		for (var i = 0; i < eles.length; i++) {
			if (eles[i].checked) {
				count++
			}
		}
		if (count < 2) {
			alert("2개 이상 선택해야 합니다.")
		} else {
            flag=true;
		}
        return flag;

	}


	function id_check() {
		var flag = false;
		var xhr=new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			if(this.readyState==4&this.status==200){
				var result=this.responseText;
				var ele=document.getElementById("id_msg");
				if(result=="true"){
					ele.innerHTML="사용할 수 없는 아이디입니다.";
				}else{
					ele.innerHTML="사용할 수 없습니다.";
				}
			}
		}
		xhr.open("GET", "id_check.jsp", true);
	    xhr.send();
	    return flag;
	}
</script>
<body>

	<%
		String[] temp = (String[]) session.getAttribute("val");
		out.println(Arrays.toString(temp));
		if (temp == null) {
			temp = new String[] { "0", "", "2", "" };
		}

		for (String value : temp) {
			System.out.println(value + " ");
		}
		out.println(Arrays.toString(temp));
	%>

	<form action="process_data.jsp" method="post">

		아이디: <input type="text" name=id><span id="id_msg"></span>
		<button onclick="return id_check()">아이디 검사</button>
		<br> <input type="checkbox" name="lang" value="0" class="langs"
			<%=temp[0].equals("0") ? "checked" : ""%>> 자바 <input
			type="checkbox" name="lang" value="1" class="langs"
			<%=temp[1].equals("1") ? "checked" : ""%>> 파이썬 <input
			type="checkbox" name="lang" value="2" class="langs"
			<%=temp[2].equals("2") ? "checked" : ""%>> C++ <input
			type="checkbox" name="lang" value="3" class="langs"
			<%=temp[3].equals("3") ? "checked" : ""%>> C <input
			type="submit" value="전송" onclick="return check_data()">

	</form>
</body>
</html>