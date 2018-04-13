package kr.co.bit.day7;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MyServlet extends HttpServlet { //요청을 받으려면  가상의 URL을 등록해야함 

	public void init() throws ServletException{
		  System.out.println("init");
	 }
		
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServerException, IOException {
		System.out.println("get");
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp )throws ServerException, IOException {
		System.out.println("post"); //브라우저에서 호출할려면 스트림을 연결해야함 (스트림을 이용해서 보내기 위함 response 사용불가)
	    resp.setContentType("text/html");
	    String id=req.getParameter("id");
	    System.out.println(id);
		PrintWriter out=resp.getWriter();
	    out.print("<html><body><h1>Hello Servlet</h1></body></html>");
	    ServletConfig config=getServletConfig();  //이환경변수로 xml에 있는 정보를 가져올 수 있음 
	    String data=config.getInitParameter("data");
	    ServletContext ctx=getServletContext();
	    String dbInfo=ctx.getInitParameter("dbInfo");
	    System.out.println(dbInfo);
	    System.out.println(data);
	}
  
	public void destroy() {
		System.out.println("destroy");
	}
	
	
}
