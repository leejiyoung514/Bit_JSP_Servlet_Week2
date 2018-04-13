<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문제3</title>
<style>
/*  #id_msg{
      color:red;
 } */
  span{
     color:red;
  }
</style>


<script type="text/javascript">
	function check_data() {
		var flag = false;
		var eles = document.getElementsByClassName("langs");
		//돌면서 카운트
		var count = 0;
		for (var i = 0; i < eles.length; i++) {
			if (eles[i].checked) {
				count++;
			}
		}
		if (count < 2) {
			alert("2개 이상 선택해야 합니다.");
		} else {
			flag = true;
		}
		return flag;
	}

	function id_check() {
		var flag = false;
		//Ajax 이용해서 ID체크 (부분처리)
		//var server_page="id_service.jsp";
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() { //비동기적으로 실행이 된다 
			//상태변화 확인
			if (this.readyState == 4 & this.status == 200) {
				var result = this.responseText; //작업진행
				var ele=document.getElementById("id_msg");
				if (result == "true") { //중복검사 true중복인지 flase중복아님
					//중복이여서 사용못함 이 결과를 id앞에 찍어줘야함-->span태그로 또는 input 태그로 
					ele.innerHTML="사용할 수 없는 아이디입니다.."
				} else {
					//중복이 아니여서 사용가능(아이디 옆에 가능하다고 출력)
					ele.innerHTML="사용할 수 있니다.."
				}
			}
		}
		data="cmd="+cmd;
		xhr.open("POST", "id_check.jsp", true); //false가 되면 동기적으로 실행이 됨 
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.send(data);
		return flag;
	}
</script>
</head>
<body>

	<!--전송하기 위해서 체크가 2개 이상인지 확인해야 함   -->

	<%
		//선언과 초기화를 동시에 할 경우 배열표시를 해줘야함 
		//session.invalidate();
		String[] values = (String[]) session.getAttribute("val");
		out.println(Arrays.toString(values));
		if (values == null) {
			values = new String[] { "0", "", "", "" };//제일처음에 디폴트값을 0번재방에 0을 줌, 다른페이지에 안갔다와도되
		}
		for (String value : values) {
			// out.print(value+" ");
		}
		out.println(Arrays.toString(values));
	%>

	<form action="process_data.jsp" method="get">

		아이디:<input type="text" name="id">
		<span id="id_msg"></span> <!--span태그로 태그와태그사이에 값을 집어넣음 --innerHTML -->
		<button onclick="return id_check()">아이디검사</button>
		 
		<br> <input type="checkbox" name="lang" value="0" class="langs"
			<%=values[0].equals("0") ? "checked" : ""%>>자바 <input
			type="checkbox" name="lang" value="1" class="langs"
			<%=values[1].equals("1") ? "checked" : ""%>>파이썬 <input
			type="checkbox" name="lang" value="2" class="langs"
			<%=values[2].equals("2") ? "checked" : ""%>>C++ <input
			type="checkbox" name="lang" value="3" class="langs"
			<%=values[3].equals("3") ? "checked" : ""%>>C <input
			type="submit" value="전송" onclick="return check_data()">

	</form>
</body>
</html>