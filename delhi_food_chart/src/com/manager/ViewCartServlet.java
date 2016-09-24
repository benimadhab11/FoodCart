package com.manager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnectivity.Dbconnectivity;

/**
 * Servlet implementation class ViewCartServlet
 */
@WebServlet("/vcs")
public class ViewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ViewCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		ArrayList items = (ArrayList)session.getAttribute("items");
		System.out.println("session.VCS...."+items);
		
		int sum=0;
		
		
		if(items==null&&(items.size()==0))
		{
			response.sendRedirect("manageuser.jsp");
		}
		else
		{
			int count = 0;
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Dbconnectivity db = new Dbconnectivity();
				Connection con = db.getConnectivity();
				PreparedStatement ps = con.prepareCall("select *from menu where cid = ?");
				
				out.println("<body bgcolor=wheat>"
						+ "<table align=center border = 1px>"
						+ "<tr>"
						+ "  <td colspan= '3'>List of Products </td>"
						+ "</tr>"
						+ "<tr>"
						+ "  <td>Product Name </td>"
						+ "  <td> Price </td>"
						+ "  <td> quantity </td>"
						+ "  <td> </td>"
						+ "</tr>");
					
				for(Object ref:items)
						{
							String pid = (String)ref;
							ps.setString(1, pid);
							ResultSet rs = ps.executeQuery();
							if(rs.next())
							{
								do
								{
				 out.println( "<tr>"
							  + "  <td>"+rs.getString(3)+" </td>"
							  + "  <td>"+rs.getString(4)+"</td>"
							  + "  <td>"+count+"  </td>"
							  + "  <td><a href=RPS?pid="+rs.getString(1)+">   </td>"
							  + "</tr>");
				 				sum = sum + rs.getInt(4);
							    }while(rs.next());
							}
						}
			 
				
				out.println("<tr>"
						+ "  <th>Total </th>"
						+ "  <td>"+sum+"</td>"
						+ "  <th><a href='home.jsp'> Shopmore.. </a></th>"
						+ "</tr>"
						+ "<tr>"
						+ "  <td><a href=IRS> Generate Slip... </a></td>"
						+ "</tr>"
						+ "</table>"
						+ "</body>");
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		
	}
	}

}
