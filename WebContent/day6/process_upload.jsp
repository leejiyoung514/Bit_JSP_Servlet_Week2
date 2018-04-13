<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>업로드</title>
</head>
<body>
<%
     //네크워크와 관련된 코드 
     long maxSize= 50*1024*1024;
     long holdSize=maxSize/10; //최대로 메모리에서 핸들링 할 사이즈
     String path="d:\\dev\\upload\\";
     //파일을 저장을 담당할 객체 준비 
     DiskFileItemFactory factory=new DiskFileItemFactory(); 
     factory.setDefaultCharset("UTF-8");//문자셋 셋팅
     factory.setRepository(new File(path)); //업로드를 할때 업로드하는 파일을 "d:\\dev\\upload\\"보낼것이다 
     factory.setSizeThreshold((int)holdSize);
     ServletFileUpload upload= new ServletFileUpload(factory);// 업로드를 할때 준비작업데 대한 내용을을 생성자factory로 받고 있음
     upload.setSizeMax(maxSize); //업로드를 하기 위해 최대 얼마만큼의 크기인지 설정
     upload.setHeaderEncoding("UTF-8"); //파일중에 한글이 있으면 한글을 어떻게 처리하겠다라는 내용
     List<FileItem> items=upload.parseRequest(new ServletRequestContext(request)); 
     //파일아이템을 아파치 톰켓에서 가져옴 리퀘스트로부터 업로드 파일 정보 기타 폼태그에서 택스트 정보들을 list가 가지고 있음  
     //각각의 태그들을 우리가 핸들링을 해야함 파일은 업로드를 해야하고 파일을 제외한 나머지 것들은 키와 벨류값이 무엇인지 알아야함 /각태그르 분석해서 파일아이템을 만들어버림
     //그 역할을 파일아이템을 해야함 파일 아이템의 정보를 request로 부터로 받아야함//
     //request로 날아오는 파일들을 리스트에 담아서 변환함  
     Iterator<FileItem> i=items.iterator(); //사이즈를 통해서 돌려도되고, 리터레이터로 해도 됨(순서와 관계없이 차례대로 꺼냄), 
     while(i.hasNext()){   //  하나씩 꺼냄 hasNext.............. 
    	 FileItem item=(FileItem)i.next();
    	 if(item.isFormField()){ //타입이 파일이냐 파일아닌지 확인하는 것이 isformfiled임
    		 String name=item.getFieldName();  
    	     String value=item.getString();
    	     System.out.println(name+"/"+value);
    	 }else{ //파일이 아니면 필드네임과 벨류 값을 가져옴 name=id(필드네임), value=admin(get String)이라고 했을 때 //
    		 String fileName=item.getName();  // 업로드할때 팔요한것은 파일이름//
    		 System.out.println(fileName); //경로 포함한 파일 이름 
    		 int index=fileName.lastIndexOf("\\"); //파일 이름을 분해 \\=\n n
    		 fileName=index!=-1?fileName.substring(index+1):fileName;  /// \을 찾을 수 없습니다-1은 파일이름을 자르기 위해서 
    		 System.out.println(fileName);
    		 File file=new File(path+fileName); 
    		 item.write(file); // write()메소드가 호출되면, 업로드폴더 파일에 업로드 됨 
    	 }
     }
    out.print("success");
%>
</body>
</html>