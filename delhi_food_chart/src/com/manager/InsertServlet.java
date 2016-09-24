package com.manager;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.models.Models;

 
@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public InsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int cid = Integer.parseInt(request.getParameter("cid"));
		String item_name = request.getParameter("in");
		String description = request.getParameter("des");
		int price = Integer.parseInt(request.getParameter("price"));
		
		Models m = new Models();
		
		try
		{
			int i  =m.insert(cid, item_name, description, price);
		    if(i!=0)
		    {
		    	System.out.println("succes insert");
		    	response.sendRedirect("home.jsp");
		    }
		    else
		    {
		    	response.sendRedirect("insert.jsp");
		    }
		}catch (ClassNotFoundException e) {
			 
			e.printStackTrace();
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		
	}

}
