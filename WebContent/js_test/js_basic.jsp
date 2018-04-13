<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자바스크립트 연습</title>
<script type="text/javascript">

    function welcome(){
        document.write("HelloWorld! javascript");
    	alert("message box");
     }

    function Hello(){
        document.write("Hello! welcome to my space!");
    	alert("어서와! ");
     }
    
    function example1(){
    	var name="damin";
    	var kor=30;
    	var average=30.2;
    }
    
    function example2(){
    	for(var i=0; i<10; i++){
    		document.write(i+1);
    	}
    	var total=sum2(10,20);
    	alert(total+" from return function");
    }
    
    
    function sum(a,b){
    	var result=a+b;
    	alert(result);
    }
       
    //리턴도 가능
    function sum2(a,b){
    	return a+b;
    }
    
    
    var multi=function(a,b){ //익명함수
    	return a*b;
    }
        
    
    function other_form(){
    	var add=function(a,b){//익명함수
    		return a+b;
    	}
    	
    	var r1=add(10,20);
    	var r2=multi(10,20);
    	alert(r1);
    	alert(r2);
    	
    }
    
    function connectServer(){
    	var xhp=new XMLHttpRequest(); 
    	xhp.onreadystatechange=function(){  //상태가 변경될때마다 할당된것이 당장은 아니지만 비동기적으로 발생할 때 마다 onreadstatechange를 호출하면서 자동으로 익명함수를 실행시킴 
    		if(this.readyState==4&&this.status==200) //여러 단계가 잇지만 현재는 완료단계만 필요함 //200번이면 무사히 처리했음 결과같이  
    		{
    			var text=this.responseText;
    	   	    alert(text);
    		}
    	}
    	xhp.open("GET","server.jsp",true);
    	xhp.send();
    }
    

</script>
</head>
<body>

<button onclick="connectServer()">서버접속</button>
<button onclick="welcome()">자바스크립트실행</button>
<button onclick="Hello()">클릭</button>
<button onclick="example2()">example2</button>
<button onclick="other_form()">other_form</button>

</body>
</html>