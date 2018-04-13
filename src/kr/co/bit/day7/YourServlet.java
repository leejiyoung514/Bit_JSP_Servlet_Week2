package kr.co.bit.day7;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class YourServlet extends HttpServlet{

	  public void init()throws ServletException{
		  System.out.println("init");
	  }
	
	  protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServerException, IOException {
		  System.out.println("get");
	  }
	
	  protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServerException, IOException{
		  System.out.println("post");
	  }
	  public void destroy() {
			System.out.println("destroy");
	  }
}
