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


public class MyServlet extends HttpServlet { //��û�� ��������  ������ URL�� ����ؾ��� 

	public void init() throws ServletException{
		  System.out.println("init");
	 }
		
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServerException, IOException {
		System.out.println("get");
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp )throws ServerException, IOException {
		System.out.println("post"); //���������� ȣ���ҷ��� ��Ʈ���� �����ؾ��� (��Ʈ���� �̿��ؼ� ������ ���� response ���Ұ�)
	    resp.setContentType("text/html");
	    String id=req.getParameter("id");
	    System.out.println(id);
		PrintWriter out=resp.getWriter();
	    out.print("<html><body><h1>Hello Servlet</h1></body></html>");
	    ServletConfig config=getServletConfig();  //��ȯ�溯���� xml�� �ִ� ������ ������ �� ���� 
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
