package com.manager;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.models.Models;
@WebServlet("/EditmenuServlet")
public class EditmenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public EditmenuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ResultSet rs = null;
		HttpSession session = request.getSession();
		
		Models m = new Models();
		
		try {
			rs = m.editMenu();
			if(rs.next())
			{
				
				session.setAttribute("editmenu", rs);
				response.sendRedirect("editmenu.jsp");
			}
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		{
			
		}
	}

}
